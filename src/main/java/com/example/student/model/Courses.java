package com.example.student.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Courses {
	
	@Id
	private int crid;
	private String crname;
	private String crtutor;
	private int fees;
	private int duration;
	
	public int getCrid() {
		return crid;
	}
	public void setCrid(int crid) {
		this.crid = crid;
	}
	public String getCrname() {
		return crname;
	}
	public void setCrname(String crname) {
		this.crname = crname;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getCrtutor() {
		return crtutor;
	}
	public void setCrtutor(String crtutor) {
		this.crtutor = crtutor;
	}
	public int getFees() {
		return fees;
	}
	public void setFees(int fees) {
		this.fees = fees;
	}
	
	@Override
	public String toString() {
		return "Courses [crid=" + crid + ", crname=" + crname + ", crtutor=" + crtutor + ", fees=" + fees
				+ ", duration=" + duration + "]";
	}
	
	
}
