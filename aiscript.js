const chatInput = document.querySelector(".chat-input textarea");
const sendChatBtn = document.getElementById("send-btn");
const chatbox = document.querySelector(".chatbox");

const API_URL = "http://localhost:5000/api/chatbot"; // Ensure this URL is correct

const createchatLi = (message, className) => {
    const chatLi = document.createElement("li");
    chatLi.classList.add("chat", className);
    let chatContent = className === "outgoing" ? `<p>${message}</p>` : `<span class="material-symbols-outlined">smart_toy</span><p>${message}</p>`;
    chatLi.innerHTML = chatContent;
    return chatLi;
};

const scrollToBottom = () => {
    chatbox.scrollTo({
        top: chatbox.scrollHeight,
        behavior: 'smooth'
    });
};

const handleChat = async () => {
    const userMessage = chatInput.value.trim();
    if (!userMessage) return;

    chatbox.appendChild(createchatLi(userMessage, "outgoing"));
    chatInput.value = "";
    scrollToBottom();

    try {
        const response = await fetch(API_URL, {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({ message: userMessage })
        });

        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }

        const data = await response.json();
        chatbox.appendChild(createchatLi(data.message, "incoming"));
    } catch (error) {
        console.error("Error:", error);
        chatbox.appendChild(createchatLi("Sorry, there was an error connecting to the server. Please try again later.", "incoming"));
    } finally {
        scrollToBottom();
    }
};

sendChatBtn.addEventListener("click", handleChat);

// Optional: Add event listener to handle 'Enter' key press
chatInput.addEventListener("keypress", (e) => {
    if (e.key === 'Enter') {
        e.preventDefault(); // Prevent newline in textarea
        handleChat();
    }
});
