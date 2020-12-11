package com.spring.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value="/login")
public class LoginController {
	
	@Autowired
	UserServiceImpl service;
	
	@RequestMapping(value= "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="/signok", method = RequestMethod.POST)
	public String addPostok(UserVO vo) {
		if(service.signup(vo)==0){
			System.out.println("데이터 추가 실패");
		}
		else {
			System.out.println("데이터 추가 성공!");
		}	
		return "redirect:/login/login";
	}
	
	
	@RequestMapping(value= "/sign", method = RequestMethod.GET)
	public String sign() {
		return "sign";
	}
	
	
	
	@RequestMapping(value= "/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
		String returnURL = "";
		if(session.getAttribute("login")!=null) {
			session.removeAttribute("login");
		}
		
		UserVO loginvo = service.getUser(vo);
		if(loginvo != null) {
			System.out.println("로그인 성공");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/board/main";
		}
		else {
			System.out.println("로그인 실패");
			returnURL = "redirect:/login/login";
		}
		return returnURL;
	}
	
	@RequestMapping(value= "/logout")
	public String logout(HttpSession session) {
		System.out.println("로그아웃 성공");
		session.invalidate();
		return "redirect:/login/login";
	}
}
