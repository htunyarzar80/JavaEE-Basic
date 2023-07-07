package com.hostmdy.model;

import java.time.LocalDate;

public class Result {
	
	private Integer id;
	private String seatNo;
	private String major;
	private String name;
	private LocalDate date;
	private Boolean qualify;
	private Double gpa;
	
	public Result(Integer id, String seatNo, String major, String name, LocalDate date, Boolean qualify, Double gpa) {
		super();
		this.id = id;
		this.seatNo = seatNo;
		this.major = major;
		this.name = name;
		this.date = date;
		this.qualify = qualify;
		this.gpa = gpa;
	}
	public Result(String seatNo, String major, String name, LocalDate date, Boolean qualify, Double gpa) {
		super();
		this.seatNo = seatNo;
		this.major = major;
		this.name = name;
		this.date = date;
		this.qualify = qualify;
		this.gpa = gpa;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public Boolean getQualify() {
		return qualify;
	}
	public void setQualify(Boolean qualify) {
		this.qualify = qualify;
	}
	public Double getGpa() {
		return gpa;
	}
	public void setGpa(Double gpa) {
		this.gpa = gpa;
	}
	@Override
	public String toString() {
		return "Result [id=" + id + ", seatNo=" + seatNo + ", major=" + major + ", name=" + name + ", date=" + date
				+ ", qualify=" + qualify + ", gpa=" + gpa + "]";
	}
	
}
