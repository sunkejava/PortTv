$(document).ready(function(){
	var wHeight=document.documentElement.clientHeight;
	$("#background-box").css({height:wHeight});
});
function W(b){
	var a,d=b+"=",c=document.cookie.split(";");
	for(b=0;b<c.length;b++){
		for(a=c[b];" "==a.charAt(0);)a=a.substring(1,a.length);
		if(0==a.indexOf(d))return a.substring(d.length,a.length)
		}
}
function yp(){
	for(var b=navigator.userAgent,
			a="Android;iPhone;SymbianOS;Windows Phone;iPad;iPod".split(";"),
			d=!1,c=0;c<a.length;c++)
		if(0<b.indexOf(a[c])){
			d=!0;
			break
			}
		return d
	}
function c() {
    function b(c, h) {
        return e.push(c + " ") > G.cacheLength && delete b[e.shift()], b[c + " "] = h
    }
    var e = [];
    return b
}
	var r8 = -1 != navigator.userAgent.toLowerCase().search(/(msie\s|trident.*rv:)([\w.]+)/),
		l86 = $("#bgbox"),
		l87 = $("#bgtop"),
		ua = c(),
		Ia = document.getElementById("pre"),
        La = $("#bglist"),
        bk = $("#background-box"),
        Cb = $("#upi"),
        I = $("#x")
    l87.on("mousedown", function(c) {
        var g = document.getElementById("bgbox"),
            k = c.clientX - g.offsetLeft - 283,
            m = c.clientY - g.offsetTop - 158;
        	
        document.onmousemove = function(c) {
            c = c || window.event;
            l86.css({
                left: c.clientX - k + "px",
                top: c.clientY - m + "px"
            })
        }
    });
    l87.on("mouseup", function(c) {
    	var g = document.getElementById("bgbox"),
        k = c.clientX - g.offsetLeft - 283,
        m = c.clientY - g.offsetTop - 158;
    document.onmousemove = function(c) {

    }
    });
    La.on("click", "span", function() {
        var c = this.className,
            g = $(this),
            k = "b" + c;
        La.find("span").removeClass("on");
        g.addClass("on");
        I.removeClass("bg101 bg102 bg103 bg104 bg105 bg106 bg107 bg108 bg109 bg110 bg111 bg112 bg113 bg114 bg115 bg116 bg117 bg118 bg119").addClass(k);
        I.css("background-image", "aliceblue");
        bk.removeClass("bg101 bg102 bg103 bg104 bg105 bg106 bg107 bg108 bg109 bg110 bg111 bg112 bg113 bg114 bg115 bg116 bg117 bg118 bg119").addClass(k);
        //get imgsrc
        ge(getImgSrc(c));
        r8 || yp() || localStorage.removeItem("i");
    });
$("#gs,#xbg").on("click", function() {
        "gs" == this.id ? l86.slideDown() : l86.slideUp()
    });
Cb.change(function(c) {
    c = document.getElementById("upi");
    var g = c.value.substring(c.value.lastIndexOf(".") + 1).toLowerCase();
    if ("png" != g && "jpg" != g && "jpeg" != g && "gif" != g && "bmp" != g && "ico" != g) 
    	alertBox("温馨提示：","只能上传图片[.png.jpg.jpeg.gif.bmp.ico格式]");
    else if (r8) c.select(), 
    c = document.selection.createRange().text, r10 ? 
    	(Ia.src = c, res.innerHTML = c, I.css("background-image", "url(" + ua.innerHTML + ")"), 
    			I.removeClass("bg101"), Sa("bu", ua.innerHTML, 30), Sa("bg", y6, 0), 
    			Va.addClass("on"), La.find("span").removeClass("on")) : 
    				(Ia.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale',src=\"" + c + '")', 
    						Ia.src = "data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==", 
    						ua.innerHTML = c, I.css("background-image", "url(" + ua.innerHTML + ")"), 
    						Sa("bu", ua.innerHTML, 30), Sa("bg", y6, 0), Va.addClass("on"), 
    						La.find("span").removeClass("on"), I.removeClass("bg101"));
    	
    else {
        c = c.files[0];
        g = new FileReader;
        g.readAsDataURL(c);
        g.onload = function(c) {
            ua.innerHTML = this.result;
            Ia.src = this.result;
            I.css("background-image", "url(" + ua.innerHTML + ")");
            !yp() && localStorage.setItem("i", ua.innerHTML);
            La.find("span").removeClass("on");
            I.removeClass("bg101")
            ge(getImgSrc(c));
        }
    }
    
});
function ge(s) {
    $.ajax({
        url: "http://localhost:8080/PortTv/getColor.jsp?q=" + s,
        type: "GET",
        dataType: "script",
        success: function() {
            playercolor(imginfo);
        },
        error: function() {
            playercolor(imginfo)
        }
    })
};
function playercolor(imginfo) {
	bk.css({
        background: "rgba(" + imginfo[0].img_color + ",.75)"
    });
	l86.css({
        background: "rgba(" + imginfo[0].img_color + ",.9)"
    });
	params.bgcolor="rgba(" + imginfo[0].img_color + ",.85)";
	$("#alertBox").css({
		background: "rgba(" + imginfo[0].img_color + ",.9)"
	});
	$(".image-box").css({
		background: "rgba(210," + imginfo[0].img_color + ")"
	});
	$(".text").css({
		color: "rgba(110,"+imginfo[0].img_color + ")"
	});
	$("#willesPlay").css("box-shadow","1px 1px 15px 10px rgba(123," + imginfo[0].img_color + ")");
}
function getImgSrc(g){
	var p=$('.'+g);
	return p.find("img").attr("src");
}
$('input[type="text"],input[type="password"]')['keyup'](function() {
    if (!$(this)['val']() == '') {
        $(this)['next']()['animate']({
            'opacity': '1',
            'right': '25%'
        }, 200);
    } else {
        $(this)['next']()['animate']({
            'opacity': '0',
            'right': '25%'
        }, 200);
    }
});

