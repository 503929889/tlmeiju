<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/master.css" />
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
					<a href="tlmeiju"><img src="image/home.png"
						style="width: 100px; height: 100px;" /></a>
				</div>

				<div class="head-right">
					<c:if test="${username==null}">
						<div class="right-top">
							<a data-toggle="modal" data-target="#loginModal">登录</a><span
								style="color: #FFF">&nbsp;&nbsp;|&nbsp;&nbsp;</span><a
								data-toggle="modal" data-target="#registerModal">注册</a>
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
	<!--    	注册框框		-->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="border: none">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h1>快速注册</h1>
				</div>
				<div class="modal-body">
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
	<!--    	注册框框		-->
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
	<!--轮播开始-->
	<div class="container carousel-lb">
		<div id="head-car" class="carousel slide" data-interval="1900"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#head-car" data-slide-to="0" class="active"></li>
				<li data-target="#head-car" data-slide-to="1"></li>
				<li data-target="#head-car" data-slide-to="2"></li>
				<li data-target="#head-car" data-slide-to="3"></li>
				<li data-target="#head-car" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner">
				<c:forEach var="item" items="${chList}" varStatus="i">
					<c:if test="${i.index==0}">
						<div class="item active">
							<a href="detail_show?titleId=${item.titleId}" target="_blank"><img
								src="${item.picture}"></a>
							<div class="carousel-caption">
								<a href="detail_show?titleId=${item.titleId}" target="_blank"><h1>${item.titleName}</h1></a>
								<p>${item.summary}</p>
							</div>
						</div>
					</c:if>
					<div class="item">
						<a href="detail_show?titleId=${item.titleId}" target="_blank"><img
							src="http://tlmeiju.oss-cn-beijing.aliyuncs.com/${item.picture}"></a>
						<div class="carousel-caption">
							<a href="detail_show?titleId=${item.titleId}" target="_blank"><h1>${item.titleName}</h1></a>
							<p>${item.summary}</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<a class="carousel-control left" href="#head-car" data-slide="prev"></a>
			<a class="carousel-control right" href="#head-car" data-slide="next"></a>
		</div>
	</div>
	<!--轮播结束-->
	<!--主要内容-->
	<!-- 最新热播开始-->
	<div class="container">
		<div class="panel panel-default col-lg-9" style="margin-left: -5px;">
			<div class="panel-heading"
				style="padding-left: 5px; margin-left: -14px; margin-right: -14px;">
				<h3 class="panel-title">
					<strong>最新热播</strong>
				</h3>
			</div>
			<div class="panel-body pan-body">

				<c:forEach var="item" items="${hotList}" begin="0" end="11" step="1">
					<div class="col-lg-2 col-md-2 col-sm-3 col-xs-4  box-big">
						<div class="box-mid">
							<div class="box-sml">
								<div class="box-imge">
									<a href="detail_show?titleId=${item.titleId}"
										title="http://tlmeiju.oss-cn-beijing.aliyuncs.com/${item.titleName}"><img class="pic-img"
										src=${item.picture}></a>
									<div class="box-text">
										<span>更新到${item.status}</span>
									</div>
								</div>
							</div>
							<a href="detail_show?titleId=${item.titleId}" target="_blank"><p>${item.titleName}</p></a>
						</div>
					</div>
				</c:forEach>


			</div>
		</div>
		<!-- 总排行榜 -->
		<div class="panel panel-default col-lg-3 paihang"
			style="margin-left: 5px;">
			<div class="panel-heading"
				style="padding-left: 5px; margin-left: -14px; margin-right: -14px;">
				<h3 class="panel-title">
					<strong>总下载排行榜</strong>
				</h3>
			</div>
			<ul class="list-group  badge-st">
				<c:forEach var="item" items="${diList}" varStatus="i" begin="0"
					end="8" step="1">
					<li class="list-group-item"><span class="badge"
						style="background:${color[i.index]};">${i.index+1}</span> <a
						href="detail_show?titleId=${item.titleId}">${item.titleName}</a>
						<p>${item.downloadTimes}次下载</p></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<!--最新热播结束-->
	<!-- 分类推荐栏 -->

	<c:forEach var="itemType" items="${thotList}" varStatus="i">
		<div class="container">
			<div class="panel panel-default col-lg-9" style="margin-left: -5px;">
				<div class="panel-heading">
					<h3 class="panel-title">
						<strong>${itemType[0].type.typeName}</strong>
					</h3>
					<a href="meiju_linkType?typeId=${itemType[0].type.typeId}">更多>></a>
				</div>
				<div class="panel-body pan-body">

					<c:forEach var="item" items="${itemType}" begin="0" end="5"
						step="1">
						<div class="col-lg-2 col-md-2 col-sm-3 col-xs-4  box-big">
							<div class="box-mid">
								<div class="box-sml">
									<div class="box-imge">
										<a href="detail_show?titleId=${item.titleId}"
											title="${item.titleName}"><img class="pic-img"
											src="http://tlmeiju.oss-cn-beijing.aliyuncs.com/${item.picture}"></a>
										<div class="box-text">
											<span>更新到${item.status}</span>
										</div>
									</div>
								</div>
								<a href="detail_show?titleId=${item.titleId}" target="_blank"><p>${item.titleName}</p></a>
							</div>
						</div>
					</c:forEach>

				</div>
				<div class="body-foot">
					<hr>
					<div
						style="margin-top: -15px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
						<c:forEach begin="6" end="13" step="1" var="items"
							items="${itemType}">
							<div class="col-lg-3" style="margin-bottom: 6px;">
								<span style="color: #999">[ ${items.status} ]&nbsp;&nbsp;
								</span><a href="detail_show?titleId=${items.titleId}">${items.titleName}</a>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="panel panel-default col-lg-3 paihang"
				style="margin-left: 5px;">
				<div class="panel-heading"
					style="padding-left: 5px; margin-left: -14px; margin-right: -14px;">
					<h3 class="panel-title">
						<strong>下载排行榜</strong>
					</h3>
				</div>

				<ul class="list-group badge-st">
					<c:forEach var="itemc" items="${tdiList[i.index]}" begin="0"
						end="5" step="1" varStatus="j">
						<li class="list-group-item"><span class="badge"
							style="background:${color[j.index]};">${j.index+1}</span> <a
							href="detail_show?titleId=${itemc.titleId}">${itemc.titleName}</a>
							<p>${itemc.downloadTimes}次下载</p></li>
					</c:forEach>
				</ul>
			</div>

		</div>

	</c:forEach>
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
	<script>
		$(document).ready(function() {
			$(".box-imge").mouseenter(function() {
				$(this).find("div").fadeIn();
			});
			$(".box-imge").mouseleave(function() {
				$(this).find("div").fadeOut("200");
			});
		});
	</script>
	<script type="text/javascript">
		$(function() {
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
