package com.FinancialLedger.team4.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.FinancialLedger.team4.service.LoginService;
import com.FinancialLedger.team4.vo.UserAccountVO;

@Controller
@RequestMapping(value="login")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	private LoginService service;
	
	@RequestMapping(value = "sign_in", method = RequestMethod.POST)
	public String sign_in(Model model) {
		logger.info("sign_in 접근");
		return "";
	}
	
	@RequestMapping(value = "sign_up", method = RequestMethod.POST)
	public String sign_up(String user_email, String user_password) {
		logger.info("sign_up 접근");
		HashMap<String, String> user = new HashMap<String, String>();
		user.put(user_email, user_email);
		user.put(user_password, user_password);
		service.user_insert_default(user);
		return "";
	}
}

