package com.tangshan.hwq.domain;

import java.sql.Timestamp;

/**
 * StatisticalInfo entity. @author MyEclipse Persistence Tools
 */

public class StatisticalInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String ip;
	private Integer loginTime;
	private Timestamp lastLoginTime;
	private Integer entireImageNum;
	private Integer visiteTimes;

	// Constructors

	/** default constructor */
	public StatisticalInfo() {
	}

	/** minimal constructor */
	public StatisticalInfo(Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	/** full constructor */
	public StatisticalInfo(String ip, Integer loginTime,
			Timestamp lastLoginTime, Integer entireImageNum, Integer visiteTimes) {
		this.ip = ip;
		this.loginTime = loginTime;
		this.lastLoginTime = lastLoginTime;
		this.entireImageNum = entireImageNum;
		this.visiteTimes = visiteTimes;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Integer getLoginTime() {
		return this.loginTime;
	}

	public void setLoginTime(Integer loginTime) {
		this.loginTime = loginTime;
	}

	public Timestamp getLastLoginTime() {
		return this.lastLoginTime;
	}

	public void setLastLoginTime(Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public Integer getEntireImageNum() {
		return this.entireImageNum;
	}

	public void setEntireImageNum(Integer entireImageNum) {
		this.entireImageNum = entireImageNum;
	}

	public Integer getVisiteTimes() {
		return this.visiteTimes;
	}

	public void setVisiteTimes(Integer visiteTimes) {
		this.visiteTimes = visiteTimes;
	}

}