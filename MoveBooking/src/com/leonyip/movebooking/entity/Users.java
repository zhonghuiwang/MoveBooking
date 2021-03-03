package com.leonyip.movebooking.entity;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 2548742047971256421L;
	private Integer id;
	private String name;
	private String password;
	private String phone;
	private String location;
	private String member;

	// Constructors

	/** default constructor */
	public Users() {
	}

	public Users(Integer id, String name, String password, String phone, String location, String member) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.setPhone(phone);
		this.setLocation(location);
		this.member = member;
	}

	/** full constructor */
	public Users(String name, String password) {
		this.name = name;
		this.password = password;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

}