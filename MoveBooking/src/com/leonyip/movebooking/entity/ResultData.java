package com.leonyip.movebooking.entity;

import java.io.Serializable;

public class ResultData<T> implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private T data;
    private int status;//×´Ì¬Âë
    private String msg;//ĞÅÏ¢

    public ResultData(T data, int status, String msg) {
        this.data = data;
        this.status = status;
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "ResultData{" +
                "data=" + data +
                ", status=" + status +
                ", msg='" + msg + '\'' +
                '}';
    }
}

