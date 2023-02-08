package com.sweethome.service;

import javax.servlet.http.HttpServletRequest;

import com.sweethome.domain.UserDTO;

public interface UserService {
	boolean join(UserDTO user);
	boolean login(String userid, String userpw, HttpServletRequest req);
	boolean checkid(String username, String userphone, HttpServletRequest req);
	boolean checkpw(String userid, String userphone, HttpServletRequest req);
	boolean updatepw(String userid, String userpw, HttpServletRequest req);
	void logout(HttpServletRequest req);
	void goshopping(HttpServletRequest req);
	boolean gobasket(String userid, HttpServletRequest req);
}
