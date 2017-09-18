<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
							<a href="action1linkType.action?typeId=20000">${username}</a></c:if>
							<c:if test="${superuser==0}">
							<a href="user.jsp">${username}</a>
							</c:if>
							<span style="color: #FFF">&nbsp;&nbsp;|&nbsp;&nbsp;</span><a
								href="user_exit.action?address=meiju_linkDetails?titleId=${detailtitle.titleId}" style="color: #DD6F00">退出</a>
						</div>
					</c:if>
					<form action="meiju_search" method="post" name="searchfrm">
						<div class="input-group head-input">
							<div class="input-group-btn">

								<button class="btn btn-default dropdown-toggle"
									data-toggle="dropdown">
									搜索记录<span class=" caret"></span>
								</button>
								<ul class="dropdown-menu" style="text-align: left;">
									<li><a href="meiju_search?titleName=闪电侠">闪电侠</a></li>
									<li><a href="meiju_search?titleName=绿箭侠">绿箭侠</a></li>
									<li><a href="meiju_search?titleName=钢铁侠">钢铁侠</a></li>
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
						<li><a href="#manager" data-toggle="tab">管理员登录</a></li>
					</ul>
				</div>
				<div class="modal-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="user">
							<div style="width: 70%; margin: 0 auto;">
								<form class="form-horizontal" role="form" action="user_login.action"
									method="post">
									<div class="form-group" style="margin-top: 20px;">
										<label class="col-sm-3 control-label">用户名</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="username"
												placeholder="请输入用户名">
										</div>
									</div>
									<div class="form-group" style="margin-top: 30px;">
										<label class="col-sm-3 control-label">密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" name="password"
												placeholder="请输入密码">
										</div>
									</div>
									<input type="hidden" name="address" value="meiju_linkDetails?titleId=${detailtitle.titleId}">
									<div class="form-group" style="margin-top: 30px;">
										<div class="col-sm-offset-3 col-sm-3">
											<input type="hidden" name="type" value="1">
											<button type="submit" class="btn btn-primary">&nbsp;&nbsp;登录&nbsp;&nbsp;</button>
										</div>
										<div class="col-sm-6">
											<a href="register.jsp" class="btn btn-default">&nbsp;&nbsp;注册&nbsp;&nbsp;</a>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="tab-pane fade" id="manager">
							<div style="width: 70%; margin: 0 auto;">
								<form class="form-horizontal" role="form" action="manager_login"
									method="post">
									<div class="form-group" style="margin-top: 20px;">
										<label class="col-sm-3 control-label">用户名</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" name="username"
												placeholder="请输入用户名">
										</div>
									</div>
									<div class="form-group" style="margin-top: 30px;">
										<label class="col-sm-3 control-label">密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" name="password"
												placeholder="请输入密码">
										</div>
									</div>
									<div class="form-group" style="margin-top: 30px;">
										<div class="col-sm-offset-3 col-sm-3">
											<input type="hidden" name="type" value="2">
											<button type="submit" class="btn btn-primary">&nbsp;&nbsp;登录&nbsp;&nbsp;</button>
										</div>
										<div class="col-sm-6">
											<a href="register.jsp" class="btn btn-default">&nbsp;&nbsp;注册&nbsp;&nbsp;</a>
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
					<li><a href="meiju_linkType?typeId=10000">科幻魔幻</a></li>
					<li><a href="meiju_linkType?typeId=20000">灵异惊悚</a></li>
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
									<span style="color: #8B8B8B;">类型:</span><span>${detailtitle.typeName}</span><br>
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
						<c:if test="${msList.isEmpty()}">
							<div class="col-lg-12" style="height: 90px; text-align: center;">
								<h2 style="color: #c7c7c7;">留言区很空虚，快来留言把~~~~~</h2>
							</div>
						</c:if>
						<c:if test="${!msList.isEmpty()}">
							<c:forEach var="item" items="${msList}">
								<div class="col-lg-12 col-xs-12"
									style="border-bottom: 1px #949494; margin-top: 10px; padding-bottom: 5px;">
									<div class="col-lg-1 col-xs-2" style="margin-left: -20px;">
										<a><img src="image/head/1.jpg"
											style="height: 50px; width: 50px; border-radius: 25px;"></a>
									</div>
									<div class="col-lg-11 col-xs-10">
										<p>
											<a style="color: #2fb3ff;">${item.user}</a> <span
												style="color: #c7c7c7; margin-left: 20px;">2016-12-05</span>
										</p>
										<p>${item.content}</p>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<!--	发布留言区	-->
						<div class="col-lg-12 col-xs-12">
							<h2>发布留言</h2>
							<c:if test="${username==null}">
							<form method="post" name="messagefrms">
								<div class="form-group">
									<textarea class="form-control" rows="4" name="content">请先登录</textarea>
								</div>
								<button onclick="tips();" class="btn btn-primary pull-right"
									style="margin-left: 10px;">&nbsp;提&nbsp;交&nbsp;</button>
								<button type="reset" class="btn btn-default pull-right">&nbsp;清&nbsp;空&nbsp;</button>
							</form>
							</c:if>
							<c:if test="${username!=null}">
							<form action="meiju_leaveMessage" method="post"
								name="messagefrms">
								<div class="form-group">
									<textarea class="form-control" rows="4" name="content"></textarea>
									<input type="hidden" name="user"
										value="<%=(String) session.getAttribute("username")%>" /> <input
										type="hidden" name="titleId" value="${detailtitle.titleId}" />
								</div>
								<button type="submit" class="btn btn-primary pull-right"
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
								href="meiju_linkDetails?titleId=${item.titleId}">${item.titleName}</a>
								<p>${item.downloadTimes}次下载</p></li>
						</c:forEach>
					</ul>

				</div>
			</div>

		</div>
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
		}
	</script>
</body>
</html>
