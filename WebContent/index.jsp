<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高清视频在线免费观看</title>
<link rel="stylesheet" type="text/css" href="css/default.css">
	<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/styles.css">
	<script>
		function show(){
         var random_bg=parseInt(Math.random()*25);
         var bg='url(img/bg-'+random_bg+'.jpg)';
         $("body").css("background-image",bg,"width:","100%");
		 }
	</script>
</head>
<body onload = "show()">
<div class = "tbox">
	<div class='login'>
		<div align="center">
			<img src="img/iqiyi.png" />
		</div>
	  <div class='login_title'>
	  </div>
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img src='img/user_icon_copy.png'>
	      </div>
	      <input placeholder='视频地址...' id="valueurl" name="valueurl" value="" type='text'>
	        <div class='validation'>
	          <img src='img/tick.png'>
	        </div>
	      </input>
	    </div>
	    <div class='login_fields__submit'>
	      <input type='button' name="submitbf" value='播放'>
	      <div class='forgot'>
	        <a href='http://www.sunkejava.com' id="auth">sunkejava</a>
	      </div>
	    </div>
	  </div>
	  <div class='success'>
		<iframe style="width:640px; height:504px;" name="iframe0" id="vipurl" src="" frameborder="0" data-id="" seamless></iframe>
	  </div>
	  <div class='disclaimer'>
	    <p>视频在线解析<br></p>
		<p>目前支持：爱奇艺、优酷、乐视视频等官网的VIP视频！</p>
	  </div>
	</div>
	<div class='authent'>
	  <img src='img/puff.svg'>
	  <p>认证中...</p>
	</div>
	</div>
	<script type="text/javascript" src='js/stopExecutionOnTimeout.js?t=1'></script>
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script>
	$('input[type="button"]')['click'](function () {$('.login')['css']('padding','100px 700px 150px 40px');
	$('.success')['css']('margin-left','-170px');
	setTimeout(function () {$('.authent')['show']()['animate']({ right: -320 }, 
	{easing: 'easeOutQuint',duration: 600,queue: false	    });	
	$('.authent')['animate']({ opacity: 1 }, {duration: 200,queue: false})['addClass']('visible');}, 500);
	setTimeout(function () {$('.authent')['show']()['animate']({ right: 90 }, {easing: 'easeOutQuint',duration: 600,
	queue: false	 });$('.authent')['animate']({ opacity: 0 }, {duration: 200,queue: false})['addClass']('visible');
	$('.login')['removeClass']('testtwo');	    }, 2500);setTimeout(function () {
	$('.success')['fadeIn']();}, 3200);var bfqAtkgI1 = window['document']['getElementById']('valueurl')['value'];
	window['document']['getElementById']('vipurl')['src'] = 'https://v.cao.me/?url=' + bfqAtkgI1;});	
	$('input[type="text"],input[type="password"]')['focus'](function () {	    
	$(this)['prev']()['animate']({ 'opacity': '1' }, 200);	});	
	$('input[type="text"],input[type="password"]')['blur'](function () {	    
	$(this)['prev']()['animate']({ 'opacity': '.5' }, 200);	});	
	$('input[type="text"],input[type="password"]')['keyup'](function () {	    
	if (!$(this)['val']() == '') {	        
	$(this)['next']()['animate']({	            'opacity': '1',	            'right': '30'	        }, 200);} 
	else {	        
	$(this)['next']()['animate']({	            'opacity': '0',	            'right': '20'	        }, 200);	    }	});	
	var PYDt2 = 0;	
	$('.tab')['click'](function () {	    
	$(this)['fadeOut'](200, function () {	        
	$(this)['parent']()['animate']({ 'left': '0' });	    });	});
	</script>
</body>
</html>