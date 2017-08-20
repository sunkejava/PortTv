package com.decline.model;
/**
 * 电视剧模板类型
 * @author Administrator
 *
 */
public class TVPlay {
	private String url; //电视剧集地址
	private String urls; // 电视剧每集地址集合
	private String imgUrl; // 海报图片
	private String info; //电视剧简介
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUrls() {
		return urls;
	}
	public void setUrls(String urls) {
		this.urls = urls;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
	
}
