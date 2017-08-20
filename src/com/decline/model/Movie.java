package com.decline.model;
/**
 * 电影模板类型
 * @author Administrator
 *
 */
public class Movie {
	private String url;//电影地址
	private String info;//电影信息
	private String imgUrl;//海报
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	
	
}
