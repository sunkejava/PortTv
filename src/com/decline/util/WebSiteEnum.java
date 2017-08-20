package com.decline.util;


/**
 * 解析网址枚举
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
	
	public static WebSiteEnum getEnumByUrl(String url){
		for(WebSiteEnum WebSiteEnum: values()){
			if(url.contains(WebSiteEnum.url)){
				return WebSiteEnum;
			}
		}
		throw new RuntimeException("url为"+url+"的网站尚未支持！！！");
	}
	
}
