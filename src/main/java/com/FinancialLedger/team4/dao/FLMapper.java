package com.FinancialLedger.team4.dao;

import java.util.ArrayList;

import com.FinancialLedger.team4.vo.FLVO;

public interface FLMapper {
	public ArrayList<FLVO> SearchById(String user_email);
}
