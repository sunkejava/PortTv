package com.decline.util;

/**
 * ½âÎöÍøÖ·Ã¶¾Ù
 * @author Administrator
 *
 */
public enum WebSiteEnum {
	IQIYI(1,"iqiyi.com"),
	QQTV(2,"qq.com"),
	YOUKU(3,"youku.com"),
	LESHI(4,"le.com"),
	MGTV(5,"mgtv.com"),
	BILI(6,"bilibili.com"),
	AZHAN(7,"acfun.cn"),
	YINYUETAI(8,"yinyuetai.com"),
	YY(9,"yy.com"),;
	private int id;
	private String url;
	private WebSiteEnum(int id,String url){
		this.id = id;
		this.url = url;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
}
