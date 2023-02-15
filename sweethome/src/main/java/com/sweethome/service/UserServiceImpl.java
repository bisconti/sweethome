package com.sweethome.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sweethome.domain.Criteria;
import com.sweethome.domain.DonateDTO;
import com.sweethome.domain.OrderDTO;
import com.sweethome.domain.ProductDTO;
import com.sweethome.domain.UserDTO;
import com.sweethome.mapper.UserMapper;

import lombok.Setter;

@Service
public class UserServiceImpl implements UserService {
   
   @Setter(onMethod_ = @Autowired)
   private UserMapper mapper;

   @Override
   public boolean login(String userid, String userpw, HttpServletRequest req) {
      UserDTO user =  mapper.login(userid, userpw);
      if(user == null) {
         System.out.println("오류?");
         return false;
      }
      else {
         if(req == null) {
            
         } else {
         req.getSession().setAttribute("user", user);
         req.getSession().setAttribute("userage", user.getUserbirth());
         req.getSession().setAttribute("userphoto", user.getUserphoto());
         req.getSession().setAttribute("loginUser", userid);
         }
         return true;
      }
   }

   @Override
   public void goshopping(HttpServletRequest req) {
	   List<ProductDTO> product = mapper.goshopping(req);
	   req.setAttribute("product", product);
   }

