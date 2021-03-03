package com.leonyip.movebooking.entity;

public class Shop {
	private int shopId;
	private String shopName;
	private String shopDescription;
	private String shopDate;
	private String shopQRcode;
	public Shop() {
		super();
	}
	public Shop(int shopId, String shopName, String shopDescription,
			String shopDate, String shopQRcode) {
		super();
		this.shopId = shopId;
		this.shopName = shopName;
		this.shopDescription = shopDescription;
		this.shopDate = shopDate;
		this.shopQRcode = shopQRcode;
	}
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopDescription() {
		return shopDescription;
	}
	public void setShopDescription(String shopDescription) {
		this.shopDescription = shopDescription;
	}
	public String getShopDate() {
		return shopDate;
	}
	public void setShopDate(String shopDate) {
		this.shopDate = shopDate;
	}
	public String getShopQRcode() {
		return shopQRcode;
	}
	public void setShopQRcode(String shopQRcode) {
		this.shopQRcode = shopQRcode;
	}	
}
