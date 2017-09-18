<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/details.css" />
<link rel="stylesheet" href="css/common.css" />
<title>TL美剧</title>
</head>
<body>
	<!--logo开始-->
	<div class="head-logo navbar-fixed-top">
		<div class="container">
			<div class="row">
				<div class="logo-pic">
					<a href="tlmeiju"><img src="image/logo.png"></a>
				</div>
				<div class="home-logo">
					<a href="index.jsp"><img src="image/home.png"
						style="width: 100px; height: 100px;" /></a>
				</div>

				<div class="head-right">
					<c:if test="${username==null}">
						<div class="right-top">
							<a data-toggle="modal" data-target="#loginModal">登录</a><span
								style="color: #FFF">&nbsp;&nbsp;|&nbsp;&nbsp;</span><a
								href="register.jsp" style="color: #DD6F00">注册</a>
						</div>
					</c:if>
					<c:if test="${username!=null}">
						<div class="right-top">

							<c:if test="${superuser==1}">
								<a href="action1linkType.action?typeId=10000">${username}</a>
							</c:if>
							<c:if test="${superuser==2}">
								<a href="action1linkType.action?typeId=20000">${username}</a>
							</c:if>
							<a href="user.jsp">${username}</a> <span style="color: #FFF">&nbsp;&nbsp;|&nbsp;&nbsp;</span><a
								id="exitLogin" style="color: #DD6F00">退出</a>
						</div>
					</c:if>
					<form action="search_show" method="post" name="searchfrm">
						<div class="input-group head-input">
							<div class="input-group-btn">

								<button class="btn btn-default dropdown-toggle"
									data-toggle="dropdown">
									搜索记录<span class=" caret"></span>
								</button>
								<ul class="dropdown-menu" style="text-align: left;">
									<li><a href="search_show?titleName=闪电侠">闪电侠</a></li>
									<li><a href="search_show?titleName=绿箭侠">绿箭侠</a></li>
									<li><a href="search_show?titleName=钢铁侠">钢铁侠</a></li>
								</ul>
							</div>

							<input type="text" name="titleName" class="form-control">
							<span class="input-group-btn">
								<button type="submit" class="btn btn-primary">搜索</button>
							</span>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<!--    	登录框框		-->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="border: none">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="#user" data-toggle="tab">
								用户登录 </a></li>
						<li><a href="#quickReg" data-toggle="tab">快速注册</a></li>
					</ul>
				</div>
				<div class="modal-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="user">
							<div style="width: 70%; margin: 0 auto;">
								<form class="form-horizontal" role="form"
									action="user_login.action" method="post">
									<div class="form-group" style="margin-top: 20px;">
										<label class="col-sm-3 control-label">用户名</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="username"
												name="username" placeholder="请输入用户名">
										</div>
									</div>
									<div class="form-group" style="margin-top: 30px;">
										<label class="col-sm-3 control-label">密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="password"
												name="password" placeholder="请输入密码">
										</div>
									</div>
									<div class="form-group" style="margin-top: 30px;">
										<div class="col-sm-offset-3 col-sm-3">
											<input type="hidden" name="type" value="1">
											<button id="login_btn" class="btn btn-primary">&nbsp;&nbsp;登录&nbsp;&nbsp;</button>
										</div>
										<div class="col-sm-6">
											<a href="register.jsp" class="btn btn-default">&nbsp;&nbsp;注册&nbsp;&nbsp;</a>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="tab-pane fade" id="quickReg">
							<div style="width: 70%; margin: 0 auto;">
								<form class="form-horizontal" role="form" method="post">
									<div class="form-group" style="margin-top: 20px;">
										<label class="col-sm-3 control-label">用户名</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="r_username"
												placeholder="请输入用户名" onblur="checkUser()"> <span>6-20个字符</span><br>
											<span id="msg_existUser"></span>
										</div>
									</div>
									<div class="form-group" style="margin-top: 30px;">
										<label class="col-sm-3 control-label">密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="r_password"
												placeholder="请输入密码"> <span>6-20个字符</span><br> <span
												id="msg_pass"></span>
										</div>

									</div>
									<div class="form-group" style="margin-top: 30px;">
										<label class="col-sm-3 control-label">确认密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="rr_password"
												placeholder="请再次输入密码"> <span id="msg_rpass"></span>
										</div>

									</div>
									<div class="form-group" style="margin-top: 30px;">
										<div class="col-sm-offset-3 col-sm-3">
											<input type="hidden" name="type" value="2">
											<button id="reg_btn" class="btn btn-primary">&nbsp;&nbsp;注册&nbsp;&nbsp;</button>
										</div>
										<div class="col-sm-6">
											<button type="reset" class="btn btn-default">&nbsp;&nbsp;重置&nbsp;&nbsp;</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--    	登录框框		-->
	<!--logo结束-->
	<!--导航开始-->
	<div class="navbar navbar-inverse head-nav" role="navigation">
		<div class="container">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-coll">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbar-coll">
				<ul class="nav navbar-nav">
					<li><a href="tlmeiju">首页</a></li>
					<li><a href="type_show?typeId=10000">科幻魔幻</a></li>
					<li><a href="type_show?typeId=20000">灵异惊悚</a></li>
					<li><a href="waiting.jsp">都市情感</a></li>
					<li><a href="waiting.jsp">犯罪历史</a></li>
					<li><a href="waiting.jsp">动漫卡通</a></li>
					<li><a href="waiting.jsp">选秀综艺</a></li>
					<li><a href="meiju_linkList">排行榜</a></li>
					<li><a href="meiju_linkUpdates">最近更新</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--导航结束-->

	<!--主要内容-->
	<div class="container">
		<div class="row">
			<!--	图片		-->
			<div class="col-lg-9 col-md-9" style="padding-right: 6px;">
				<div class="panel panel-primary" style="border: none;">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>${detailtitle.titleName}</strong>
						</h3>
						<div class="pull-right" style="margin-top: -20px;">
							<!-- 分享栏 -->
							<div class="bshare-custom icon-medium">
								<a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博"
									class="bshare-sinaminiblog"></a><a title="分享到人人网"
									class="bshare-renren"></a><a title="分享到腾讯微博"
									class="bshare-qqmb"></a><a title="分享到网易微博"
									class="bshare-neteasemb"></a><a title="更多平台"
									class="bshare-more bshare-more-icon more-style-addthis"></a><span
									class="BSHARE_COUNT bshare-share-count">0</span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row">

							<div class="col-lg-3 box-img">
								<a href="#"><img class="pic-list"
									src="${detailtitle.picture}"></a>
							</div>
							<!--	图片		-->
							<!-- 	简洁开始		-->
							<div class="col-lg-5">
								<div class="summary">
									<span style="color: #8B8B8B;">原名:</span><span>${detailtitle.englishName}</span><br>
									<span style="color: #8B8B8B;">导演:</span><span>${detailtitle.director}</span><br>
									<span style="color: #8B8B8B;">编剧:</span><span>${detailtitle.writer}</span><br>
									<span style="color: #8B8B8B;">主演:</span><span>${detailtitle.star}</span><br>
									<span style="color: #8B8B8B;">类型:</span><span>${detailtitle.type.typeName}</span><br>
									<span style="color: #8B8B8B;">制片国家/地区:</span><span>${detailtitle.area}</span><br>
									<span style="color: #8B8B8B;">语言:</span><span>英语</span><br>
									<span style="color: #8B8B8B;">首播:</span><span>2016-1-21</span><br>
									<span style="color: #8B8B8B;">集数:</span><span>${detailtitle.episodeNumber}</span><br>
									<span style="color: #8B8B8B;">单集片长:</span><span>${detailtitle.tvLength}</span><br>
									<span style="color: #8B8B8B;">又名:</span><span>${detailtitle.alias}</span><br>
									<span style="color: #8B8B8B;">IMDb链接:</span><span><a
										href="${detailtitle.imdb}" target="_blank" rel="nofollow">tt4532368</a></span><br>
								</div>
							</div>
							<!--		简介结束		-->
							<!--		评分			-->
							<div class="col-lg-4" style="border-left: 1px #EFEFEF solid;">
								<p class="font-bef">浩浩评分</p>
								<div style="float: left;">
									<span style="font-size: 32px;"><strong>5.6</strong></span>
								</div>
								<div style="padding-left: 60px; padding-top: 2px;">
									<img src="image/level/5.png">
									<p>1234人评价</p>
								</div>
								<!--		评分占百分比		-->
								<span class="font-bef" style="float: left;">5星</span>
								<div class="energy" style="width: 44px;"></div>
								<span class="font-bef">22%</span><br> <span
									class="font-bef" style="float: left;">4星</span>
								<div class="energy" style="width: 120px;"></div>
								<span class="font-bef">60%</span><br> <span
									class="font-bef" style="float: left;">3星</span>
								<div class="energy" style="width: 20px;"></div>
								<span class="font-bef">10%</span><br> <span
									class="font-bef" style="float: left;">2星</span>
								<div class="energy" style="width: 12px;"></div>
								<span class="font-bef">6%</span><br> <span class="font-bef"
									style="float: left;">1星</span>
								<div class="energy" style="width: 4px;"></div>
								<span class="font-bef">2%</span>
							</div>
						</div>
					</div>
				</div>


				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>剧情简介</strong>
						</h3>
					</div>
					<div class="panel-body">
						<span>&nbsp;&nbsp;&nbsp;&nbsp;${plot.plot}</span>
					</div>
				</div>

				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>下载地址</strong>
						</h3>
					</div>
					<ul class="list-group">

						<c:forEach var="item" items="${diList}">
							<li class="list-group-item"><a
								href="${item.downloadAddress}" style="color: #F00;">
									${item.titleName}&nbsp;&nbsp;${item.downloadName}</a> <a
								href="${item.downloadAddress}"
								class="btn btn-primary pull-right" style="margin-top: -7px;">迅雷下载</a></li>
						</c:forEach>

					</ul>
				</div>

				<!--		留言区		-->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>留言</strong>
						</h3>
					</div>
					<div class="panel-body" style="background: #FFF; padding-top: 0px;">
						<c:if test="${msList.rows.isEmpty()}">
							<div class="col-lg-12" style="height: 90px; text-align: center;">
								<h2 style="color: #c7c7c7;">留言区很空虚，快来留言把~~~~~</h2>
							</div>
						</c:if>
						<c:if test="${!msList.rows.isEmpty()}">
							<div id="msList">
								<c:forEach var="item" items="${msList.rows}">
									<div class="col-lg-12 col-xs-12"
										style="border-bottom: 1px #949494; margin-top: 10px; padding-bottom: 5px;">
										<div class="col-lg-1 col-xs-2" style="margin-left: -20px;">
											<a><img src="image/head/1.jpg"
												style="height: 50px; width: 50px; border-radius: 25px;"></a>
										</div>
										<div class="col-lg-11 col-xs-10">
											<p>
												<a style="color: #2fb3ff;">${item.user}</a> <span
													style="color: #c7c7c7; margin-left: 20px;"><fmt:formatDate
														value="${item.submitTime}" type="both" /></span>
											</p>
											<p>${item.content}</p>
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="col-lg-12 col-xs-12" style="text-align: center;">
								<c:forEach varStatus="i" begin="1" end="${msList.total/12+1}">
									<button onclick="msNext(${i.index})">${i.index}</button>
								</c:forEach>
							</div>
						</c:if>

						<!--	发布留言区	-->
						<div class="col-lg-12 col-xs-12">
							<h2>发布留言</h2>
							<c:if test="${username==null}">
								<form method="post" name="messagefrms">
									<div class="form-group">
										<textarea class="form-control" rows="4" name="content">请先登录</textarea>
									</div>
									<button onclick="tips();return false;"
										class="btn btn-primary pull-right" style="margin-left: 10px;">&nbsp;提&nbsp;交&nbsp;</button>
									<button type="reset" class="btn btn-default pull-right">&nbsp;清&nbsp;空&nbsp;</button>
								</form>
							</c:if>
							<c:if test="${username!=null}">
								<form method="post" name="messagefrms">
									<div class="form-group">
										<textarea class="form-control" rows="4" id="content"></textarea>
									</div>
									<input type="hidden" id="userName" value="${username}" /> <input
										type="hidden" id="titleId" value="${detailtitle.titleId}" />
									<button id="leave_btn" class="btn btn-primary pull-right"
										style="margin-left: 10px;">&nbsp;提&nbsp;交&nbsp;</button>
									<button type="reset" class="btn btn-default pull-right">&nbsp;清&nbsp;空&nbsp;</button>
								</form>
							</c:if>
						</div>
					</div>
				</div>
				<!--		留言区		-->
			</div>
			<div class="col-lg-3 col-md-3 dltimes" style="padding: 0;">
				<div class="panel panel-primary">
					<div class="panel-heading pan-head">
						<h3 class="panel-title">
							<strong>下载排行榜</strong>
						</h3>
					</div>
					<!--		排行榜列表			-->
					<ul class="list-group  badge-st">
						<c:forEach var="item" items="${diListTimes}" varStatus="i">
							<li class="list-group-item"><span class="badge"
								style="background:${color[i.index]};">${i.index+1}</span> <a
								href="detail_show?titleId=${item.titleId}">${item.titleName}</a>
								<p>${item.downloadTimes}次下载</p></li>
						</c:forEach>
					</ul>

				</div>
			</div>

		</div>
	</div>
	<div>
		<!--PC和WAP自适应版-->
		<div id="SOHUCS"></div>
		<script type="text/javascript"> 
