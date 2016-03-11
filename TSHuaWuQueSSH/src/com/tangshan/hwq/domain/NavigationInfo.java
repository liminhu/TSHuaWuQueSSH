package com.tangshan.hwq.domain;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * NavigationInfo entity. @author MyEclipse Persistence Tools
 */

public class NavigationInfo implements java.io.Serializable {

	// Fields

	private Integer navigationId;
	private NavigationInfo navigationInfo;
	private String navChineseName;
	private String navEnglishName;
	private String navLink;
	private String navSmallImag;
	private Timestamp lastUpdateTime;
	private Set navigationInfos = new HashSet(0);
	private Set detailInfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public NavigationInfo() {
	}

	/** minimal constructor */
	public NavigationInfo(String navChineseName, String navEnglishName) {
		this.navChineseName = navChineseName;
		this.navEnglishName = navEnglishName;
	}
	
	public NavigationInfo(String navChineseName, String navEnglishName, 
			String navLink, String navSmallImag, Timestamp lastUpdateTime,
			NavigationInfo navigationInfo) {
		super();
		this.navEnglishName = navEnglishName;
		this.navChineseName = navChineseName;
		this.navLink = navLink;
		this.navSmallImag = navSmallImag;
		this.lastUpdateTime = lastUpdateTime;
		this.navigationInfo = navigationInfo;
	}

	/** full constructor */
	public NavigationInfo(NavigationInfo navigationInfo, String navChineseName,
			String navEnglishName, String navLink, String navSmallImag,
			Timestamp lastUpdateTime, Set navigationInfos, Set detailInfos) {
		this.navigationInfo = navigationInfo;
		this.navChineseName = navChineseName;
		this.navEnglishName = navEnglishName;
		this.navLink = navLink;
		this.navSmallImag = navSmallImag;
		this.lastUpdateTime = lastUpdateTime;
		this.navigationInfos = navigationInfos;
		this.detailInfos = detailInfos;
	}

	// Property accessors

	public Integer getNavigationId() {
		return this.navigationId;
	}

	public void setNavigationId(Integer navigationId) {
		this.navigationId = navigationId;
	}

	public NavigationInfo getNavigationInfo() {
		return this.navigationInfo;
	}

	public void setNavigationInfo(NavigationInfo navigationInfo) {
		this.navigationInfo = navigationInfo;
	}

	public String getNavChineseName() {
		return this.navChineseName;
	}

	public void setNavChineseName(String navChineseName) {
		this.navChineseName = navChineseName;
	}

	public String getNavEnglishName() {
		return this.navEnglishName;
	}

	public void setNavEnglishName(String navEnglishName) {
		this.navEnglishName = navEnglishName;
	}

	public String getNavLink() {
		return this.navLink;
	}

	public void setNavLink(String navLink) {
		this.navLink = navLink;
	}

	public String getNavSmallImag() {
		return this.navSmallImag;
	}

	public void setNavSmallImag(String navSmallImag) {
		this.navSmallImag = navSmallImag;
	}

	public Timestamp getLastUpdateTime() {
		return this.lastUpdateTime;
	}

	public void setLastUpdateTime(Timestamp lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public Set getNavigationInfos() {
		return this.navigationInfos;
	}

	public void setNavigationInfos(Set navigationInfos) {
		this.navigationInfos = navigationInfos;
	}

	public Set getDetailInfos() {
		return this.detailInfos;
	}

	public void setDetailInfos(Set detailInfos) {
		this.detailInfos = detailInfos;
	}

}