package com.decline.util;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import com.decline.util.WebSiteEnum;


public abstract class AbstractSpider {
	/**
	 * 通过一个url获取该网页的内容
	 * @param url
	 * @return
	 * @throws Exception
	 */
	protected String crawl(String url) throws Exception {
		try (CloseableHttpClient httpClient = HttpClientBuilder.create().build();
			 CloseableHttpResponse httpResponse = httpClient.execute(new TvMovieSpiderHttpGet(url))) {
			String result = EntityUtils.toString(httpResponse.getEntity(),TvMovieSpiderUtil.getContext(WebSiteEnum.getEnumByUrl(url)).get("charset"));
			return result;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
