package com.FinancialLedger.team4.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class UserAccountDAO {

	@Autowired
	private SqlSession session;

	public int user_insert_default(HashMap<String, String> user) {
		UserAccountMapper mapper = session.getMapper(UserAccountMapper.class);
		int cnt = 0;
		try {
			cnt = mapper.user_insert_default(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public int user_insert_google(HashMap<String, String> user) {
		UserAccountMapper mapper = session.getMapper(UserAccountMapper.class);
		int cnt = 0;
		try {
			cnt = mapper.user_insert_google(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
}
