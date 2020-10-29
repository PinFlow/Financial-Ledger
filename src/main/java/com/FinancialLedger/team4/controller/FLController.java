package com.FinancialLedger.team4.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "FL")
public class FLController {
	private static final Logger logger = LoggerFactory.getLogger(FLController.class);
	
	@RequestMapping(value = "main")
	public String Main() {
		logger.info("FL main 접근");
		return "FL/main";
	}
}