   @Override
   public boolean gobasket(String userid, HttpServletRequest req){
	   userid = req.getParameter("userid");
	   String result =  req.getParameter("result");
	   String result1 =  req.getParameter("result1");
	   String result2 =  req.getParameter("result2");
	   String result3 =  req.getParameter("result3");
	   String result4 =  req.getParameter("result4");
	   String result5 =  req.getParameter("result5");
	   String result6 =  req.getParameter("result6");
	   String result7 =  req.getParameter("result7");
	   String result8 =  req.getParameter("result8");
	   String result9 =  req.getParameter("result9");
	   String result10 =  req.getParameter("result10");
	   String result11 =  req.getParameter("result11");
	   
	   mapper.deleteshoppinglist(userid);
	   if (result.equals("1")) {
		   String productnum = (req.getParameter("product1num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result1.equals("1")) {
		   String productnum = (req.getParameter("product2num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result2.equals("1")) {
		   String productnum = (req.getParameter("product3num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result3.equals("1")) {
		   String productnum = (req.getParameter("product4num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result4.equals("1")) {
		   String productnum = (req.getParameter("product5num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result5.equals("1")) {
		   String productnum = (req.getParameter("product6num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result6.equals("1")) {
		   String productnum = (req.getParameter("product7num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result7.equals("1")) {
		   String productnum = (req.getParameter("product8num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result8.equals("1")) {
		   String productnum = (req.getParameter("product9num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result9.equals("1")) {
		   String productnum = (req.getParameter("product10num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result10.equals("1")) {
		   String productnum = (req.getParameter("product11num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result11.equals("1")) {
		   String productnum = (req.getParameter("product12num"));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   List<ProductDTO> product = mapper.showshoppinglist(userid);
	   req.setAttribute("product", product);
	   return true;
   }

   	@Override
   	public boolean doorder(String userid, HttpServletRequest req) {
   		List<String> basket = mapper.getshoppinglist(userid);
   		String productnum = "";
   		for (int i = 0; i <= basket.size()-1; i++) {
			if (basket.get(i) != null) {
				if (i != basket.size()-1) {
					productnum += basket.get(i)+",";
				}
				else {
					productnum += basket.get(i);
				}
			}
		}
   		mapper.deleteorderlist(userid);
		mapper.insertorderlist(productnum,userid);
		mapper.deleteshoppinglist(userid);
   		return true;
   	}

	@Override
	public boolean order(String userid, HttpServletRequest req) {
		HttpSession session = req.getSession();
		userid = (String)session.getAttribute("loginUser");
		List<ProductDTO> product = new ArrayList<ProductDTO>();
		String simplelist = mapper.getorderlistsimple(userid);
		String[] simple = simplelist.split(",");
		for (int i = 0; i < simple.length; i++) {
			String productnum = simple[i];
			product.add(mapper.getorderlist(productnum));
		}
		req.setAttribute("product", product);
		
		List<String> ordernum = mapper.getordernum(userid);
		req.setAttribute("ordernum", ordernum);
		
		List<OrderDTO> order = mapper.getorderdate(userid);
		req.setAttribute("order", order);
		return true;
	}

	@Override
	public boolean getbakset(String userid, HttpServletRequest req) {
		   HttpSession session = req.getSession();
		   userid = (String)session.getAttribute("loginUser");
		   
		   List<ProductDTO> product = mapper.showshoppinglist(userid);
		   req.setAttribute("product", product);
		   return true;
	}

	@Override
	public boolean modifyorder(String userid, HttpServletRequest req) {
		HttpSession session = req.getSession();
		userid = (String)session.getAttribute("loginUser");
		mapper.modifyorder(userid);
		
		List<ProductDTO> product = new ArrayList<ProductDTO>();
		String simplelist = mapper.getorderlistsimple(userid);
		String[] simple = simplelist.split(",");
		for (int i = 0; i < simple.length; i++) {
			String productnum = simple[i];
			product.add(mapper.getorderlist(productnum));
		}
		req.setAttribute("product", product);
		
		List<String> ordernum = mapper.getordernum(userid);
		req.setAttribute("ordernum", ordernum);
		
		List<OrderDTO> order = mapper.getorderdate(userid);
		req.setAttribute("order", order);
		return true;
	}
	
	   @Override
	   public List<DonateDTO> getList(Criteria cri) {
	      return mapper.getList(cri);
	   }

	   @Override
	   public int getTotal(Criteria cri) {
	      return mapper.getTotal(cri);
	   }

	   @Override
	   public boolean donateaction(String name, String money, String content) {
	      return mapper.donateaction(name, money, content) == 1;
	   }
	   
	   @Override
	   public boolean join(UserDTO user) {
	      return mapper.join(user) == 1;
	   }

	   @Override
	   public boolean login(String userid, String userpw, HttpServletRequest req, RedirectAttributes ra) {
	      UserDTO user =  mapper.login(userid, userpw);
	      if(user == null) {
	         System.out.println("오류?");
	         return false;
	      }
	       else {
	        
	        String userbirth = user.getUserbirth();
	        int userage = mapper.getUserAge(userbirth);
	         req.getSession().setAttribute("user", user);
	         req.getSession().setAttribute("userage", userage);
	         req.getSession().setAttribute("userphoto", user.getUserphoto());
	         }
	         return true;
	      }
	   

	   @Override
	   public boolean checkid(String username, String userphone, HttpServletRequest req) {
	      String userid = mapper.checkid(username, userphone);
	      if(userid == null) {
	         return false;
	      } else {
	         req.setAttribute("userid", userid);
	         return true;
	      }
	   }

	   @Override
	   public boolean checkpw(String userid, String userphone, HttpServletRequest req) {
	      int num = mapper.checkpw(userid, userphone);
	      System.out.println(num);
	      if(mapper.checkpw(userid, userphone) == 1) {
	         req.getSession().setAttribute("userid", userid);
	         return true;
	      }
	      else {
	         return false;
	      }
	   }

	   @Override
	   public boolean updatepw(String userid, String userpw, HttpServletRequest req) {
	      if(mapper.updatepw(userid, userpw)) {
	         req.getSession().removeAttribute("userid");
	         return true;
	      } else {
	         return false;
	      }
	       
	   }

	   @Override
	   public void logout(HttpServletRequest req) {
	      if(req != null) {
	         req.getSession().removeAttribute("user");
	         req.getSession().removeAttribute("userage");
	         req.getSession().removeAttribute("userphoto");
	         req.getSession().removeAttribute("userage");
	      }
	      
	   }

	   @Override
	   public boolean updatephone(String userid, String userphone) {
	      System.out.println(userphone + "나오니?");
	      System.out.println(userid);
	      if(mapper.updatephone(userid, userphone)){
	         return true;
	      } else {
	   return false;
	      }
	   }

	   @Override
	   public boolean userIdExist(String userid, HttpServletResponse resp) throws IOException {
	      if(mapper.userIdExist(userid)) {
	         return true;
	      } else {
	         return false;
	      }
	         
//	      PrintWriter out = resp.getWriter();
//	      if(mapper.userIdExist(userid)) {
//	         out.print("O");
//	      } else {
//	         out.print("X");
//	      }
	   }

	   @Override
	   public int sendSMS(String userphone, HttpServletResponse resp) throws IOException {
	      Join_SMS joinSMS = new Join_SMS();
	      
	        int ranNum = joinSMS.send(userphone);
	        PrintWriter out = resp.getWriter();
	        out.print(ranNum);
	        return ranNum;
	   }

	   @Override
	   public boolean checkphone(String userphone) {
	      
	      return mapper.checkphone(userphone);
	   
	   }

	   @Override
	   public boolean changepw(String correntpw, String userpw, String userid) {
	      if(mapper.changepw(correntpw, userpw, userid)){
	         return true;
	      } else {
	         return false;
	      }
	   }
}
