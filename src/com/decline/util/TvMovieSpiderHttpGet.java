package com.decline.util;

import java.net.URI;

import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpGet;

public class TvMovieSpiderHttpGet extends HttpGet {

	public TvMovieSpiderHttpGet() {
	}

	public TvMovieSpiderHttpGet(URI uri) {
		super(uri);
	}

	public TvMovieSpiderHttpGet(String uri) {
		super(uri);
		setDefaultConfig();
	}
	
	
	private void setDefaultConfig(){
		this.setConfig(RequestConfig.custom()
				.setSocketTimeout(1000*60*5)
				.setMaxRedirects(1000*60*5)
				.setConnectTimeout(1000*60*10)
				.setConnectionRequestTimeout(1000*60*5).build());
		this.setHeader("User-Agent","NovelSpider");
	}

}
