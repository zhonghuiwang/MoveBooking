package com.leonyip.movebooking.entity;

public class Shop {
	private int shopId;
	private String shopName;
	private String shopDescription;
	private String shopDate;
	private String shopImg;
	private int uid;
	public Shop() {
		super();
	}
	public Shop(int shopId, String shopName, String shopDescription,
			String shopDate, String shopImg, int uid) {
		super();
		this.shopId = shopId;
		this.shopName = shopName;
		this.shopDescription = shopDescription;
		this.shopDate = shopDate;
		this.shopImg = shopImg;
		this.uid = uid;
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
	public String getShopshopImg() {
		return shopImg;
	}
	public void setShopQRcode(String shopImg) {
		this.shopImg = shopImg;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
}
