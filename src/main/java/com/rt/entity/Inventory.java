package com.rt.entity;

public class Inventory {
	
	private int id;
	private String bikname;
	private String bikmodal;
	private String mnfdate;
	private String bikcolor;
	private String bikprice;
	private String bikquantity;
	private String bikarrivekdate;
	
	public Inventory() {
	
	}

	

	public Inventory(int id, String bikname, String bikmodal, String mnfdate, String bikcolor, String bikprice,
			String bikquantity, String bikarrivekdate) {
		super();
		this.id = id;
		this.bikname = bikname;
		this.bikmodal = bikmodal;
		this.mnfdate = mnfdate;
		this.bikcolor = bikcolor;
		this.bikprice = bikprice;
		this.bikquantity = bikquantity;
		this.bikarrivekdate = bikarrivekdate;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getMnfdate() {
		return mnfdate;
	}

	public void setMnfdate(String mnfdate) {
		this.mnfdate = mnfdate;
	}

	public String getBikcolor() {
		return bikcolor;
	}

	public void setBikcolor(String bikcolor) {
		this.bikcolor = bikcolor;
	}

	public String getBikprice() {
		return bikprice;
	}

	public void setBikprice(String bikprice) {
		this.bikprice = bikprice;
	}

	public String getBikarrivekdate() {
		return bikarrivekdate;
	}

	public void setBikarrivekdate(String bikarrivekdate) {
		this.bikarrivekdate = bikarrivekdate;
	}



	public String getBikquantity() {
		return bikquantity;
	}



	public void setBikquantity(String bikquantity) {
		this.bikquantity = bikquantity;
	}



	
	
	

}
