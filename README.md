# SalesAssistant
**Overview**

(Sales AI Lead) is powered by **OpenAI’s GPT-4o** and enhanced through tools like emotional tone analysis, social proof, scarcity, compliments, and personalized responses. It uses real-time data from a SQL Server database to recommend products, tailor conversations to individual users, and adapt its responses naturally based on user input.

**Features**
- Emotionally intelligent conversation flow  
- Product recommendations by category  
- Customer profile personalization  
- Bonus offers and urgency triggers  
- Uses persuasion principles (Cialdini's techniques)  
- Real-time SQL product listings  
- Lead management and user profiling  

**Installation**

1. **Clone the repository**
   git clone https://github.com/yourusername/sail-assistant.git
   cd sail-assistant

2.**Install dependencies**
pip install -r requirements.txt

3.**Set your OpenAI key**
os.environ["OPENAI_API_KEY"] = "your-key-here"

**Usage**

Run the app using: streamlit run app.py

**How It Works**

The Negotiation_Closing.py file defines the AI agent using Pydantic-AI tools. Each tool is a modular function (e.g., highlight_scarcity, offer_bonus) that the agent can call depending on the user's intent or emotional tone.
The app.py file handles Streamlit UI and interactions with the chatbot.

**Database Setup**

Create a SQL Server database named SalesDB and add the following tables:
CREATE TABLE Customers (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Age INT,
    Email NVARCHAR(100),
    PhoneNb NVARCHAR(20),
    JobOccupation NVARCHAR(100),
    DomaineOfInterest NVARCHAR(100),
    Preferences NVARCHAR(255)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100),
    Category NVARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT,
    Rating DECIMAL(3, 2)
);
**Customization**

All customization and logic changes should be done in app.py.
You can:
Modify the AI's personality and prompt
Add or remove tools from the agent
Customize the Streamlit layout
Change the logic of how the database is queried

**Libraries Used**

Pydantic-AI – Tool-based LLM agent framework.

Streamlit – Interactive front-end.

pyodbc – For SQL Server connection.

OpenAI GPT-4o – The LLM brain behind the assistant.

