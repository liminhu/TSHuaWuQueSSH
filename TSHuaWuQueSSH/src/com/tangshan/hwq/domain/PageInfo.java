package com.tangshan.hwq.domain;

import java.sql.Timestamp;

/**
 * PageInfo entity. @author MyEclipse Persistence Tools
 */

public class PageInfo implements java.io.Serializable {

	// Fields

	private Integer pageId;
	private String telephoneNum;
	private String mobilePhoneNum;
	private String qqPhoneNum;
	private String firstBlockImgs;
	private String secondBlockImg;
	private String thirdBlockImg;
	private String recordInfo;
	private String recordLinkAddress;
	private String copyright;
	private String title;
	private String logo;
	private Timestamp updateTime;

	// Constructors

	/** default constructor */
	public PageInfo() {
	}

	/** minimal constructor */
	public PageInfo(String firstBlockImgs, String recordInfo,
			String recordLinkAddress) {
		this.firstBlockImgs = firstBlockImgs;
		this.recordInfo = recordInfo;
		this.recordLinkAddress = recordLinkAddress;
	}

	/** full constructor */
	public PageInfo(String telephoneNum, String mobilePhoneNum,
			String qqPhoneNum, String firstBlockImgs, String secondBlockImg,
			String thirdBlockImg, String recordInfo, String recordLinkAddress,
			String copyright, String title, String logo, Timestamp updateTime) {
		this.telephoneNum = telephoneNum;
		this.mobilePhoneNum = mobilePhoneNum;
		this.qqPhoneNum = qqPhoneNum;
		this.firstBlockImgs = firstBlockImgs;
		this.secondBlockImg = secondBlockImg;
		this.thirdBlockImg = thirdBlockImg;
		this.recordInfo = recordInfo;
		this.recordLinkAddress = recordLinkAddress;
		this.copyright = copyright;
		this.title = title;
		this.logo = logo;
		this.updateTime = updateTime;
	}

	// Property accessors

	public Integer getPageId() {
		return this.pageId;
	}

	public void setPageId(Integer pageId) {
		this.pageId = pageId;
	}

	public String getTelephoneNum() {
		return this.telephoneNum;
	}

	public void setTelephoneNum(String telephoneNum) {
		this.telephoneNum = telephoneNum;
	}

	public String getMobilePhoneNum() {
		return this.mobilePhoneNum;
	}

	public void setMobilePhoneNum(String mobilePhoneNum) {
		this.mobilePhoneNum = mobilePhoneNum;
	}

	public String getQqPhoneNum() {
		return this.qqPhoneNum;
	}

	public void setQqPhoneNum(String qqPhoneNum) {
		this.qqPhoneNum = qqPhoneNum;
	}

	public String getFirstBlockImgs() {
		return this.firstBlockImgs;
	}

	public void setFirstBlockImgs(String firstBlockImgs) {
		this.firstBlockImgs = firstBlockImgs;
	}

	public String getSecondBlockImg() {
		return this.secondBlockImg;
	}

	public void setSecondBlockImg(String secondBlockImg) {
		this.secondBlockImg = secondBlockImg;
	}

	public String getThirdBlockImg() {
		return this.thirdBlockImg;
	}

	public void setThirdBlockImg(String thirdBlockImg) {
		this.thirdBlockImg = thirdBlockImg;
	}

	public String getRecordInfo() {
		return this.recordInfo;
	}

	public void setRecordInfo(String recordInfo) {
		this.recordInfo = recordInfo;
	}

	public String getRecordLinkAddress() {
		return this.recordLinkAddress;
	}

	public void setRecordLinkAddress(String recordLinkAddress) {
		this.recordLinkAddress = recordLinkAddress;
	}

	public String getCopyright() {
		return this.copyright;
	}

	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

}