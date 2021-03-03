package com.leonyip.movebooking.entity;

public class Orders {
	 private int orders_id;  //订单id
	    private int uid;  //用户id
	    private String uname; // 用户名
	    private String user_tel; //用户电话
	    private int goods_id; //商品id
	    private String orders_name; //商品名称
	    private String orders_price; //商品单价
	    private String orders_address; //收货地址
	    private int amounts;  //购买数量
	    private String orders_total; //订单总金额
	    private String orders_time; //下单时间
	    private String orders_status;  //付款状态

	    public Orders() {
	    }

	    public Orders(int orders_id, int uid, String uname, String user_tel, int goods_id, String orders_name, String orders_price, String orders_address, int amounts, String orders_total, String orders_time, String orders_status) {
	        this.orders_id = orders_id;
	        this.uid = uid;
	        this.uname = uname;
	        this.user_tel = user_tel;
	        this.goods_id = goods_id;
	        this.orders_name = orders_name;
	        this.orders_price = orders_price;
	        this.orders_address = orders_address;
	        this.amounts = amounts;
	        this.orders_total = orders_total;
	        this.orders_time = orders_time;
	        this.orders_status = orders_status;
	    }

	    public int getOrders_id() {
	        return orders_id;
	    }

	    public void setOrders_id(int orders_id) {
	        this.orders_id = orders_id;
	    }

	    public int getUid() {
	        return uid;
	    }

	    public void setUid(int uid) {
	        this.uid = uid;
	    }

	    public String getUname() {
	        return uname;
	    }

	    public void setUname(String uname) {
	        this.uname = uname;
	    }

	    public String getUser_tel() {
	        return user_tel;
	    }

	    public void setUser_tel(String user_tel) {
	        this.user_tel = user_tel;
	    }

	    public int getGoods_id() {
	        return goods_id;
	    }

	    public void setGoods_id(int goods_id) {
	        this.goods_id = goods_id;
	    }

	    public String getOrders_name() {
	        return orders_name;
	    }

	    public void setOrders_name(String orders_name) {
	        this.orders_name = orders_name;
	    }

	    public String getOrders_price() {
	        return orders_price;
	    }

	    public void setOrders_price(String orders_price) {
	        this.orders_price = orders_price;
	    }

	    public String getOrders_address() {
	        return orders_address;
	    }

	    public void setOrders_address(String orders_address) {
	        this.orders_address = orders_address;
	    }

	    public int getAmounts() {
	        return amounts;
	    }

	    public void setAmounts(int amounts) {
	        this.amounts = amounts;
	    }

	    public String getOrders_total() {
	        return orders_total;
	    }

	    public void setOrders_total(String orders_total) {
	        this.orders_total = orders_total;
	    }

	    public String getOrders_time() {
	        return orders_time;
	    }

	    public void setOrders_time(String orders_time) {
	        this.orders_time = orders_time;
	    }

	    public String getOrders_status() {
	        return orders_status;
	    }

	    public void setOrders_status(String orders_status) {
	        this.orders_status = orders_status;
	    }
}
