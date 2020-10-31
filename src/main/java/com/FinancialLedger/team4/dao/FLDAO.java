package com.FinancialLedger.team4.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.FinancialLedger.team4.vo.FLVO;

@Repository
public class FLDAO {
	@Autowired
	private SqlSession session;

	public ArrayList<FLVO> SearchById(String user_email){
		FLMapper mapper = session.getMapper(FLMapper.class);
		ArrayList<FLVO> list = null;
		try {
			list = mapper.SearchById(user_email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; 
	}
}
