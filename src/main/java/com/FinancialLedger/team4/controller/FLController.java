package com.FinancialLedger.team4.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.FinancialLedger.team4.service.FLService;
import com.FinancialLedger.team4.vo.FLVO;

@Controller
@RequestMapping(value = "FL")
public class FLController {
	private static final Logger logger = LoggerFactory.getLogger(FLController.class);
	
	@Autowired
	private HttpSession session;
	@Autowired
	private FLService service;
	// 가계부 메인페이지
	@RequestMapping(value = "main")
	public String Main(Model model) {
		logger.info("FL main 접근");
		// 유저아이디를 세션에서 불러옴
		String user_email = (String) session.getAttribute("user");
		// list에 유저아이디로 검색한 수입지출의 결과만을 가져온다
		ArrayList<FLVO> list = service.SerchByID(user_email);
		// jsp에 유저의 이메일과 검색결과를 표시하기 위해 모델에 데이터 저장
		model.addAttribute("user_email",user_email);
		model.addAttribute("list",list);
		return "FL/main";
	}
}
