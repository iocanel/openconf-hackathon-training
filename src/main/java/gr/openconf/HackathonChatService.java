package gr.openconf;

import io.quarkiverse.langchain4j.RegisterAiService;
import jakarta.enterprise.context.SessionScoped;

@SessionScoped
@RegisterAiService
public interface HackathonChatService {

    String chat(String userMessage);
}
