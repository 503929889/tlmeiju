package com.haoran.meiju.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haoran.meiju.entity.Message;
import com.haoran.meiju.entity.User;
import com.haoran.meiju.entity.Users;
import com.haoran.meiju.service.IMessageService;
import com.haoran.meiju.service.UserService;
//import com.haoran.meiju.service.impl.Carousel_hotlistServiceImpl;
//import com.haoran.meiju.service.impl.DownloadInformationServiceImpl;
//import com.haoran.meiju.service.impl.TitleServiceImpl;

/**
 * 
 * 用户模块的控制器，负责用户的操作
 * 
 * @author 黎浩然
 * 
 * @Time 2017-07-29
 * 
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private IMessageService messageService;
	//
	// @Autowired
	// private DownloadInformationServiceImpl downloadInformationService;
	//
	// @Autowired
	// private TitleServiceImpl titleService;

	@RequestMapping("/login")
	@ResponseBody
	public String login(String username, String password, HttpSession session) {
		if (userService.login(username, password)) {
			session.setAttribute("username", username);
			return "success";
		}
		return "error";
	}

	@RequestMapping("/exitLogin")
	@ResponseBody
	public void exitLogin(HttpSession session) {
		session.invalidate();
	}

	@RequestMapping("/isExistNickname")
	@ResponseBody
	public String isExistNickname(String nickname) {
		if (nickname.contains(" "))
			return "illegal";
		if (nickname.length() > 20)
			return "toLong";
		if (userService.isExistUser(nickname) == 1)
			return "exist";
		else
			return "null";
	}

	@RequestMapping("/isExistIdentifer")
	@ResponseBody
	public String isExistIdentifer(String type, String identifer) {

		return "ok";
	}

	@RequestMapping("register")
	@ResponseBody
	public String register(Users users, User user, HttpServletRequest request, HttpSession session) {
		if (request.getHeader("x-forwarded-for") == null)
			users.setReg_ip(request.getRemoteAddr());
		else
			users.setReg_ip(request.getHeader("x-forwarded-for"));
		String nickname = users.getNickname();
		String str =isExistNickname(nickname);
		if(!"null".equals(str))
			return str;
		
		String username = user.getUsername();
		String password = user.getPassword();
		if ("".equals(password) || password == null || password.length() < 6)
			return "pass_illegal";
		//String str = isExistNickname(username);
		if (!"null".equals(str))
			return str;
		if (userService.register(user) == 1) {
			session.setAttribute("username", username);
			return "reg_success";
		} else
			return "error";
	}

	@RequestMapping("leaveMsg")
	@ResponseBody
	public String leaveMsg(Message msg, HttpSession session) {
		msg.setSubmitTime(new Date());
		if (messageService.leaveMsg(msg) == 1)
			return "success";
		return "error";
	}

}