(function(){ 
var appid = 'cytdGlyGw'; 
var conf = 'prod_5921109eee2c0bd803fed97a9707e63e'; 
var width = window.innerWidth || document.documentElement.clientWidth; 
if (width < 960) { 
window.document.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="http://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id=' + appid + '&conf=' + conf + '"><\/script>'); } else { var loadJs=function(d,a){var c=document.getElementsByTagName("head")[0]||document.head||document.documentElement;var b=document.createElement("script");b.setAttribute("type","text/javascript");b.setAttribute("charset","UTF-8");b.setAttribute("src",d);if(typeof a==="function"){if(window.attachEvent){b.onreadystatechange=function(){var e=b.readyState;if(e==="loaded"||e==="complete"){b.onreadystatechange=null;a()}}}else{b.onload=a}}c.appendChild(b)};loadJs("http://changyan.sohu.com/upload/changyan.js",function(){window.changyan.api.config({appid:appid,conf:conf})}); } })(); </script>
	</div>

	<div class="footer">
		<footer>
			<p class="pull-right">
				<a href="#top">回到顶部</a>
			</p>
			<p>&copy; 2016 浩然哥造</p>
		</footer>
	</div>
	<script src="js/jquery-1.11.1.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
	<script type="text/javascript" charset="utf-8"
		src="http://static.bshare.cn/b/bshareC0.js">
	bShare.init();
	</script>
	<script type="text/javascript">
		function tips() {
			alert("请先登录");
			return false;
		}
	</script>
	<script type="text/javascript">
		function msNext(page) {
			$
					.ajax({
						url : 'msNext',
						data : {
							"page" : page,
							"rows" : 12,
							"titleId" : $("#titleId").val()
						},
						success : function(data) {
							var ms = data.rows;
							$("#msList").empty();
							for (var i = 0; i < ms.length; i++) {
								//<!-- level-1 -->
								$div_1 = $('<div class="col-lg-12 col-xs-12" style="border-bottom: 1px #949494; margin-top: 10px; padding-bottom: 5px;"></div>');
								//<!-- level-2-1 -->
								$div_2_1 = $('<div class="col-lg-1 col-xs-2" style="margin-left: -20px;"></div>');
								//<!-- level-2-1-1 -->
								$a_2_1_1 = $('<a><img src="image/head/1.jpg" style="height: 50px; width: 50px; border-radius: 25px;"></a>');
								//<!-- level-2-2 -->
								$div_2_2 = $('<div class="col-lg-11 col-xs-10"></div>');
								//<!-- level-2-2-1 -->
								$p_2_2_1 = $('<p></p>');
								//<!-- level-2-2-1-1 -->
								$a_2_2_1_1 = $('<a style="color: #2fb3ff;">'
										+ ms[i].user + '</a>');
								//<!-- level-2-2-1-2 -->
								$span_2_2_1_2 = $('<span style="color: #c7c7c7; margin-left: 20px;"> '
										+ formatDateTime(ms[i].submitTime) + '</span>');
								/*<!-- level-2-2-2 -->*/
								$p_2_2_2 = $('<p>' + ms[i].content + '</p>');
								$div_1.append($div_2_1);
								$div_1.append($div_2_2);
								$div_2_1.append($a_2_1_1);
								$div_2_2.append($p_2_2_1);
								$div_2_2.append($p_2_2_2);
								$p_2_2_1.append($a_2_2_1_1);
								$p_2_2_1.append($span_2_2_1_2);
								$("#msList").append($div_1);
							}
						}
					})
		}
		function formatDateTime(timeStamp) {
		var day = new Date(timeStamp);
		   var Year = 0;
		   var Month = 0;
		   var Day = 0;
		   var h=0;
		   var m=0;
		   var s=0;
		var CurrentDate = "";
		   //初始化时间
		   Year       = day.getFullYear();//ie火狐下都可以
		   Month      = day.getMonth()+1;
		   Day        = day.getDate();
		   h = day.getHours(), //hour
           m = day.getMinutes(), //minute
           s = day.getSeconds(), //second
		   CurrentDate += Year + "-";		   
		    CurrentDate += Month + "-";
		    CurrentDate += Day ;
		   return CurrentDate+" "+h+":"+m+":"+s;
		};
	</script>
	<script type="text/javascript">
		$(function() {
			$("#leave_btn").click(function(){
				$.ajax({
					url:'user/leaveMsg',
		        	type:'POST',
					data:{
						"user":$("#userName").val(),
						"titleId":$("#titleId").val(),
						"content":$("#content").val()
					},
					success:function(data){
						if(data=="success"){
							location.reload(false);
							return false;
						}
						if(data=="error"){
							alert("留言失败！");
							return false;
						}
					}
				})
			})
			$("#login_btn").click(function() {
				var username = $("#username").val();
				var password = $("#password").val();
				if (username == null || username == "")
					alert('请输入账号！！');
				else if (password == null || password == "")
					alert('请输入密码！！');
				else {
					$.ajax({
						url : 'user/login',
						data : {
							"username" : username,
							"password" : password
						},
						type : 'POST',
						success : function(data) {
							if (data == "success") {
								location.reload(false);
							} else if (data == "error")
								alert('账号或者密码错误，请重新登录！');
						},
						error : function(data) {
							alert('账号或者密码错误，请重新登录！');
						}
					});
				}
				return false;
			})
			$("#exitLogin").click(function() {
				$.ajax({
					url : 'user/exitLogin',
					success : function() {
						location.reload(false);
					}
				})
			})
			$("#reg_btn").click(function() {
				if ($("#r_username").val() == "") {
					$("#msg_existUser").css("color", "red");
					$("#msg_existUser").html("请填写用户名");
					return false;
				}
				if ($("#r_password").val() == "") {
					$("#msg_pass").css("color", "red");
					$("#msg_pass").html("请填写密码");
					return false;
				}
				if ($("#rr_password").val() != $("#r_password").val()) {
					$("#msg_rpass").css("color", "red");
					$("#msg_rpass").html("两次密码不一致");
					return false;
				}
				$.ajax({
					url : 'user/register',
					type : 'POST',
					data : {
						"username" : $("#r_username").val(),
						"password" : $("#rr_password").val()
					},
					success : function(mes) {
						reg_return(mes);
					}
				});
				return false;
			})
		})
		function checkUser() {
			$.ajax({
				url : 'user/reg/checkUser',
				data : {
					"username" : $("#r_username").val()
				},
				type : 'POST',
				success : function(mes) {
					reg_return(mes);
				},
				error : function() {
					alert("服务器异常，为了您的人身安全，请马上离开！");
				}
			})
		}
		function reg_return(mes) {
			if (mes == "pass_illegal") {
				alert("密码不符合规则，请重新输入");
				return false;
			}
			if (mes == "exist") {
				$("#msg_existUser").css("color", "red");
				$("#msg_existUser").html("该用户名已经存在！");
				return false;
			}
			if (mes == "toLong") {
				$("#msg_existUser").css("color", "red");
				$("#msg_existUser").html("非法用户名，长度过长！");
				return false;
			}
			if (mes == "toShort") {
				$("#msg_existUser").css("color", "red");
				$("#msg_existUser").html("非法用户名，长度太短！");
				return false;
			}
			if (mes == "ok") {
				$("#msg_existUser").css("color", "blue");
				$("#msg_existUser").html("该用户名合法");
				return false;
			}
			if (mes == "reg_success") {
				alert("注册成功");
				location.reload(false);
				return false;
			}
			if (mes == "error") {
				alert("注册失败");
				return false;
			}
		}
	</script>
</body>
</html>
