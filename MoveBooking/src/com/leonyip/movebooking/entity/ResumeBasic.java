package com.leonyip.movebooking.entity;

public class ResumeBasic {
    private int resume_bid;
    private String resume_name;
    private String resume_salary;
    private String resume_location;
    private String resume_workl;
    private String resume_tel;
    private String resume_email;
    private int uid;

    public ResumeBasic() {
    }

    public ResumeBasic(int resume_bid, String resume_name, String resume_salary, String resume_location, String resume_workl, String resume_tel, String resume_email, int uid) {
        this.resume_bid = resume_bid;
        this.resume_name = resume_name;
        this.resume_salary = resume_salary;
        this.resume_location = resume_location;
        this.resume_workl = resume_workl;
        this.resume_tel = resume_tel;
        this.resume_email = resume_email;
        this.uid = uid;
    }

    public int getResume_bid() {
        return resume_bid;
    }

    public void setResume_bid(int resume_bid) {
        this.resume_bid = resume_bid;
    }

    public String getResume_name() {
        return resume_name;
    }

    public void setResume_name(String resume_name) {
        this.resume_name = resume_name;
    }

    public String getResume_salary() {
        return resume_salary;
    }

    public void setResume_salary(String resume_salary) {
        this.resume_salary = resume_salary;
    }

    public String getResume_location() {
        return resume_location;
    }

    public void setResume_location(String resume_location) {
        this.resume_location = resume_location;
    }

    public String getResume_workl() {
        return resume_workl;
    }

    public void setResume_workl(String resume_workl) {
        this.resume_workl = resume_workl;
    }

    public String getResume_tel() {
        return resume_tel;
    }

    public void setResume_tel(String resume_tel) {
        this.resume_tel = resume_tel;
    }

    public String getResume_email() {
        return resume_email;
    }

    public void setResume_email(String resume_email) {
        this.resume_email = resume_email;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
