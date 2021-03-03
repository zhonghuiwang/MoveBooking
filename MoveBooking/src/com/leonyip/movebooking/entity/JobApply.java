package com.leonyip.movebooking.entity;

public class JobApply {
	  private int id;
	    private int applycompany;
	    private int applyuser;

	    public JobApply() {
	    }

	    public JobApply(int id, int applycompany, int applyuser) {
	        this.id = id;
	        this.applycompany = applycompany;
	        this.applyuser = applyuser;
	    }

	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public int getApplycompany() {
	        return applycompany;
	    }

	    public void setApplycompany(int applycompany) {
	        this.applycompany = applycompany;
	    }

	    public int getApplyuser() {
	        return applyuser;
	    }

	    public void setApplyuser(int applyuser) {
	        this.applyuser = applyuser;
	    }

}
