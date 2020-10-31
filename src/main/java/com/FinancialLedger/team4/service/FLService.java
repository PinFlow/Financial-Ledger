package com.FinancialLedger.team4.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.FinancialLedger.team4.dao.FLDAO;
import com.FinancialLedger.team4.vo.FLVO;

@Service
public class FLService {
	
	@Autowired
	private FLDAO dao;
	
	public ArrayList<FLVO> SerchByID(String user_email) {
		ArrayList<FLVO> list = dao.SearchById(user_email);
		return list; 
	}
}
