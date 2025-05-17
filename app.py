import streamlit as st
from Negotiation_Closing import agent
import asyncio
from db import get_customer_profile, get_products_by_category

st.title("Sales Assistant")
if "messages" not in st.session_state:
    st.session_state.messages = []

for msg in st.session_state.messages:
    with st.chat_message(msg["role"]):
        st.markdown(msg["content"])

if not st.session_state.messages:
    st.session_state.messages.append({
        "role": "assistant",
        "content": "Hi there! How can I assist you today?"
    })
user_input = st.chat_input("Your message")
if user_input:
    st.session_state.messages.append({"role": "user", "content": user_input})
    with st.chat_message("user"):
        st.markdown(user_input)
    async def get_reply(text):
        result = await agent.run(text)
        return result.output.reply  # <-- Extract just the reply string
    try:
        reply = asyncio.run(get_reply(user_input))
    except RuntimeError:
        loop = asyncio.get_event_loop()
        reply = loop.run_until_complete(get_reply(user_input))
    st.session_state.messages.append({"role": "assistant", "content": reply})
    with st.chat_message("assistant"):
        st.markdown(reply)
