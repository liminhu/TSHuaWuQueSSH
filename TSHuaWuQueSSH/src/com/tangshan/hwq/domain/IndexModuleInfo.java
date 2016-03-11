package com.tangshan.hwq.domain;

/**
 * IndexModuleInfo entity. @author MyEclipse Persistence Tools
 */

public class IndexModuleInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String moduleChineseName;
	private Integer seletedNum;
	private String image;
	private String imageLink;
	private String introduce;
	private String navEnglishName;

	// Constructors

	/** default constructor */
	public IndexModuleInfo() {
	}

	/** minimal constructor */
	public IndexModuleInfo(String moduleChineseName, String imageLink) {
		this.moduleChineseName = moduleChineseName;
		this.imageLink = imageLink;
	}
	
	

	public IndexModuleInfo(String moduleChineseName, String image,
			String imageLink, String introduce, String navEnglishName,
			Integer seletedNum) {
		super();
		this.moduleChineseName = moduleChineseName;
		this.image = image;
		this.imageLink = imageLink;
		this.introduce = introduce;
		this.navEnglishName = navEnglishName;
		this.seletedNum = seletedNum;
	}

	/** full constructor */
	public IndexModuleInfo(String moduleChineseName, Integer seletedNum,
			String image, String imageLink, String introduce,
			String navEnglishName) {
		this.moduleChineseName = moduleChineseName;
		this.seletedNum = seletedNum;
		this.image = image;
		this.imageLink = imageLink;
		this.introduce = introduce;
		this.navEnglishName = navEnglishName;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getModuleChineseName() {
		return this.moduleChineseName;
	}

	public void setModuleChineseName(String moduleChineseName) {
		this.moduleChineseName = moduleChineseName;
	}

	public Integer getSeletedNum() {
		return this.seletedNum;
	}

	public void setSeletedNum(Integer seletedNum) {
		this.seletedNum = seletedNum;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getImageLink() {
		return this.imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getNavEnglishName() {
		return this.navEnglishName;
	}

	public void setNavEnglishName(String navEnglishName) {
		this.navEnglishName = navEnglishName;
	}

}