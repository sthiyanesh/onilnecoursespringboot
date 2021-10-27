package com.example.student.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Enroll {
	
	@Id
	private int eid;
	private int sid;
	private int crid;
	private String sname;
	private String crname;
	private String crtutor;
	private int duration;
	private int fees;
	
	public int getCrid() {
		return crid;
	}
	public void setCrid(int crid) {
		this.crid = crid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getCrname() {
		return crname;
	}
	public void setCrname(String crname) {
		this.crname = crname;
	}
	public String getCrtutor() {
		return crtutor;
	}
	public void setCrtutor(String crtutor) {
		this.crtutor = crtutor;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getFees() {
		return fees;
	}
	public void setFees(int fees) {
		this.fees = fees;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	
	@Override
	public String toString() {
		return "Enroll [eid=" + eid + ", sid=" + sid + ", crid=" + crid + ", sname=" + sname + ", crname=" + crname
				+ ", crtutor=" + crtutor + ", duration=" + duration + ", fees=" + fees + "]";
	}
	
}
	