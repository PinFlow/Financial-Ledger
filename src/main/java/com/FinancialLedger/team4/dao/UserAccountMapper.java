package com.FinancialLedger.team4.dao;

import java.util.HashMap;

public interface UserAccountMapper {
	
	public int user_insert_default(HashMap<String, String> user);
	public int user_insert_google(HashMap<String, String> user);
	
}
