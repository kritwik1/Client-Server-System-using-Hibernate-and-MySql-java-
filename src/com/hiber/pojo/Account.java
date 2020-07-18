package com.hiber.pojo;

public class Account {
	private int orgid;
	private int aid;
	private String accounttype;
	
	private String customername;
	private String accountnumber;
	private String startingdate;
	private String closingdate;
	private String address;

	public String getAccounttype() {
		return accounttype;
	}
	public void setAccounttype(String accounttype) {
		this.accounttype = accounttype;
	}
	public int getOrgid() {
		return orgid;
	}
	public void setOrgid(int orgid) {
		this.orgid = orgid;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getAccountnumber() {
		return accountnumber;
	}
	public void setAccountnumber(String accountnumber) {
		this.accountnumber = accountnumber;
	}
	public String getStartingdate() {
		return startingdate;
	}
	public void setStartingdate(String startingdate) {
		this.startingdate = startingdate;
	}
	public String getClosingdate() {
		return closingdate;
	}
	public void setClosingdate(String closingdate) {
		this.closingdate = closingdate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
