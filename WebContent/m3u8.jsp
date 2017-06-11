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
		a:'http://cloud.line.one.onlineplayerhls.com:8181/movie-hls/160730/bdyjy94/index.m3u8',
		s:4,
		c:0
};
	var params={bgcolor:'#FFFF',allowFullScreen:true,allowScriptAccess:'always',wmode:'transparent'};
	var video=['http://cloud.line.one.onlineplayerhls.com:8181/movie-hls/160730/bdyjy94/index.m3u8->video/m3u8'];
	CKobject.embed('ckplayer/ckplayer.swf','a1','ckplayer_a1','100%','100%',false,flashvars,video,params);
</script>
</body>
</html>