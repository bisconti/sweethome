package com.sweethome.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sweethome.domain.Criteria;
import com.sweethome.domain.PageDTO;
import com.sweethome.domain.UserDTO;
import com.sweethome.service.UserService;

import lombok.Setter;

@Controller
@RequestMapping("/user/*")
public class UserController {
	@Setter(onMethod_ = @Autowired)
	private UserService service;

	@GetMapping({"/join","/checkid","/checkpw","/mypage","/checkpwcorrect","/checkidcorrect"})
	public void replace() {}
	
	@RequestMapping("/shopping") 
	public String goshopping(HttpServletRequest req) {
		service.goshopping(req);
		return "/user/shopping"; 
	}
	
	@GetMapping("/basket")
	public String getbasket(String userid, HttpServletRequest req) {
		userid = req.getParameter("userid");
		if (service.getbakset(userid, req)) {
			return "/user/basket";
		}
		else {
			return "home";
		}
	}
	  
	@PostMapping("/basket")
	public String gobasket(String userid, HttpServletRequest req){
		userid = req.getParameter("userid");
	if (service.gobasket(userid, req)) {
		return "/user/basket";
	}
	else {
		return "/user/shopping";
		}
	}
	
	@PostMapping("/doorder")
	public String doorder(String userid, HttpServletRequest req) {
		if (service.doorder(userid, req)) {
			return "home";
		}
		else {
			return "/user/basket";
		}
	}
	
	@RequestMapping("/order")
	public String order(String userid, HttpServletRequest req) {
		if (service.order(userid, req)) {
			return "/user/order";
		}
		else {
			return "home";
		}
	}
	
	@PostMapping("/modifyorder")
	public String modifyorder(String userid, HttpServletRequest req) {
		if (service.modifyorder(userid, req)) {
			return "/user/order";
		}
		else {
			return "/user/order";
		}
	}
	
	   @GetMapping("/donate")
	   public void donate(Criteria cri, Model model) {
	      model.addAttribute("list",service.getList(cri));
	      model.addAttribute("pageMaker",new PageDTO(service.getTotal(cri), cri));
	   }
	   @PostMapping("/donateaction")
	   public String donate(String name, String money, String content) {
	      if(service.donateaction(name, money, content)) {
	      }
	      else {
	      }
	      return "home";
	   }

	   @PostMapping("/login")
	   public String login(String userid, String userpw, HttpServletRequest req, RedirectAttributes ra) {
	      if(service.login(userid, userpw, req, ra)) {
	         System.out.println("12412412");
	         System.out.println(userid);
	         req.setAttribute("successMessage", userid + "님 환영합니다 !");
	         ra.addFlashAttribute("userid", userid); //1회용세션
	         return "successPage";
	      }
	      else {
	         System.out.println("1231");
	      }
	      return "redirect:/";
	   }
	   
	   @PostMapping("/join")
	   public String join(UserDTO user, HttpServletResponse resp) {
	      if(service.join(user)) {
	         Cookie cookie = new Cookie("joinid", user.getUserid());
	         cookie.setMaxAge(300);
	         resp.addCookie(cookie);
	      }
	      return "redirect:/";
	   }
	   
	   @PostMapping("/checkid")
	   public String checkid(String username, String userphone, HttpServletRequest req) {
	      if(service.checkid(username, userphone, req)) {
	         return "/user/checkidcorrect";
	      }
	      else {
	         req.setAttribute("errorMessage", "이름 혹은 전화번호를 다시 확인해주세요 !");
	         return "errorPage";
	      }
	   }
	   
	   @PostMapping("/checkpw")
	   public String checkpw(String userid, String userphone, HttpServletRequest req) {
	      if(service.checkpw(userid, userphone, req)) {
	         return "/user/checkpwcorrect";
	      }
	      else {
	        req.setAttribute("errorMessage", "아이디 혹은 전화번호를 다시 확인해주세요 !");
	         return "errorPage"; 
	      }
	   }
	   
	   
	   @GetMapping("/logout")
	   public String logout(HttpServletRequest req) {
	      service.logout(req);
	      req.setAttribute("successMessage", "로그아웃");
	     return "successPage";
	   }
	   
	   @PostMapping("/updatephone")
	   public String updatephone(String userid, String userphone) {
	      System.out.println(userid);
	      System.out.println(userphone);
	      if(service.updatephone(userid, userphone)) {
	         System.out.println("여긴왔니?");
	         return "redirect:/user/mypage";
	      } else {
	         return "/user/mypage";
	      }
	   }
	   
	   @PostMapping("/updatepw")
	   public String updatepw(String userid, String userpw, HttpServletRequest req) {
	      if(service.updatepw(userid, userpw, req)) {
	         req.setAttribute("successMessage", "비밀번호 변경에 성공하였습니다.");
	         return "successPage";
	      } else {
	         req.setAttribute("errorMessage", "비밀번호 변경에 실패하였습니다.");
	         return "/user/errorPage";
	      }
	   }
	   
	   @PostMapping("/mypagechangepw")
	   public String mypagechangepw(String correntpw, String userpw, String userid, HttpServletRequest req) {
	      if(service.changepw(correntpw, userpw, userid )) {
	         req.setAttribute("successMessage", "비밀번호 변경에 성공하였습니다.");
	         return "successPage";
	      } else {
	         req.setAttribute("errorMessage", "비밀번호 변경에 실패하였습니다.");
	         return "/user/errorPage";
	      }
	   }
	   
	   @GetMapping("/overlapidok")
	   public String overlapIdOk(@RequestParam("userid") String userid, HttpServletResponse resp) throws IOException {
	      if(service.userIdExist(userid, resp)) {
	         System.out.println("어디로 나오는지");
	         return "X";
	      } else {
	         System.out.println("보자");
	         return "O";
	      }
	      
	      
	   }
	   
	   @GetMapping("/send_msg")
	   public String sendSMS(@RequestParam("userphone") String userphone, HttpServletResponse resp) throws IOException {
	     service.sendSMS(userphone, resp);
	      return null;
	   }
	   @GetMapping("/checkphoneok")
	   @ResponseBody
	   public String checkPhoneOk(String userphone) {
	      if(service.checkphone(userphone)) {
	         return "X";
	      } else {
	         return "O";
	      }
	   }
}
