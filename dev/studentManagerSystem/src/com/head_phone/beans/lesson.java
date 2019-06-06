package com.head_phone.beans;



import java.sql.Timestamp;

public class lesson {

	private int lesson_id;
	private String lesson_name;
	private String lesson_class;
	private String lesson_author;
	private int lesson_price;
	private Timestamp lesson_time;
	public int getLesson_id() {
		return lesson_id;
	}
	public void setLesson_id(int lesson_id) {
		this.lesson_id = lesson_id;
	}
	public String getLesson_name() {
		return lesson_name;
	}
	public void setLesson_name(String lesson_name) {
		this.lesson_name = lesson_name;
	}
	public String getLesson_class() {
		return lesson_class;
	}
	public void setLesson_class(String lesson_class) {
		this.lesson_class = lesson_class;
	}
	public String getLesson_author() {
		return lesson_author;
	}
	public void setLesson_author(String lesson_author) {
		this.lesson_author = lesson_author;
	}
	public int getLesson_price() {
		return lesson_price;
	}
	public void setLesson_price(int lesson_price) {
		this.lesson_price = lesson_price;
	}
	public Timestamp getLesson_time() {
		return lesson_time;
	}
	public void setLesson_time(Timestamp lesson_time) {
		this.lesson_time = lesson_time;
	}
	@Override
	public String toString() {
		return "lesson [lesson_id=" + lesson_id + ", lesson_name=" + lesson_name + ", lesson_class=" + lesson_class
				+ ", lesson_author=" + lesson_author + ", lesson_price=" + lesson_price + ", lesson_time=" + lesson_time
				+ "]";
	}
	
	
}
