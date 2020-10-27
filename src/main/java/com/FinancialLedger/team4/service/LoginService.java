package com.FinancialLedger.team4.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.FinancialLedger.team4.dao.UserAccountDAO;

@Service
public class LoginService {
	
	@Autowired
	private UserAccountDAO dao;
	
	public int user_insert_default(HashMap<String, String> user) {
		return dao.user_insert_default(user);
	}
	public int user_insert_google(HashMap<String, String> user) {
		return dao.user_insert_google(user);
	}

}