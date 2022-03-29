package itwill.helljava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrainerInfoController {
	// 로그인 화면을 요청
	@RequestMapping(value = "user/trainer/trainer_request", method = RequestMethod.GET)
	public String loginForm() {
		return "user/trainer/trainer_request";
	}
}