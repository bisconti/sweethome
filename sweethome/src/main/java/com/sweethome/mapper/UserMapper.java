package com.sweethome.mapper;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sweethome.domain.ProductDTO;
import com.sweethome.domain.UserDTO;

@Mapper
public interface UserMapper {

   int join(UserDTO user);
   //MyBatis는 두개 이상의 파라미터를 넘길 때 객체나 Map, List, 혹은 @Param을 이용한다.
   //정해진 파라미터는 MyBatis에서 #{param명}으로 사용 가능하다.
   UserDTO login(@Param("userid")String userid, @Param("userpw")String userpw);
   int checkid(@Param("username")String username, @Param("userphone")String userphone);
   boolean checkpw(@Param("userid")String userid, @Param("userphone")String userphone);
   boolean updatepw(@Param("userid")String userid, @Param("userpw")String userpw);
   List<ProductDTO> goshopping(HttpServletRequest req);
   void insertshoppinglist(@Param("userid")String userid, @Param("productnum")int productnum);
   List<ProductDTO> showshoppinglist(String userid);
   void deleteshoppinglist(String userid);
}