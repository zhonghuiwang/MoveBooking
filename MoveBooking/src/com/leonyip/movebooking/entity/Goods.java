package com.leonyip.movebooking.entity;

public class Goods {
	private int goodId;
	private String goodName;
	private int goodPrice;
	private String priceType;
	private int goodCount;
	private String CountType;
	private String goodLogo;
	private String goodImage;
	private String goodDescription;
	private int shopId;
	private int cateId;
	
	public Goods() {
		super();
	}
	
	public Goods(int goodId, String goodName, int goodPrice, String priceType,
			int goodCount, String countType, String goodLogo, String goodImage,
			String goodDescription, int shopId, int cateId) {
		super();
		this.goodId = goodId;
		this.goodName = goodName;
		this.goodPrice = goodPrice;
		this.priceType = priceType;
		this.goodCount = goodCount;
		this.CountType = countType;
		this.goodLogo = goodLogo;
		this.goodImage = goodImage;
		this.goodDescription = goodDescription;
		this.shopId = shopId;
		this.cateId = cateId;
	}

	public int getGoodId() {
		return goodId;
	}

	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}

	public String getGoodName() {
		return goodName;
	}

	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}

	public int getGoodPrice() {
		return goodPrice;
	}

	public void setGoodPrice(int goodPrice) {
		this.goodPrice = goodPrice;
	}

	public String getPriceType() {
		return priceType;
	}

	public void setPriceType(String priceType) {
		this.priceType = priceType;
	}

	public int getGoodCount() {
		return goodCount;
	}

	public void setGoodCount(int goodCount) {
		this.goodCount = goodCount;
	}

	public String getCountType() {
		return CountType;
	}

	public void setCountType(String countType) {
		CountType = countType;
	}

	public String getGoodLogo() {
		return goodLogo;
	}

	public void setGoodLogo(String goodLogo) {
		this.goodLogo = goodLogo;
	}

	public String getGoodImage() {
		return goodImage;
	}

	public void setGoodImage(String goodImage) {
		this.goodImage = goodImage;
	}

	public String getGoodDescription() {
		return goodDescription;
	}

	public void setGoodDescription(String goodDescription) {
		this.goodDescription = goodDescription;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public int getCateId() {
		return cateId;
	}

	public void setCateId(int cateId) {
		this.cateId = cateId;
	}
	

}