//player
var flashvars={
		f:'http://hd.yinyuetai.com/uploads/videos/common/0E050154B736412955C19ADEF4DDD635.flv?sc\u003d2d50738ba1cc4d97\u0026br\u003d1096\u0026vid\u003d2571488\u0026aid\u003d25339\u0026area\u003dKR\u0026vst\u003d0',//视频地址
		a:'',//调用时的参数，只有当s>0的时候有效
		s:'0',//调用方式，0=普通方法（f=视频地址），1=网址形式,2=xml形式，3=swf形式(s>0时f=网址，配合a来完成对地址的组装)
		c:'0',//是否读取文本配置,0不是，1是
		x:'',//调用配置文件路径，只有在c=1时使用。默认为空调用的是ckplayer.xml
		i:'http://img2.c.yinyuetai.com/others/admin/170327/0/e97fad13115c190dd2e63cd82a9e92ce_0x0.jpg',//初始图片地址
		d:'',//暂停时播放的广告，swf/图片,多个用竖线隔开，图片要加链接地址，没有的时候留空就行
		u:'',//暂停时如果是图片的话，加个链接地址
		l:'',//前置广告，swf/图片/视频，多个用竖线隔开，图片和视频要加链接地址
		r:'',//前置广告的链接地址，多个用竖线隔开，没有的留空
		t:'10|10',//视频开始前播放swf/图片时的时间，多个用竖线隔开
		y:'',//这里是使用网址形式调用广告地址时使用，前提是要设置l的值为空
		z:'',//缓冲广告，只能放一个，swf格式
		e:'3',//视频结束后的动作，0是调用js函数，1是循环播放，2是暂停播放并且不调用广告，3是调用视频推荐列表的插件，4是清除视频流并调用js功能和1差不多，5是暂停播放并且调用暂停广告
		v:'50',//默认音量，0-100之间
		p:'0',//视频默认0是暂停，1是播放，2是不加载视频
		h:'0',//播放http视频流时采用何种拖动方法，=0不使用任意拖动，=1是使用按关键帧，=2是按时间点，=3是自动判断按什么(如果视频格式是.mp4就按关键帧，.flv就按关键时间)，=4也是自动判断(只要包含字符mp4就按mp4来，只要包含字符flv就按flv来)
		q:'',//视频流拖动时参考函数，默认是start
		m:'',//让该参数为一个链接地址时，单击播放器将跳转到该地址
		o:'',//当p=2时，可以设置视频的时间，单位，秒
		w:'',//当p=2时，可以设置视频的总字节数
		g:'',//视频直接g秒开始播放
		j:'',//跳过片尾功能，j>0则从播放多少时间后跳到结束，<0则总总时间-该值的绝对值时跳到结束
		k:'30|60',//提示点时间，如 30|60鼠标经过进度栏30秒，60秒会提示n指定的相应的文字
		n:'这是提示点的功能，如果不需要删除k和n的值|提示点测试60秒',//提示点文字，跟k配合使用，如 提示点1|提示点2
		wh:'1080:720',//宽高比，可以自己定义视频的宽高或宽高比如：wh:'4:3',或wh:'1080:720'
		lv:'0',//是否是直播流，=1则锁定进度栏
		loaded:'loadedHandler',//当播放器加载完成后发送该js函数loaded
		//调用播放器的所有参数列表结束
		//以下为自定义的播放器参数用来在插件里引用的
		my_url:encodeURIComponent(window.location.href),//本页面地址
		my_title:encodeURIComponent(document.title),
		my_pic:'http://img2.c.yinyuetai.com/others/admin/170327/0/e97fad13115c190dd2e63cd82a9e92ce_0x0.jpg'
		//调用自定义播放器参数结束
		};
	var params={bgcolor:'rgba(93, 139, 151, 0.74902)',allowFullScreen:true,allowScriptAccess:'always'};//这里定义播放器的其它参数如背景色（跟flashvars中的b不同），是否支持全屏，是否支持交互
	var video=['http://hd.yinyuetai.com/uploads/videos/common/0E050154B736412955C19ADEF4DDD635.flv?sc\u003d2d50738ba1cc4d97\u0026br\u003d1096\u0026vid\u003d2571488\u0026aid\u003d25339\u0026area\u003dKR\u0026vst\u003d0->video/mp4'];
	CKobject.embed('ckplayer/ckplayer.swf','a1','ckplayer_a1','100%','100%',false,flashvars,video,params);

	//开关灯
	var box = new LightBox();
	function closelights(){//关灯
		box.Show();
		CKobject._K_('a1').style.width='100%';
		CKobject._K_('a1').style.height='100%';
		CKobject.getObjectById('ckplayer_a1').width='100%';
		CKobject.getObjectById('ckplayer_a1').height='100%';
	}
	function openlights(){//开灯
		box.Close();
		CKobject._K_('a1').style.width='100%';
		CKobject._K_('a1').style.height='100%';
		CKobject.getObjectById('ckplayer_a1').width='100%';
		CKobject.getObjectById('ckplayer_a1').height='100%';
	}
	function alertBox(chara,charb){
		var abox=$("#alertBox");
		//获取页面的高度和宽度
		var sWidth=document.body.scrollWidth;
		var sHeight=document.body.scrollHeight;
		
		//获取页面的可视区域高度和宽度
		var wHeight=document.documentElement.clientHeight;
		
		//插入需要的内容
		
		//获取弹出框的宽和高
		var dHeight=abox.offsetHeight;
		var dWidth=abox.offsetWidth;
			//设置弹出框的left和top
		abox.css("left",sWidth/2-dWidth/2+"px");
		abox.css("top",wHeight/2-dHeight/2+"px");
		
		$("#message-title").html(chara);
		$("#messagea").html(charb);
		abox.slideToggle();
	}
	
	$("#closeBox").on("click", function() {
		$("#alertBox").slideToggle();
    });
	$("#btop").on("mousedown", function(c) {
        var g = document.getElementById("alertBox"),
            k = c.clientX - g.offsetLeft,
            m = c.clientY - g.offsetTop;
        	
        document.onmousemove = function(c) {
            c = c || window.event;
            $("#alertBox").css({
                left: c.clientX - k + "px",
                top: c.clientY - m + "px"
            })
        }
    });
    $("#btop").on("mouseup", function(c) {
    	var g = document.getElementById("alertBox"),
        k = c.clientX - g.offsetLeft,
        m = c.clientY - g.offsetTop;
    document.onmousemove = function(c) {

    }
    });
    $("#wzms").on("click",function(){
    	$("#tv-lists").css({display:"none"});
    	$("#text-list").css({display:"block"});
    });
    $("#twms").on("click",function(){
    	$("#tv-lists").css({display:"block"});
    	$("#text-list").css({display:"none"});
    });
    
    $(".validation").on("click",function(){
    	$("#valueurl").val("");
    	$('input[type="text"]')['next']()['animate']({
            'opacity': '0',
            'right': '25%'
        }, 200);
    });
    $(".TypeBigPics").on("click",function(){
    	eachReplace("tv-lists");
    	$(this).attr("class","typeBigPicsOn");
    	$(".typeBigPicsOn").parent().attr("class","on-select");
    	$(".typeBigPicsOn").next().children().attr("class","textBoxs");
    	$(".typeBigPicsOn").next().children().children().attr("class","texts");
    	$(".textBoxs").css("background","#1296DB");
    	$(".texts").text("正在播放："+$(".texts").text());
    });	
    function eachReplace(ps){
    	$("#"+ps).each(function(){
    		$("li").each(function(){
    			$(this).children().attr("class","image-box");
    			$(this).children().children().first().attr("class","TypeBigPics");
    			$(this).children().children().last().attr("class","TypePicInfos");
    			$(this).children().children().next().children().attr("class","textBox");
    			$(this).children().children().next().children().children().attr("class","text");
    			$(this).children().children().next().children().css({background:""});
    			$(this).children().children().next().children().children().text($(this).children().children().next().children().children().text().replace("正在播放：",""));
    		});
    	});
    }
    