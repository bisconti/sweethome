package com.sweethome.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sweethome.domain.ProductDTO;
import com.sweethome.domain.UserDTO;
import com.sweethome.mapper.UserMapper;

import lombok.Setter;

@Service
public class UserServiceImpl implements UserService {
   
   @Setter(onMethod_ = @Autowired)
   private UserMapper mapper;
   
   @Override
   public boolean join(UserDTO user) {
      return mapper.join(user) == 1;
   }

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
         }
         return true;
      }
   }

   @Override
   public boolean checkid(String username, String userphone, HttpServletRequest req) {
      return mapper.checkid(username, userphone) == 1;
   }

   @Override
   public boolean checkpw(String userid, String userphone, HttpServletRequest req) {
      if(mapper.checkpw(userid, userphone)) {
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
      }
   }


   @Override
   public void goshopping(HttpServletRequest req) {
	   List<ProductDTO> product = mapper.goshopping(req);
	   ProductDTO product1 = product.get(0);
	   ProductDTO product2 = product.get(1);
	   ProductDTO product3 = product.get(2);
	   ProductDTO product4 = product.get(3);
	   ProductDTO product5 = product.get(4);
	   ProductDTO product6 = product.get(5);
	   ProductDTO product7 = product.get(6);
	   ProductDTO product8 = product.get(7);
	   ProductDTO product9 = product.get(8);
	   ProductDTO product10 = product.get(9);
	   ProductDTO product11 = product.get(10);
	   ProductDTO product12 = product.get(11);
	
	   req.setAttribute("product1", product1);
	   req.setAttribute("product2", product2);
	   req.setAttribute("product3", product3);
	   req.setAttribute("product4", product4);
	   req.setAttribute("product5", product5);
	   req.setAttribute("product6", product6);
	   req.setAttribute("product7", product7);
	   req.setAttribute("product8", product8);
	   req.setAttribute("product9", product9);
	   req.setAttribute("product10", product10);
	   req.setAttribute("product11", product11);
	   req.setAttribute("product12", product12);
   }

   @Override
   public boolean gobasket(String userid, HttpServletRequest req) {
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
		   int productnum = (Integer.parseInt(req.getParameter("product1num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result1.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product2num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result2.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product3num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result3.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product4num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result4.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product5num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result5.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product6num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result6.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product7num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result7.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product8num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result8.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product9num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result9.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product10num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result10.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product11num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   if (result11.equals("1")) {
		   int productnum = (Integer.parseInt(req.getParameter("product12num")));
		   mapper.insertshoppinglist(userid,productnum);
	   }
	   List<ProductDTO> product = mapper.showshoppinglist(userid);
	   req.setAttribute("product", product);
	   
	   return true;
   }
}
