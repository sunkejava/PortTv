package com.decline.util;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.net.MalformedURLException;
import java.net.URL;

import javax.imageio.ImageIO;

public class getImageColor {

	public static void main(String[] args) {
		BigDecimal[] s = getColor("http://ww4.sinaimg.cn/large/b330dc26gw1egqmklb0h9j203s02kwe9.jpg");
		System.out.println("R:"+s[0]+",G:"+s[1]+",B:"+s[2]);
	}
	public static BigDecimal[] getColor(String imageUrl){
		BigDecimal[] a = new BigDecimal[3];
		//String result = "";
		try {
			InputStream ins = new URL(imageUrl).openStream();
			BufferedImage bufimg = ImageIO.read(ins);
			int rColorNum = 0;
			int gColorNum = 0;
			int bColorNum = 0;
			int total = 0;
			for(int x= 50;x<bufimg.getWidth()-50;x++){
				for(int y = 50;y<bufimg.getHeight()-50;y++){
					int imgColors = bufimg.getRGB(x, y);
					int r = (imgColors >> 16) & 0xFF;  
                	int g = (imgColors >> 8) & 0xFF;  
                	int b = (imgColors & 0xFF);
                	rColorNum+=r;
                	gColorNum+=g;
                	bColorNum+=b;
                	total++;
				}
			}
			a[0] = new BigDecimal(rColorNum / total).setScale(0, BigDecimal.ROUND_HALF_UP);
			a[1] = new BigDecimal(gColorNum / total).setScale(0, BigDecimal.ROUND_HALF_UP);
			a[2] = new BigDecimal(bColorNum / total).setScale(0, BigDecimal.ROUND_HALF_UP);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return a;
	}
}