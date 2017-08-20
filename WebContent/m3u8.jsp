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
/* https://cdn2-l3-cdn.xvideos.com/0c8b045a78d4ba126c33ed7d6d9a829a5bae2be0-1498975744/videos/hls/c0/28/b3/c028b33742f4cb7f4db7c311b19e2a35/hls.m3u8
 */	
 	var flashvars={
		f:'ckplayer/m3u8.swf',
		a:'http://cdn-hw-hls.xvideos.com/videos/hls/55/a3/4c/55a34ca08c8877f9d6fd2e9d555f1854/hls.m3u8?e=1498976967&l=0&h=87b061bf30fdcaff550d2d61adb1165f',
		s:4,
		c:0
};
	var params={bgcolor:'#FFFF',allowFullScreen:true,allowScriptAccess:'always',wmode:'transparent'};
	var video=['http://kkn.cdn-youku.com/2017/88439/hls/index.m3u8->video/m3u8'];
	CKobject.embed('ckplayer/ckplayer.swf','a1','ckplayer_a1','100%','100%',false,flashvars,video,params);
</script>
</body>
</html>