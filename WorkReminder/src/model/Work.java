package model;

import java.sql.Date;

public class Work {
	
	
	private	String title;
	private	String conent;
	private	Date time;
	private	int proity;
	private	int status;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getConent() {
		return conent;
	}
	public void setConent(String conent) {
		this.conent = conent;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getProity() {
		return proity;
	}
	public void setProity(int proity) {
		this.proity = proity;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
	
}
