<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/type.css" />
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
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">
					<strong>感谢您的到来</strong>
				</h3>
			</div>
			<div class="panel-body">
				<h1>本栏目有待更新，敬请期待！！！</h1>
				<a href="user/linkHome">test</a>
				<p>${test}</p>
			</div>
		</div>
	</div>
	<script src="js/jquery-1.11.1.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
