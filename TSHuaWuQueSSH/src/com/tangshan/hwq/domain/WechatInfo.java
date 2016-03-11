package com.tangshan.hwq.domain;

import java.sql.Timestamp;

/**
 * WechatInfo entity. @author MyEclipse Persistence Tools
 */

public class WechatInfo implements java.io.Serializable {

	// Fields

	private Integer wechatId;
	private String title;
	private String link;
	private Timestamp releaseTime;
	private Timestamp updateTime;
	private Integer visiteTimes;

	// Constructors

	/** default constructor */
	public WechatInfo() {
	}

	/** minimal constructor */
	public WechatInfo(String title, String link) {
		this.title = title;
		this.link = link;
	}

	/** full constructor */
	public WechatInfo(String title, String link, Timestamp releaseTime,
			Timestamp updateTime, Integer visiteTimes) {
		this.title = title;
		this.link = link;
		this.releaseTime = releaseTime;
		this.updateTime = updateTime;
		this.visiteTimes = visiteTimes;
	}

	// Property accessors

	public Integer getWechatId() {
		return this.wechatId;
	}

	public void setWechatId(Integer wechatId) {
		this.wechatId = wechatId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Timestamp getReleaseTime() {
		return this.releaseTime;
	}

	public void setReleaseTime(Timestamp releaseTime) {
		this.releaseTime = releaseTime;
	}

	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getVisiteTimes() {
		return this.visiteTimes;
	}

	public void setVisiteTimes(Integer visiteTimes) {
		this.visiteTimes = visiteTimes;
	}

}