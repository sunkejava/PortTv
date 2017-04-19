<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/playerstyle.css">
<link rel="stylesheet" type="text/css" href="css/as2.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="dist/jquery.vm-carousel.css">
<script src="js/modernizr.js"></script>
<script type="text/javascript" src="js/offlights.js"></script>
<script type="text/javascript" src="ckplayer/ckplayer.js"
	charset="utf-8"></script>
<title>player</title>
</head>

<body id="x">
	<!-- 透明背景框 -->
	<div id="background-box" class="">
		<div id="search-bc">
			<div align="center">
				<img src="img/iqiyi.png">
			</div>
			<div class="login_fields__user">
		      <div class="icon" style="opacity: 0.5;">
		        &#xe616;
		      </div>
		      <input placeholder="请输入视频地址..." id="valueurl" name="valueurl" value="" type="text">
		        <div title="删除" class="validation">
		          &#xe6d8;
		        </div>
	      	<input id="submitbf" type="button" name="submitbf" value="播放">
	      </div>
		</div>
		<div id="willesPlay">
			<div id="movie-box">
				<div id="movieName">播放MV - 我@你
				</div>
				<div id="a1"></div>
			</div>
			<div class="TypeList">
				<div id="list-text">播放列表
				</div>
				<div id="view-text">
					<div title="文字模式" id="wzms">&#xe6c8;</div>
					<a id="view-a">显示方式</a>
					<div title="图文模式" id="twms">&#xe6c7;</div>
				</div>
				<div id="movie-List">
					<ul id="text-list">
						<li>
							<div id="texts-box" class="textList-box">向往的生活第1集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第2集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第3集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第4集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第5集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第6集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第7集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第8集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第9集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第10集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第11集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第12集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第13集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第14集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第15集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第16集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第17集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第18集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第19集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第20集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第21集</div>
						</li>
						<li>
							<div id="texts-box" class="textList-box">向往的生活第22集</div>
						</li>
					</ul>
					<ul id="tv-lists">
						<li>
							<div class="image-box">
								<a target="_blank" class="TypeBigPics"
									href="javascript:;">
									<div class="image-pic">
										<div class="pps">
											<img class="img" src="img/a1.jpg">
										</div>
										<div class="maskb"></div>
										<i class="icon-view">&#xe6ce;</i>
									</div>
								</a>
								<div class="TypePicInfos">
									<div class="textBox">
										<span class="text">向往的生活1</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="image-box">
								<a target="_blank" class="TypeBigPics"
									href="javascript:;">
									<div class="image-pic">
										<div class="pps">
											<img class="img" src="img/a1.jpg">
										</div>
										<div class="maskb"></div>
										<i class="icon-view">&#xe6ce;</i>
									</div>
								</a>
								<div class="TypePicInfos">
									<div class="textBox">
										<span class="text">向往的生活2</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="image-box">
								<a target="_blank" class="TypeBigPics"
									href="javascript:;">
									<div class="image-pic">
										<div class="pps">
											<img class="img" src="img/a1.jpg">
										</div>
										<div class="maskb"></div>
										<i class="icon-view">&#xe6ce;</i>
									</div>
								</a>
								<div class="TypePicInfos">
									<div class="textBox">
										<span class="text">向往的生活3</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="image-box">
								<a target="_blank" class="TypeBigPics"
									href="javascript:;">
									<div class="image-pic">
										<div class="pps">
											<img class="img" src="img/a1.jpg">
										</div>
										<div class="maskb"></div>
										<i class="icon-view">&#xe6ce;</i>
									</div>
								</a>
								<div class="TypePicInfos">
									<div class="textBox">
										<span class="text">向往的生活4</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="image-box">
								<a target="_blank" class="TypeBigPics"
									href="javascript:;">
									<div class="image-pic">
										<div class="pps">
											<img class="img" src="img/a1.jpg">
										</div>
										<div class="maskb"></div>
										<i class="icon-view">&#xe6ce;</i>
									</div>
								</a>
								<div class="TypePicInfos">
									<div class="textBox">
										<span class="text">向往的生活5</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="image-box">
								<a target="_blank" class="TypeBigPics"
									href="javascript:;">
									<div class="image-pic">
										<div class="pps">
											<img class="img" src="img/a1.jpg">
										</div>
										<div class="maskb"></div>
										<i class="icon-view">&#xe6ce;</i>
									</div>
								</a>
								<div class="TypePicInfos">
									<div class="textBox">
										<span class="text">向往的生活6</span>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>

		</div>
		<div id="buttom-box">
			<div id="like-box">
				<div id="like-header">
					<span>猜你喜欢</span>
					<a href="javascript:;">查看全部</a>
				</div>
				<div id="likeimage-boxs">
					<div class="col-list">
                    <ul class="video-user-list vmcarousel-normal">
                      <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">XX</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>
                        <li class="video-user-item">
                          <a class="video-user-box" href="http://www.yy.com/s/1108206729086740561" target="_blank">
                            <div class="video-user-pic">
                                <div class="video-pic">
                                    <div class="video-pic-inner">
                                       <div class="pic-default1"><img src="http://godsong.bs2dl.yy.com/djIzNzQ1Mjk0YzljYTA5Y2NmODc2MzI5ZGJhYzI1MmI5MTM5NjcxMDE5MQ_27.jpg" alt=""/></div>
									</div>
                                    <div class="op-time">毒药</div>
                                    <div class="mask"></div><i class="icon-play"></i>
                                </div>
                           </div>
                            <div class="video-user-info">
                              <p class="user-i-title">【逝去的爱】</p>
                            </div>
                          </a>
                        </li>                    
					</ul>
                  </div>
				</div>
			</div>
		</div>
	</div>
	<!-- 弹出框 -->
	<div id="alertBox">
		<div id="btop">
			<span id="message-title"></span><span id="closeBox">×</span>
		</div>
		<div>
			<h3 id="messagea"></h3>
		</div>

	</div>
	<!-- 换肤 -->
	<div id="fb">
		<div id="bgbox">
			<div id="bgtop">
				<h3>Decline影视,轻松换肤---------By sunkejava</h3>
				<span id="xbg">×</span>
			</div>
			<div id="bglist" class="bglist">
				<span class="g101 on"><p>Don't use bg skin</p> <i></i><img
					src="http://ww4.sinaimg.cn/large/b330dc26gw1egqmklb0h9j203s02kwe9.jpg" /></span>
				<span class="g102"><p>bkg01</p> <i></i><img
					src="http://ww1.sinaimg.cn/large/a24d4f55jw1fb9w739japj21hc0u0tox.jpg" /></span>
				<span class="g103"><p>bkg02</p> <i></i><img
					src="http://ww3.sinaimg.cn/large/a24d4f55jw1fb9w754yq0j21hc0u0qib.jpg" /></span>
				<span class="g104"><p>bkg03</p> <i></i><img
					src="http://ww3.sinaimg.cn/large/a24d4f55jw1fb9w72nsxaj21hc0u0qfa.jpg" /></span>
				<span class="g105"><p>bkg04</p> <i></i><img
					src="http://ww2.sinaimg.cn/large/a24d4f55jw1fb9w72234cj21hc0u0nda.jpg" /></span>
				<span class="g106"><p>bkg05</p> <i></i><img
					src="http://ww3.sinaimg.cn/large/a24d4f55jw1fb9w71db1bj21hc0u0qnl.jpg" /></span>
				<span class="g107"><p>bkg06</p> <i></i><img
					src="http://ww2.sinaimg.cn/large/a24d4f55jw1fb9w70l95kj21hc0u0kcx.jpg" /></span>
				<span class="g108"><p>bkg07</p> <i></i><img
					src="http://ww2.sinaimg.cn/large/a24d4f55jw1fb9w6zxj5zj21hc0u0k99.jpg" /></span>
				<span class="g109"><p>bkg08</p> <i></i><img
					src="http://ww3.sinaimg.cn/large/a24d4f55jw1fb9w6z6ui3j21hc0u04co.jpg" /></span>
				<span class="g110"><p>bkg09</p> <i></i><img
					src="http://ww3.sinaimg.cn/large/a24d4f55jw1fb9w6yrq99j21hc0u0n47.jpg" /></span>
				<span class="g111"><p>bkg10</p> <i></i><img
					src="http://ww2.sinaimg.cn/large/a24d4f55jw1fb9w6xx5u1j21hc0u0tiy.jpg" /></span>
				<span class="g112"><p>bkg11</p> <i></i><img
					src="http://ww2.sinaimg.cn/large/a24d4f55jw1fb9w6w2oa9j21hc0u0wu4.jpg" /></span>
				<span class="g113"><p>bkg12</p> <i></i><img
					src="http://ww2.sinaimg.cn/large/a24d4f55jw1fb9w6u4rz2j21hc0u07c5.jpg" /></span>
				<span class="g114"><p>bkg13</p> <i></i><img
					src="http://ww4.sinaimg.cn/large/a24d4f55jw1fb9w6tkp28j21hc0u0k74.jpg" /></span>
				<span class="g115"><p>bkg14</p> <i></i><img
					src="http://ww3.sinaimg.cn/large/a24d4f55jw1fb9w6sxxz1j21hc0u0h7u.jpg" /></span>
				<span class="g116"><p>bkg15</p> <i></i><img
					src="http://ww3.sinaimg.cn/large/a24d4f55jw1fb9w6bpfooj21hc0u0qly.jpg" /></span>
				<span class="g117"><p>bkg16</p> <i></i><img
					src="http://ww4.sinaimg.cn/large/a24d4f55jw1fb9w6eu0x0j21hc0u0zw9.jpg" /></span>
				<span class="g118"><p>bkg17</p> <i></i><img
					src="http://ww2.sinaimg.cn/large/a24d4f55jw1fb9w6dyynaj21hc0u0jyp.jpg" /></span>
				<span class="g119"><p>bkg18</p> <i></i><img
					src="http://ww4.sinaimg.cn/large/a24d4f55jw1fb9w69ydgoj21hc0u046c.jpg" /></span>
				<div id="upb">
					<i></i> <input id="upi" type="file" name="upi">
					<div class="dup">
						点击上传<br>或<br>直接拖曳图片进来
					</div>
					<div class="cup">双击上传</div>
					<img id="pre"
						src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="
						name="pre">
					<textarea id="tex" value=""></textarea>
				</div>
			</div>
		</div>
	</div>

	<div title="换肤" id="gs"></div>
</body>
<script type="text/javascript">
	jQuery(function($){

		  $('.vmcarousel-normal').vmcarousel({
			 centered: false,
			 start_item: 0,
			 autoplay: false,
			 infinite: false
		  });
	   });
</script>
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/player.js"></script>
<script src="dist/jquery.vm-carousel.js"></script>
</html>