package com.FinancialLedger.team4.vo;

import lombok.Data;

@Data
// Financial Ledger Value Object
public class FLVO {
	private int fl_no;
	private String user_email;
	private String google_user_email;
	private String fl_description;
	private String fl_type;
	private int amount;
	private String fl_indate;
}
