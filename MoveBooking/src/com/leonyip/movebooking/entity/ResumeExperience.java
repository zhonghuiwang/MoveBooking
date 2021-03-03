package com.leonyip.movebooking.entity;

public class ResumeExperience {
	   private int resume_jid;
	    private String resume_jname; //��˾����
	    private String resume_jlocation; //�����ص�
	    private String resume_jdo;  //����ְλ
	    private String resume_jdescription; //��������
	    private int uid; //�û�id

	    public ResumeExperience() {
	    }

	    public ResumeExperience(int resume_jid, String resume_jname, String resume_jlocation, String resume_jdo, String resume_jdescription, int uid) {
	        this.resume_jid = resume_jid;
	        this.resume_jname = resume_jname;
	        this.resume_jlocation = resume_jlocation;
	        this.resume_jdo = resume_jdo;
	        this.resume_jdescription = resume_jdescription;
	        this.uid = uid;
	    }

	    public int getResume_jid() {
	        return resume_jid;
	    }

	    public void setResume_jid(int resume_jid) {
	        this.resume_jid = resume_jid;
	    }

	    public String getResume_jname() {
	        return resume_jname;
	    }

	    public void setResume_jname(String resume_jname) {
	        this.resume_jname = resume_jname;
	    }

	    public String getResume_jlocation() {
	        return resume_jlocation;
	    }

	    public void setResume_jlocation(String resume_jlocation) {
	        this.resume_jlocation = resume_jlocation;
	    }

	    public String getResume_jdo() {
	        return resume_jdo;
	    }

	    public void setResume_jdo(String resume_jdo) {
	        this.resume_jdo = resume_jdo;
	    }

	    public String getResume_jdescription() {
	        return resume_jdescription;
	    }

	    public void setResume_jdescription(String resume_jdescription) {
	        this.resume_jdescription = resume_jdescription;
	    }

	    public int getUid() {
	        return uid;
	    }

	    public void setUid(int uid) {
	        this.uid = uid;
	    }
}
