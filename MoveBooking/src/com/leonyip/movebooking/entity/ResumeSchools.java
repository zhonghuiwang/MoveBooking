package com.leonyip.movebooking.entity;

public class ResumeSchools {
	  private int resume_eid;
	    private String resume_ename;
	    private String resume_elocation;
	    private String resume_grade;
	    private String resume_edescription;
	    private int uid;

	    public ResumeSchools() {
	    }

	    public ResumeSchools(int resume_eid, String resume_ename, String resume_elocation, String resume_grade, String resume_edescription, int uid) {
	        this.resume_eid = resume_eid;
	        this.resume_ename = resume_ename;
	        this.resume_elocation = resume_elocation;
	        this.resume_grade = resume_grade;
	        this.resume_edescription = resume_edescription;
	        this.uid = uid;
	    }

	    public int getResume_eid() {
	        return resume_eid;
	    }

	    public void setResume_eid(int resume_eid) {
	        this.resume_eid = resume_eid;
	    }

	    public String getResume_ename() {
	        return resume_ename;
	    }

	    public void setResume_ename(String resume_ename) {
	        this.resume_ename = resume_ename;
	    }

	    public String getResume_elocation() {
	        return resume_elocation;
	    }

	    public void setResume_elocation(String resume_elocation) {
	        this.resume_elocation = resume_elocation;
	    }

	    public String getResume_grade() {
	        return resume_grade;
	    }

	    public void setResume_grade(String resume_grade) {
	        this.resume_grade = resume_grade;
	    }

	    public String getResume_edescription() {
	        return resume_edescription;
	    }

	    public void setResume_edescription(String resume_edescription) {
	        this.resume_edescription = resume_edescription;
	    }

	    public int getUid() {
	        return uid;
	    }

	    public void setUid(int uid) {
	        this.uid = uid;
	    }
}
