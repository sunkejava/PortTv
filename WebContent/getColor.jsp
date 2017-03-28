<%@ page language="java" import="com.decline.util.getImageColor,java.math.BigDecimal"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String searchContext = request.getParameter("q");
	if (searchContext == "" || searchContext == null) {
		response.sendRedirect("404.jsp");
	} else {
		getImageColor a = new getImageColor();
		String imgUrl = request.getParameter("q");
		BigDecimal[] q = a.getColor(imgUrl);
		out.print("var imginfo=[{img_url:'"+imgUrl+"',img_color:'"+q[0]+","+q[1]+","+q[2]+"',font_color:'0,0,0,1'}];");
	}
%>