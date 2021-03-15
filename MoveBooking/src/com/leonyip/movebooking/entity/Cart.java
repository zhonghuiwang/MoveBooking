package com.leonyip.movebooking.entity;

import java.util.List;

public class Cart {
	 private int cartId;
	    private Users user;
	    private List<Goods> list;

	    public Cart() {
	    }

	    public Cart(int cartId, Users user, List<Goods> list) {
	        this.cartId = cartId;
	        this.user = user;
	        this.list = list;
	    }

	    public int getCartId() {
	        return cartId;
	    }

	    public void setCartId(int cartId) {
	        this.cartId = cartId;
	    }

	    public Users getUser() {
	        return user;
	    }

	    public void setUser(Users user) {
	        this.user = user;
	    }

	    public List<Goods> getList() {
	        return list;
	    }

	    public void setList(List<Goods> list) {
	        this.list = list;
	    }
}