package com.leonyip.movebooking.entity;

import java.sql.Timestamp;

/**
 * MoveBooking entity. @author MyEclipse Persistence Tools
 */

public class MoveBooking implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -5527098494644812551L;
	private Integer id;
	private String area;
	private String cartype;
	private Timestamp movedate;
	private String contact;
	private String phone;
	private Integer status;

	// Constructors

	/** default constructor */
	public MoveBooking() {
	}

	/** minimal constructor */
	public MoveBooking(String area, String cartype, Timestamp movedate,
			String contact, String phone) {
		this.area = area;
		this.cartype = cartype;
		this.movedate = movedate;
		this.contact = contact;
		this.phone = phone;
	}

	/** full constructor */
	public MoveBooking(String area, String cartype, Timestamp movedate,
			String contact, String phone, Integer status) {
		this.area = area;
		this.cartype = cartype;
		this.movedate = movedate;
		this.contact = contact;
		this.phone = phone;
		this.status = status;
	}

	// Property accessors


	public MoveBooking(Integer id, String area, String cartype,
			Timestamp movedate, String contact, String phone, Integer status) {
		super();
		this.id = id;
		this.area = area;
		this.cartype = cartype;
		this.movedate = movedate;
		this.contact = contact;
		this.phone = phone;
		this.status = status;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCartype() {
		return this.cartype;
	}

	public void setCartype(String cartype) {
		this.cartype = cartype;
	}

	public Timestamp getMovedate() {
		return this.movedate;
	}

	public void setMovedate(Timestamp movedate) {
		this.movedate = movedate;
	}

	public String getContact() {
		return this.contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}