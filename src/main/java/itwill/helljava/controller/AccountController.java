package itwill.helljava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import itwill.helljava.Enum.AccountEnum;
import itwill.helljava.dto.Account;
import itwill.helljava.dto.Member;
import itwill.helljava.service.AccountSevice;

@Controller
@RequestMapping("/account")
public class AccountController {

	@Autowired
	private AccountSevice accountService;
	
	//내 계좌 정보 요청 
	@RequestMapping(value = "/info" , method = RequestMethod.GET)
	public String accountInfo(Model model, HttpSession session) {
		
		if(accountService.getMemberAccount(((Member)session.getAttribute("loginUserinfo")).getMemberNo()) == null) {
			return "redirect:/account/register"; // 얘는 url로 요청이구나.. 바보다
		}
		model.addAttribute("account", accountService.getMemberAccount(((Member)session.getAttribute("loginUserinfo")).getMemberNo()));
		model.addAttribute("bankName", String.valueOf(AccountEnum.of(accountService.getMemberAccount(((Member)session.getAttribute("loginUserinfo")).getMemberNo()).getAccountBank())));
		return "/account/account_info";
	}
	
	// 계좌 등록 페이지 요청
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		
		return "/account/account_register";
	}
	
	// 계좌 등록 포스트 방식 요청
	@RequestMapping(value = "/register" , method = RequestMethod.POST)
	public String register(@ModelAttribute Account account, HttpSession session) {
		
		account.setMemberNo(((Member)session.getAttribute("loginUserinfo")).getMemberNo());
		accountService.addAccount(account);
		
		return "/account/account_info";
	}
	
	// 계좌 삭제 요청
	@RequestMapping(value = "/remove/{num}" , method = RequestMethod.GET)
	public String remove(@PathVariable int num) {
		accountService.removeAccount(num);	
		return "/account/account_info";
	}
	
}
