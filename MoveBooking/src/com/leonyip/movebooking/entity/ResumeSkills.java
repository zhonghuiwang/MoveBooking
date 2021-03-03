package com.leonyip.movebooking.entity;

public class ResumeSkills {
	 private int resume_sid;
	    private String resume_skill;
	    private String resume_rcm;
	    private int uid;

	    public ResumeSkills() {
	    }

	    public ResumeSkills(int resume_sid, String resume_skill, String resume_rcm, int uid) {
	        this.resume_sid = resume_sid;
	        this.resume_skill = resume_skill;
	        this.resume_rcm = resume_rcm;
	        this.uid = uid;
	    }

	    public int getResume_sid() {
	        return resume_sid;
	    }

	    public void setResume_sid(int resume_sid) {
	        this.resume_sid = resume_sid;
	    }

	    public String getResume_skill() {
	        return resume_skill;
	    }

	    public void setResume_skill(String resume_skill) {
	        this.resume_skill = resume_skill;
	    }

	    public String getResume_rcm() {
	        return resume_rcm;
	    }

	    public void setResume_rcm(String resume_rcm) {
	        this.resume_rcm = resume_rcm;
	    }

	    public int getUid() {
	        return uid;
	    }

	    public void setUid(int uid) {
	        this.uid = uid;
	    }
}
