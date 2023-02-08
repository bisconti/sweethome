package com.sweethome.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sweethome.domain.UserDTO;
import com.sweethome.service.UserService;

import lombok.Setter;

@Controller
@RequestMapping("/user/*")
public class UserController {
	@Setter(onMethod_ = @Autowired)
	private UserService service;

	@GetMapping({ "/checkid", "/join", "/checkpw" })
	public void replace() {
	}

	@PostMapping("/login")
	public String login(String userid, String userpw, HttpServletRequest req) {
		if (service.login(userid, userpw, req)) {
		}
		return "home";
	}

	@PostMapping("/join")
	public String join(UserDTO user, HttpServletResponse resp) {
		if (service.join(user)) {
			Cookie cookie = new Cookie("joinid", user.getUserid());
			cookie.setMaxAge(300);
			resp.addCookie(cookie);
		}
		return "redirect:/";
	}

	@PostMapping("/checkid")
	public String checkid(String username, String userphone, HttpServletRequest req) {
		if (service.checkid(username, userphone, req)) {
			return "checkidcorrect";
		} else {
			return "checkid";
		}
	}

	@PostMapping("/checkpw")
	public String checkpw(String userid, String userphone, HttpServletRequest req) {
		if (service.checkpw(userid, userphone, req)) {
			return "checkpwcorrect";
		} else {
			return "checkpw";
		}
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest req) {
		service.logout(req);
		return "home";
	}

	
	@RequestMapping("/shopping") 
	public String goshopping(HttpServletRequest req) {
		service.goshopping(req);
		return "/user/shopping"; 
	}
	  
	@PostMapping("/basket")
	public String gobasket(String userid, HttpServletRequest req) {
		userid = req.getParameter("userid");
	if (service.gobasket(userid, req)) {
		return "/user/basket";
	}
	else {
		return "/user/shopping";
		}
	}
}
