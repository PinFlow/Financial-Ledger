package com.FinancialLedger.team4.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "auth")
public class AuthController {

	private static final Logger logger = LoggerFactory.getLogger(AuthController.class);
	
	@RequestMapping(value = "sign_in", method = RequestMethod.GET)
	public String sign_in() {
		return "";
	}
	
	@RequestMapping(value = "sign_up", method = RequestMethod.GET)
	public String sign_up() {
		return "";
	}
	
	
}
