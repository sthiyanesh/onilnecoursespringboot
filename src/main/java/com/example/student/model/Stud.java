package com.example.student.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Stud {
	
	@Id
	private int sid;
	private String sname;
	private String semail;
	private String spw;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String getSpw() {
		return spw;
	}
	public void setSpw(String spw) {
		this.spw = spw;
	}
	@Override
	public String toString() {
		return "Stud [sid=" + sid + ", sname=" + sname + ", semail=" + semail + ", spw=" + spw + "]";
	}
	
	
	
}
