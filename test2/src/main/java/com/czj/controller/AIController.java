package com.czj.controller;

import com.czj.interceptor.PublicController;
import dev.langchain4j.memory.ChatMemory;
import dev.langchain4j.memory.chat.MessageWindowChatMemory;
import dev.langchain4j.model.chat.ChatLanguageModel;
import dev.langchain4j.model.openai.OpenAiChatModel;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@CrossOrigin
@RestController
/**
 * AI对话请求
 * @param params JSON格式的文本
 * @return DEA
 */
@RequestMapping("ai")
public class AIController {
    @PublicController
    @SkipInterceptor
    @PostMapping("chat")
    public String chat(@RequestBody Map<String,String> params){
        System.out.println("msg:"+params.get("msg"));
        ChatLanguageModel model = OpenAiChatModel.builder()
                .apiKey("demo")
                .modelName("gpt-4o-mini")
                .build();
        ChatMemory chatMemory = MessageWindowChatMemory.builder().maxMessages(10).build();
        String ans =model.generate(params.get("msg"));
        System.out.println(ans);
        return ans;

    }
}
