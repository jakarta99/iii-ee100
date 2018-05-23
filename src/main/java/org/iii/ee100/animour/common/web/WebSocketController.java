package org.iii.ee100.animour.common.web;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {
	
	@Autowired
	private SimpMessagingTemplate simpMessagingTemplate;

	@MessageMapping("/chat")
	public void handleChat(Principal principal, String msg) {
		if(principal.getName().equals("ViewSonic")){
			simpMessagingTemplate.convertAndSendToUser("Admin", "/queue/notifications", principal.getName() + "-發送訊息:" + msg);
		} else {
			simpMessagingTemplate.convertAndSendToUser("ViewSonic", "/queue/notifications", principal.getName() + "-發送訊息:" + msg);
		}
	}
	
}