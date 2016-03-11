package com.tangshan.hwq.domain;

import java.sql.Timestamp;

/**
 * DetailInfo entity. @author MyEclipse Persistence Tools
 */

public class DetailInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private NavigationInfo navigationInfo;
	private String defaultBigImg;
	private Integer imagesNum;
	private String imagesAddress;
	private Timestamp updateTime;
	private String navEnglishName;
    private int seletedNum;
	// Constructors

	public int getSeletedNum() {
		return seletedNum;
	}

	public void setSeletedNum(int seletedNum) {
		this.seletedNum = seletedNum;
	}

	/** default constructor */
	public DetailInfo() {
	}

	public DetailInfo(NavigationInfo navigationInfo, String defaultBigImg,
			Integer imagesNum, String imagesAddress, String navEnglishName,
			Timestamp updateTime, int seletedNum) {
		super();
		this.navigationInfo = navigationInfo;
		this.defaultBigImg = defaultBigImg;
		this.imagesNum = imagesNum;
		this.imagesAddress = imagesAddress;
		this.navEnglishName = navEnglishName;
		this.updateTime = updateTime;
		this.seletedNum=seletedNum;
	}

	/** minimal constructor */
	public DetailInfo(String defaultBigImg) {
		this.defaultBigImg = defaultBigImg;
	}

	/** full constructor */
	public DetailInfo(NavigationInfo navigationInfo, String defaultBigImg,
			Integer imagesNum, String imagesAddress, Timestamp updateTime,
			String navEnglishName) {
		this.navigationInfo = navigationInfo;
		this.defaultBigImg = defaultBigImg;
		this.imagesNum = imagesNum;
		this.imagesAddress = imagesAddress;
		this.updateTime = updateTime;
		this.navEnglishName = navEnglishName;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public NavigationInfo getNavigationInfo() {
		return this.navigationInfo;
	}

	public void setNavigationInfo(NavigationInfo navigationInfo) {
		this.navigationInfo = navigationInfo;
	}

	public String getDefaultBigImg() {
		return this.defaultBigImg;
	}

	public void setDefaultBigImg(String defaultBigImg) {
		this.defaultBigImg = defaultBigImg;
	}

	public Integer getImagesNum() {
		return this.imagesNum;
	}

	public void setImagesNum(Integer imagesNum) {
		this.imagesNum = imagesNum;
	}

	public String getImagesAddress() {
		return this.imagesAddress;
	}

	public void setImagesAddress(String imagesAddress) {
		this.imagesAddress = imagesAddress;
	}

	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public String getNavEnglishName() {
		return this.navEnglishName;
	}

	public void setNavEnglishName(String navEnglishName) {
		this.navEnglishName = navEnglishName;
	}

}