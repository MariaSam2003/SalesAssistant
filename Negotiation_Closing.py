from pydantic import BaseModel, Field
from pydantic_ai import Agent, RunContext
from db import get_products_by_category, get_customer_profile,connect

# Define dependencies if needed (not required for simple example)
class Dependencies(BaseModel):
    pass

# Define the output format
class NegotiationOutput(BaseModel):
    reply: str = Field(description="Agent's persuasive response")

# Create the agent
agent = Agent(
    model="openai:gpt-4o",  # Or any other OpenAI model
    deps_type=Dependencies,
    output_type=NegotiationOutput,
    system_prompt=(
        "You are an emotionally intelligent and persuasive sales agent. "
        "Your job is to guide users toward purchasing our product instead of competitors', using empathy, insight, and persuasive techniques. "
        "Be friendly, conversational, respectful, and adaptive. Don't rush the sale—build trust and respond naturally step by step. \n\n"
        "Your tools help you personalize and strengthen your persuasion. Here's when to use each:\n\n"
        "- Use `analyze_emotions` to detect user sentiment. If they seem hesitant, uncertain, doubtful, or worried, follow up with empathy and reassurance.\n\n"
        "- Use `highlight_scarcity` if the user is hesitant or delaying a decision. This creates urgency by pointing out that we have limited stock or a time-limited deal.\n\n"
        "- Use `offer_bonus` when a customer seems interested in our product by giving a freebie or thank-you gift.\n\n"
        "- Use `establish_authority` if the user questions the quality of our product or asks, 'Why should I choose your product over others?' This reinforces our credibility and product excellence.\n\n"
        "- Use `give_compliment` when the user makes a smart choice, does research, or asks thoughtful questions. It builds rapport and likability.\n\n"
        "- Use `get_small_commitment` if the user has expressed any goal, like wanting long-term value or a specific feature. Remind them that our product fits their stated need.\n\n"
        "- Use `mention_others` if the user seems indecisive or seeks social proof. Highlight that others like them chose our product and gave great feedback.\n\n"
        "- Use `fetch_products` when the user mentions a category they’re interested in (e.g., 'I’m looking for laptops' or 'Show me skincare products').\n\n"
        "- Use `personalize_for_customer` when the user provides a phone number or needs a tailored suggestion based on their profile.\n\n"
        "This product has received outstanding reviews for its durability.",
        "It was recently rated among the top performers in its category.",
        "Users love its long-lasting performance and sleek design.",
        "It earned a 9.5/10 from tech experts recently.",
        "Many customers have chosen this product for its reliability and value."
        "Your goal is not to sell aggressively but to guide the user with charm, logic, and emotional intelligence. Analyze each message, use tools as needed, and respond smoothly."
    )
)

@agent.tool
def analyze_emotions(ctx: RunContext, message: str) -> str:
    """Analyzes emotional tone and provides a response strategy."""
    if "worried" in message or "not sure" in message:
        return "Customer seems hesitant. Offer reassurance and focus on benefits."
    elif "interested" in message or "tell me more":
        return "Customer is curious. Reinforce unique selling points."
    return "Neutral tone detected. Ask an engaging follow-up question."

"""Reciprocation"""
@agent.tool
def offer_bonus(ctx: RunContext) -> str:
    """Gives a bonus or freebie to trigger reciprocity."""
    return "As a thank-you for considering us, we're adding a free extended warranty to your purchase!"

"""Scarcity"""
@agent.tool
def highlight_scarcity(_: RunContext, product: str) -> str:
    """Create urgency by emphasizing limited availability."""
    return f"{product} is in limited supply, and we only have a few units left at this price."

"""Authority"""

@agent.tool
def establish_authority(_: RunContext,product: str) -> str:
    """Demonstrate product credibility via authority or reviews."""
    return f"{product} was recently featured in an ad and rated 9.5/10 for performance and durability. And has been a top choice among tech enthusiasts and is backed by strong customer reviews."

"""Consistency"""
@agent.tool
def get_small_commitment(_: RunContext, goal: str) -> str:
    """Remind them of their earlier commitment or preference."""
    return f"Since you mentioned you're looking for a long-term solution, {goal} fits perfectly with what you’re aiming for."

"""Liking"""
@agent.tool
def give_compliment(_: RunContext, user_name: str) -> str:
    """Give a compliment to build connection."""
    return f"You clearly know what you're looking for, {user_name}, and I admire how thoroughly you're researching your options."

"""Consensus"""
@agent.tool
def mention_others(_: RunContext, product: str) -> str:
    """Use testimonials or popular choice patterns."""
    return f"Most of our customers in your situation chose {product} and have given us great feedback."

@agent.tool
def fetch_products(_: RunContext, category: str) -> str:
    conn = connect()
    cursor = conn.cursor()

    try:
        cursor.execute("SELECT name, price, rating FROM Products WHERE category = ?", (category,))
        rows = cursor.fetchall()
    except Exception as e:
        return f"An error occurred while fetching products: {e}"
    finally:
        conn.close()

    if not rows:
        return f"No products found in category '{category}'."

    response_lines = []
    for name, price, rating in rows:
        try:
            price = float(price)
            rating = float(rating)
            response_lines.append(f"{name} - ${price:.2f}, Rating: {rating:.1f}/10")
        except ValueError:
            response_lines.append(f"{name} - Invalid price or rating")

    return "\n".join(response_lines)

@agent.tool
def personalize_for_customer(ctx: RunContext, phone: str) -> str:
    """Fetches customer data and tailors a suggestion."""
    profile = get_customer_profile(phone)
    if not profile:
        return "Customer not found."
    name, job, domain, prefs = profile
    return (
        f"Welcome back, {name}! As a {job} interested in {domain}, "
        f"we’ve got products tailored for you. Based on your preferences ({prefs}), "
        f"we’ll recommend items you'll love."
    )

