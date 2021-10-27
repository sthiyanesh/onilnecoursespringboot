package com.example.student.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admin {
	@Id
	private int aid;
	private String aname;
	private String aemail;
	private String apw;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public String getApw() {
		return apw;
	}
	public void setApw(String apw) {
		this.apw = apw;
	}
	
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", aemail=" + aemail + ", apw=" + apw + "]";
	}
	
}
