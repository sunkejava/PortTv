<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#a1{
	position:absolute;
	z-index: 96;
	width:100%;
	height:95%;
}
</style>
<body>
	<div id="a1"></div>
<script type="text/javascript" src="ckplayer/ckplayer.js" charset="utf-8"></script>
<script type="text/javascript">
/*http://obiosoph6.bkt.clouddn.com/aqgy'*/

	var flashvars={
		f:'ckplayer/m3u8.swf',
		a:'http://obiosoph6.bkt.clouddn.com/aqgy',
		s:4,
		c:0
};
	var params={bgcolor:'#FFFF',allowFullScreen:true,allowScriptAccess:'always',wmode:'transparent'};
	var video=['http://obiosoph6.bkt.clouddn.com/aqgy->video/m3u8'];
	CKobject.embed('ckplayer/m3u8.swf','a1','ckplayer_a1','100%','100%',false,flashvars,video,params);
</script>
</body>
</html>