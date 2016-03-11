package com.tangshan.hwq.domain;

/**
 * HumanResInfo entity. @author MyEclipse Persistence Tools
 */

public class HumanResInfo implements java.io.Serializable {

	// Fields

	private Integer humResId;
	private String position;
	private String monthSalary;
	private String educationBackground;
	private String responsibility;
	private String qualifications;
	private String workTime;
	private String connectTelephone;

	// Constructors

	/** default constructor */
	public HumanResInfo() {
	}

	/** full constructor */
	public HumanResInfo(String position, String monthSalary,
			String educationBackground, String responsibility,
			String qualifications, String workTime, String connectTelephone) {
		this.position = position;
		this.monthSalary = monthSalary;
		this.educationBackground = educationBackground;
		this.responsibility = responsibility;
		this.qualifications = qualifications;
		this.workTime = workTime;
		this.connectTelephone = connectTelephone;
	}

	// Property accessors

	public Integer getHumResId() {
		return this.humResId;
	}

	public void setHumResId(Integer humResId) {
		this.humResId = humResId;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getMonthSalary() {
		return this.monthSalary;
	}

	public void setMonthSalary(String monthSalary) {
		this.monthSalary = monthSalary;
	}

	public String getEducationBackground() {
		return this.educationBackground;
	}

	public void setEducationBackground(String educationBackground) {
		this.educationBackground = educationBackground;
	}

	public String getResponsibility() {
		return this.responsibility;
	}

	public void setResponsibility(String responsibility) {
		this.responsibility = responsibility;
	}

	public String getQualifications() {
		return this.qualifications;
	}

	public void setQualifications(String qualifications) {
		this.qualifications = qualifications;
	}

	public String getWorkTime() {
		return this.workTime;
	}

	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	public String getConnectTelephone() {
		return this.connectTelephone;
	}

	public void setConnectTelephone(String connectTelephone) {
		this.connectTelephone = connectTelephone;
	}

}