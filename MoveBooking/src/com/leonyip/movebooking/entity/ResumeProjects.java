package com.leonyip.movebooking.entity;

public class ResumeProjects {
	private int resume_pid;
    private String resume_pname;
    private String resume_pward;
    private String resume_pdescription;
    private int uid;

    public ResumeProjects() {
    }

    public ResumeProjects(int resume_pid, String resume_pname, String resume_pward, String resume_pdescription, int uid) {
        this.resume_pid = resume_pid;
        this.resume_pname = resume_pname;
        this.resume_pward = resume_pward;
        this.resume_pdescription = resume_pdescription;
        this.uid = uid;
    }

    public int getResume_pid() {
        return resume_pid;
    }

    public void setResume_pid(int resume_pid) {
        this.resume_pid = resume_pid;
    }

    public String getResume_pname() {
        return resume_pname;
    }

    public void setResume_pname(String resume_pname) {
        this.resume_pname = resume_pname;
    }

    public String getResume_pward() {
        return resume_pward;
    }

    public void setResume_pward(String resume_pward) {
        this.resume_pward = resume_pward;
    }

    public String getResume_pdescription() {
        return resume_pdescription;
    }

    public void setResume_pdescription(String resume_pdescription) {
        this.resume_pdescription = resume_pdescription;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
