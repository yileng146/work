package com.head_phone.beans;

public class Code {

       private int code_id;
       private String code_name;
       private int code_use;
	public int getCode_id() {
		return code_id;
	}
	public void setCode_id(int code_id) {
		this.code_id = code_id;
	}
	public String getCode_name() {
		return code_name;
	}
	public void setCode_name(String code_name) {
		this.code_name = code_name;
	}
	public int getCode_use() {
		return code_use;
	}
	public void setCode_use(int code_use) {
		this.code_use = code_use;
	}
	@Override
	public String toString() {
		return "Code [code_id=" + code_id + ", code_name=" + code_name + ", code_use=" + code_use + ", getCode_id()="
				+ getCode_id() + ", getCode_name()=" + getCode_name() + ", getCode_use()=" + getCode_use()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
       
}
