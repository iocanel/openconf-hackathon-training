package gr.openconf;

import io.quarkus.websockets.next.OnOpen;
import io.quarkus.websockets.next.OnTextMessage;
import io.quarkus.websockets.next.WebSocket;

@WebSocket(path = "/hackathon-chat")
public class HackathonChatServiceWebSocket {

    private final HackathonChatService hackathonService;

    public HackathonChatServiceWebSocket(HackathonChatService hackathonService) {
        this.hackathonService = hackathonService;
    }

    @OnOpen
    public String onOpen() {
        return "Welcome to the OpenConf Hackathon! How can I help you today?";
    }

    @OnTextMessage
    public String onTextMessage(String message) {
        return hackathonService.chat(message);
    }
}
