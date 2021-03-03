package com.leonyip.movebooking.entity;

public class Address {
	  private int addr_id;
	    private String addr_info;
	    private int uid;

	    public Address() {
	    }

	    public Address(int addr_id, String addr_info, int uid) {
	        this.addr_id = addr_id;
	        this.addr_info = addr_info;
	        this.uid = uid;
	    }

	    public int getAddr_id() {
	        return addr_id;
	    }

	    public void setAddr_id(int addr_id) {
	        this.addr_id = addr_id;
	    }

	    public String getAddr_info() {
	        return addr_info;
	    }

	    public void setAddr_info(String addr_info) {
	        this.addr_info = addr_info;
	    }

	    public int getUid() {
	        return uid;
	    }

	    public void setUid(int uid) {
	        this.uid = uid;
	    }

}
