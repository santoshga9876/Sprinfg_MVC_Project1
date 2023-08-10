package com.rt.entity;

public class Customer{
	
	private int id;
	private String customername;
	private String customerMobilenNo;
	private String customerAddress;
	private String customeremail;
	private String customerDob;
	private String customerIdproof;
	private String customerGender;
	private String customerState;
	private String bikname;
	private String bikmodal;
	private String bikquantity;
	private String bikprice;
	
	
	public Customer() {
	}


	public Customer(int id, String customername, String customerMobilenNo, String customerAddress, String customeremail,
			String customerDob, String customerIdproof, String customerGender, String customerState, String bikname,
			String bikmodal, String bikquantity, String bikprice) {
		super();
		this.id = id;
		this.customername = customername;
		this.customerMobilenNo = customerMobilenNo;
		this.customerAddress = customerAddress;
		this.customeremail = customeremail;
		this.customerDob = customerDob;
		this.customerIdproof = customerIdproof;
		this.customerGender = customerGender;
		this.customerState = customerState;
		this.bikname = bikname;
		this.bikmodal = bikmodal;
		this.bikquantity = bikquantity;
		this.bikprice = bikprice;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getCustomername() {
		return customername;
	}


	public void setCustomername(String customername) {
		this.customername = customername;
	}


	public String getCustomerMobilenNo() {
		return customerMobilenNo;
	}


	public void setCustomerMobilenNo(String customerMobilenNo) {
		this.customerMobilenNo = customerMobilenNo;
	}


	public String getCustomerAddress() {
		return customerAddress;
	}


	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}


	public String getCustomeremail() {
		return customeremail;
	}


	public void setCustomeremail(String customeremail) {
		this.customeremail = customeremail;
	}


	public String getCustomerDob() {
		return customerDob;
	}


	public void setCustomerDob(String customerDob) {
		this.customerDob = customerDob;
	}


	public String getCustomerIdproof() {
		return customerIdproof;
	}


	public void setCustomerIdproof(String customerIdproof) {
		this.customerIdproof = customerIdproof;
	}


	public String getCustomerGender() {
		return customerGender;
	}


	public void setCustomerGender(String customerGender) {
		this.customerGender = customerGender;
	}


	public String getCustomerState() {
		return customerState;
	}


	public void setCustomerState(String customerState) {
		this.customerState = customerState;
	}


	public String getBikname() {
		return bikname;
	}


	public void setBikname(String bikname) {
		this.bikname = bikname;
	}


	public String getBikmodal() {
		return bikmodal;
	}


	public void setBikmodal(String bikmodal) {
		this.bikmodal = bikmodal;
	}


	public String getBikquantity() {
		return bikquantity;
	}


	public void setBikquantity(String bikquantity) {
		this.bikquantity = bikquantity;
	}


	public String getBikprice() {
		return bikprice;
	}


	public void setBikprice(String bikprice) {
		this.bikprice = bikprice;
	}


	
}
