package com.FinancialLedger.team4.vo;

import lombok.Data;

@Data
public class UserAccountVO {
	private String user_email;
	private String user_password;
	private String user_refresh_token;
}
