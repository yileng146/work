package com.head_phone.beans;

public class Headphone {
	private int headphone_id;
    private String headphone_name;
    private float headphone_price;
    private String headphone_class;
	public int getHeadphone_id() {
		return headphone_id;
	}
	public void setHeadphone_id(int headphone_id) {
		this.headphone_id = headphone_id;
	}
	public String getHeadphone_name() {
		return headphone_name;
	}
	public void setHeadphone_name(String headphone_name) {
		this.headphone_name = headphone_name;
	}
	public float getHeadphone_price() {
		return headphone_price;
	}
	public void setHeadphone_price(float headphone_price) {
		this.headphone_price = headphone_price;
	}
	public String getHeadphone_class() {
		return headphone_class;
	}
	public void setHeadphone_class(String headphone_class) {
		this.headphone_class = headphone_class;
	}
	@Override
	public String toString() {
		return "Headphone [headphone_id=" + headphone_id + ", headphone_name=" + headphone_name + ", headphone_price="
				+ headphone_price + ", headphone_class=" + headphone_class + "]";
	}
}
