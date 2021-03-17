package com.leonyip.movebooking.entity;

public class MessageToWho {
	private int fromuid; //消息发布人id
	private int touid; //消息接收人id
	private int shopid; //店铺id
	private int mid; //消息id
	private int toid; //发送消息id
	private String shopName;
	private String shopImg;
	private String mtitle;
	private String mcontent;
	private String mtime;
	private int tstatus;
	public MessageToWho() {
		super();
	}
	public MessageToWho(int fromuid, int touid, int shopid, int mid, int toid,
			String shopName, String shopImg, String mtitle, String mcontent,
			String mtime, int tstatus) {
		super();
		this.fromuid = fromuid;
		this.touid = touid;
		this.shopid = shopid;
		this.mid = mid;
		this.toid = toid;
		this.shopName = shopName;
		this.shopImg = shopImg;
		this.mtitle = mtitle;
		this.mcontent = mcontent;
		this.mtime = mtime;
		this.tstatus = tstatus;
	}
	public int getFromuid() {
		return fromuid;
	}
	public void setFromuid(int fromuid) {
		this.fromuid = fromuid;
	}
	public int getTouid() {
		return touid;
	}
	public void setTouid(int touid) {
		this.touid = touid;
	}
	public int getShopid() {
		return shopid;
	}
	public void setShopid(int shopid) {
		this.shopid = shopid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getToid() {
		return toid;
	}
	public void setToid(int toid) {
		this.toid = toid;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopImg() {
		return shopImg;
	}
	public void setShopImg(String shopImg) {
		this.shopImg = shopImg;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	public int getTstatus() {
		return tstatus;
	}
	public void setTstatus(int tstatus) {
		this.tstatus = tstatus;
	}
}
