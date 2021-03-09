package com.leonyip.movebooking.entity;

public class LocalNews {
	 	public int nid;
	    public String ntitle;
	    public String ncontent;
	    public String nimage;
	    public String npublisher;
	    public String npubtime;

	    public LocalNews() {
	    }

	    public LocalNews(int nid, String ntitle, String ncontent, String nimage, String npublisher, String npubtime) {
	        this.nid = nid;
	        this.ntitle = ntitle;
	        this.ncontent = ncontent;
	        this.nimage = nimage;
	        this.npublisher = npublisher;
	        this.npubtime = npubtime;
	    }

	    public int getNid() {
	        return nid;
	    }

	    public void setNid(int nid) {
	        this.nid = nid;
	    }

	    public String getNtitle() {
	        return ntitle;
	    }

	    public void setNtitle(String ntitle) {
	        this.ntitle = ntitle;
	    }

	    public String getNcontent() {
	        return ncontent;
	    }

	    public void setNcontent(String ncontent) {
	        this.ncontent = ncontent;
	    }

	    public String getNimage() {
	        return nimage;
	    }

	    public void setNimage(String nimage) {
	        this.nimage = nimage;
	    }

	    public String getNpublisher() {
	        return npublisher;
	    }

	    public void setNpublisher(String npublisher) {
	        this.npublisher = npublisher;
	    }

	    public String getNpubtime() {
	        return npubtime;
	    }

	    public void setNpubtime(String npubtime) {
	        this.npubtime = npubtime;
	    }
}
