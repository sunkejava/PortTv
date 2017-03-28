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
        bk.css("background","rgba(255, 135, 255, 0.7)");
        r8 || yp() || localStorage.removeItem("i");
    });
$("#gs,#xbg").on("click", function() {
        "gs" == this.id ? l86.slideDown() : l86.slideUp()
    });
Cb.change(function(c) {
    c = document.getElementById("upi");
    var g = c.value.substring(c.value.lastIndexOf(".") + 1).toLowerCase();
    if ("png" != g && "jpg" != g && "jpeg" != g && "gif" != g && "bmp" != g && "ico" != g) t = "只能上传图片[.png.jpg.jpeg.gif.bmp.ico格式]", '';
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
        }
    }
});


