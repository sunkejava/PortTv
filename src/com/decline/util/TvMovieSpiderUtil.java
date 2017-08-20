package com.decline.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;


public final class TvMovieSpiderUtil {
	public static final Map<WebSiteEnum,Map<String,String>> CONTEXT_MAP = new HashMap<>();
	static{
		init();
	}
	private TvMovieSpiderUtil(){
		
	}
	@SuppressWarnings("unchecked")
	private static void init(){
		SAXReader reader = new SAXReader();
		try {
			Document doc =reader.read(new File("C:/WebConfig/TaotuWeb/Spider-Rule.xml"));
			Element root = doc.getRootElement();
			List<Element> sites = root.elements("site");
			for(Element site : sites){
				List<Element> subs = site.elements();
				Map<String,String> subMap = new HashMap<>();
				for(Element sub : subs){
					String name = sub.getName();
					String text = sub.getTextTrim();
					subMap.put(name,text);
				}
				CONTEXT_MAP.put(WebSiteEnum.getEnumByUrl(subMap.get("url")), subMap);
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 拿到对应网站的解析规则
	 * @param novelSiteEnum
	 * @return
	 */
	public static Map<String,String> getContext(WebSiteEnum WebSiteEnum){
		return CONTEXT_MAP.get(WebSiteEnum);
	}
	
	/**
	 * 多文件合并为一个文件
	 * @param path  合并文件目录
	 * @param mergeToFile 要合并的文件
	 */
	public static void multiFileMerge(String path,String mergeToFile,boolean deleteThisFile ){
		mergeToFile = mergeToFile == null ? path+"/merge.txt" : mergeToFile;
		File[] files = new File(path).listFiles(new FilenameFilter(){

			@Override
			public boolean accept(File dir, String name) {
				return name.endsWith(".txt");
			}
			
		});
		Arrays.sort(files,new Comparator<File>(){

			@Override
			public int compare(File o1, File o2) {
				int o1Index = Integer.parseInt(o1.getName().split("\\-")[0]);
				int o2Index = Integer.parseInt(o2.getName().split("\\-")[0]);
				if(o1Index > o2Index){
					return 1;
				}else if(o1Index == o2Index){
					return 0;
				}else{
					return -1;
				}
				
			}
			
		});
		PrintWriter out = null;
		try {
			out = new PrintWriter(new File(mergeToFile),"UTF-8");
			for(File file : files){
				BufferedReader bufr = new BufferedReader(new InputStreamReader(new FileInputStream(file),"UTF-8"));
				String line = null;
				while((line= bufr.readLine()) != null){
					out.println(line);
					}
				bufr.close();
				if(deleteThisFile){
					file.delete();
				}
			}
		} catch (IOException e1) {
			throw new RuntimeException(e1);
		}finally{
			out.close();
		}
		
	}
	/**
	 * 获取小说状态
	 * @param status
	 * @return
	 */
	public static int getNovelStatus(String status){
		if(status.contains("连载")){
			return 1;
		}else if(status.contains("完结") || status.contains("完成") || status.contains("完本")){
			return 2;
		}else{
			throw new RuntimeException("没有的图书状态！【"+status+"】");
		}
	}
	/**
	 * 把一个日期字符串转换为日期对象
	 * @param dateStr
	 * @param pattern
	 * @return
	 * @throws ParseException
	 */
	public static Date getDate(String dateStr,String pattern) throws ParseException{
		if("mm-dd".equals(pattern)){
			pattern = "yyyy-mm-dd";
			dateStr = getDateField(Calendar.YEAR)+"-"+dateStr;
		}
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		Date date = sdf.parse(dateStr);
		return date;
	} 
	
	/**
	 * 获取当前时间的字符量
	 * @param field
	 * @return
	 */
	public static String getDateField(int field){
		Calendar cal = new GregorianCalendar();
		return cal.get(field)+"";
	}
}
