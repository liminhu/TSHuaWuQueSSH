package com.tangshan.hwq.view.action;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.imageio.ImageIO;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ImageUploadAction extends ActionSupport {
	private String fileName;
	private File uploadFile;
	private InputStream inputStream;
	private String oldImg;
	private String suffix;
	
	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public String getOldImg() {
		return oldImg;
	}

	public void setOldImg(String oldImg) {
		this.oldImg = oldImg;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	private String path;
	
	
	
	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	

	@Override
	public String execute() throws Exception {
		String directory = "/demo_images/detail/"+path+"/"; // 相对路径
		// 得到绝对路径 targetDirectory
		String targetDirectory = ServletActionContext.getServletContext()
				.getRealPath(directory);
		StringBuffer newName = new StringBuffer(fileName + "."+suffix);
		if (uploadFile != null && suffix!=null && oldImg != null) {
			File target = new File(targetDirectory, newName.toString());
			BufferedImage image = ImageIO.read(new FileInputStream(
						uploadFile)); // 用ImageIO将本地图片文件转换成虚拟图片信息
				ByteArrayOutputStream bos = new ByteArrayOutputStream();
				ImageIO.write(image, suffix , bos);
				byte[] retainImageData = bos.toByteArray();
				bos.close();
				FileOutputStream fos = new FileOutputStream(target);
				fos.write(retainImageData, 0, retainImageData.length);
		}
		String result="图片上传成功!;"+path+"/"+newName.toString();
		inputStream=new ByteArrayInputStream(result.getBytes("utf-8"));
		return SUCCESS;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	

	public File getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}

}
