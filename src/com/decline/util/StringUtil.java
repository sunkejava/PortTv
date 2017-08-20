package com.decline.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;



public class StringUtil {
	/**
	 * 判断字符串是负为空
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str){
		if(str == null || "".equals(str.trim())){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 判断字符串是否不是空
	 * @param str
	 * @return
	 */
	public static boolean isNotEmpty(String str){
		if(str != null && !"".equals(str.trim())){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 取文本左边
	 * @param str
	 * @param leftstr
	 * @return
	 */
	public static String leftString(String str,String leftstr ){
		String lstr = null;
		//返回左边文本的第一个字符位置
		int endInt = str.indexOf(leftstr);
		lstr = str.substring(0, endInt);
		return lstr;
	}
	/**
	 * 取文本右边
	 * @param str
	 * @param rightstr
	 * @return
	 */
	public static String rightString(String str,String rightstr ){
		String rstr = null;
		//返回右边文本的最后一个字符位置
		int beginInt = str.lastIndexOf(rightstr)+rightstr.length();
		rstr = str.substring(beginInt);
		return rstr;
	}
	/**
	 * 取文本中间
	 * @param str
	 * @param leftstr
	 * @param rightstr
	 * @return
	 */
	public static String betweenSting(String str,String leftstr,String rightstr ){
		String bstr = null;
		//返回左边文本的最后一个字符位置
		int beginInt = str.lastIndexOf(leftstr)+leftstr.length();
		//返回右边文本地第一个位置
		int endInt = str.indexOf(rightstr);
		bstr = str.substring(beginInt,endInt);
		return bstr;
	}
	
	/**
	 * 传入日期格式获取String类型的日期
	 * @param dateFormat 例如：“yyyy-MM-dd”
	 * @return 返回值为String  例如："2016-12-10"
	 */
	public static String getNowTime(String dateFormat){
		Date date = new Date();
		long time = date.getTime();
		SimpleDateFormat format = new SimpleDateFormat(dateFormat);
		String result = format.format(time);
		return result;
	}
	
	 public static String toMD5(String plainText) throws NoSuchAlgorithmException {
	     String result; 
	        //生成实现指定摘要算法的 MessageDigest 对象。
	        MessageDigest md = MessageDigest.getInstance("MD5");  
	        //使用指定的字节数组更新摘要。
	        md.update(plainText.getBytes());
	        //通过执行诸如填充之类的最终操作完成哈希计算。
	        byte b[] = md.digest();
	        //生成具体的md5密码到buf数组
	        int i;
	        StringBuffer buf = new StringBuffer("");
	        for (int offset = 0; offset < b.length; offset++) {
	          i = b[offset];
	          if (i < 0)
	            i += 256;
	          if (i < 16)
	            buf.append("0");
	          buf.append(Integer.toHexString(i));
	        }
	        result = buf.toString();
	        //System.out.println("32位: " + buf.toString());// 32位的加密
	        //System.out.println("16位: " + buf.toString().substring(8, 24));// 16位的加密，其实就是32位加密后的截取 
	        return result.toUpperCase();
	   }
	 private static char[] base64EncodeChars = new char[] { 'A', 'B', 'C', 'D',  
	            'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q',  
	            'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd',  
	            'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q',  
	            'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3',  
	            '4', '5', '6', '7', '8', '9', '+', '/', };  
	      
	    private static byte[] base64DecodeChars = new byte[] { -1, -1, -1, -1, -1,  
	            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  
	            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  
	            -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59,  
	            60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,  
	            10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1,  
	            -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37,  
	            38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1,  
	            -1, -1 };  
	      
	    /** 
	     * 解密 
	     * @param str 
	     * @return 
	     */  
	    public static byte[] decode(String str) {  
	        byte[] data = str.getBytes();  
	        int len = data.length;  
	        ByteArrayOutputStream buf = new ByteArrayOutputStream(len);  
	        int i = 0;  
	        int b1, b2, b3, b4;  
	      
	        while (i < len) {  
	            do {  
	                b1 = base64DecodeChars[data[i++]];  
	            } while (i < len && b1 == -1);  
	            if (b1 == -1) {  
	                break;  
	            }  
	      
	            do {  
	                b2 = base64DecodeChars[data[i++]];  
	            } while (i < len && b2 == -1);  
	            if (b2 == -1) {  
	                break;  
	            }  
	            buf.write((int) ((b1 << 2) | ((b2 & 0x30) >>> 4)));  
	      
	            do {  
	                b3 = data[i++];  
	                if (b3 == 61) {  
	                    return buf.toByteArray();  
	                }  
	                b3 = base64DecodeChars[b3];  
	            } while (i < len && b3 == -1);  
	            if (b3 == -1) {  
	                break;  
	            }  
	            buf.write((int) (((b2 & 0x0f) << 4) | ((b3 & 0x3c) >>> 2)));  
	      
	            do {  
	                b4 = data[i++];  
	                if (b4 == 61) {  
	                    return buf.toByteArray();  
	                }  
	                b4 = base64DecodeChars[b4];  
	            } while (i < len && b4 == -1);  
	            if (b4 == -1) {  
	                break;  
	            }  
	            buf.write((int) (((b3 & 0x03) << 6) | b4));  
	        }  
	        return buf.toByteArray();  
	    }
	    
	    /** 
	     * Base64编码 
	     * @param bstr 
	     * @return String 
	     */  
	    public static String Base64encode(String bstr){  
	    return new sun.misc.BASE64Encoder().encode(bstr.getBytes());  
	    }
	  
	    /** 
	     * Base64解码 
	     * @param str 
	     * @return string 
	     */  
	    public static byte[] Base64decode(String str){  
	    byte[] bt = null;  
	    try {  
	        sun.misc.BASE64Decoder decoder = new sun.misc.BASE64Decoder();  
	        bt = decoder.decodeBuffer( str );  
	    } catch (IOException e) {  
	        e.printStackTrace();  
	    }  
	  
	        return bt;  
	    }
	    public static String[] concat(String[] a, String[] b) {
	    	   String[] c= new String[a.length+b.length];
	    	   System.arraycopy(a, 0, c, 0, a.length);
	    	   System.arraycopy(b, 0, c, a.length, b.length);
	    	   return c;
	    	}
	    public static void main(String[] args) throws NoSuchAlgorithmException {
			System.out.println(toMD5("http://www.disi8.com/disi/1669.html"));
			System.out.println(Base64encode("http://www.disi8.com/disi/1669.html"));
			System.out.println(new String(Base64decode(Base64encode("http://www.disi8.com/disi/1669.html"))));
	    }
}
