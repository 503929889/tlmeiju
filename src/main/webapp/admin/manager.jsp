<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<title>TL美剧</title>
</head>
<body style="padding:0">
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#" style="font-size:24px;">管理员界面</a>
			</div>
			<div class="col-lg-9" style="text-align:center; font-size:28px;">
				<span><strong></strong>
				</span>
			</div>
			<div class="pull-right">
				<a>haorangg</a><span style="color:#FFF">&nbsp;&nbsp;|&nbsp;&nbsp;</span><a
					style="color:#DD6F00">退出</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class=""><a href="#"></a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="" style=" margin-top:-21px;">
		<div class="col-lg-1 col-md-3" style="padding:0;">
			<ul class="list-group affix">
				<li class="list-group-item"><a href="#manageuser"
					data-toggle="tab"> 用户管理 </a>
				</li>
				<li class="list-group-item"><a href="#managemessage"
					data-toggle="tab">留言管理</a>
				</li>
				<li class="list-group-item"><a href="#addmeiju"
					data-toggle="tab">增加美剧</a>
				</li>

			</ul>
		</div>
		<div class="col-lg-11 col-md-9" style="padding:0;">
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="manageuser">
					<div class="panel panel-default">
						<div class="panel-heading"
							style="text-align:center; font-size:24px;">
							<strong>用户管理</strong>
						</div>
						<div class="panel-body" style=" padding:0;">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>用户名</th>
										<th>密码</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Tanmay</td>
										<td>Bangalore</td>
										<td><a class="glyphicon glyphicon-cog"
											style="color: rgb(0, 176, 0); font-size: 20px;"></a>&nbsp;&nbsp;
											<a class="glyphicon  glyphicon-trash"
											style="color: rgb(208, 131, 60); font-size: 20px;"></a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="managemessage">
					<div class="panel panel-default">
						<div class="panel-heading"
							style="text-align:center; font-size:24px;">
							<strong>留言管理</strong>
						</div>
						<div class="col-lg-4">
							<h3>选择分类：</h3>
							<div class="dropdown">
								<button type="button" class="btn dropdown-toggle"
									id="dropdownMenu1" data-toggle="dropdown">
									科幻魔幻 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu"
									aria-labelledby="dropdownMenu1">
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">灵异惊悚</a></li>
									<li role="presentation" class="divider"></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">都市情感</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">犯罪历史</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">动漫卡通</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">选秀综艺</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-4">
							<h3>美剧名：</h3>
							<div class="dropdown">
								<button type="button" class="btn dropdown-toggle"
									id="dropdownMenu1" data-toggle="dropdown">
									闪电侠第一季 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu"
									aria-labelledby="dropdownMenu1">
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">灵异惊悚</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">都市情感</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">犯罪历史</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">动漫卡通</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">选秀综艺</a></li>
								</ul>
							</div>
						</div>
						<div class="panel-body" style=" padding:0;">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>用户</th>
										<th>留言时间</th>
										<th>内容</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Tanmay</td>
										<td>2016-10-12</td>
										<td>我是是一个创建高度可扩展性和强大企水电费水电费水电费说的</td>
										<td><a href="" class="glyphicon  glyphicon-trash"
											style="color: rgb(208, 131, 60); font-size: 20px;"></a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="addmeiju">
					<div class="panel panel-default">
						<div class="panel-heading"
							style="text-align:center; font-size:24px;">
							<strong>增加美剧</strong>
						</div>
						<div class="panel-body" style=" padding:0;">
							<div class="container">
								<form action="fileUpload.action" enctype="multipart/form-data"
									method="post" name="myfrm">
									<div class="form-group">
										<label for="name">类型</label> <select class="form-control"
											name="title.type.typeId">
											<option value="10000">科幻魔幻</option>
											<option value="20000">灵异惊悚</option>
										</select>
									</div>
									<div class="form-group">
										<label for="name">美剧名</label> <input type="text"
											class="form-control" name="title.titleName"
											placeholder="请输入美剧的名称(必填)">
									</div>
									<div class="form-group">
										<label for="name">原名</label> <input type="text"
											class="form-control" name="title.englishName" placeholder="">
									</div>
									<div class="form-group">
										<label for="name">别名</label> <input type="text"
											class="form-control" name="title.alias" placeholder="">
									</div>
									<div class="form-group">
										<label for="name">导演</label> <input type="text"
											class="form-control" name="title.director" placeholder="">
									</div>
									<div class="form-group">
										<label for="name">编剧</label>
										<textarea class="form-control" rows="3" name="title.writer"></textarea>
									</div>
									<div class="form-group">
										<label for="name">主演</label>
										<textarea class="form-control" rows="3" name="title.star"></textarea>
									</div>
									<div class="form-group">
										<label for="name">集数</label> <input type="text"
											class="form-control" name="title.episodeNumber"
											placeholder="">
									</div>
									<div class="form-group">
										<label for="name">单集片长</label> <input type="text"
											class="form-control" name="title.tvLength" placeholder="">
									</div>
									<div class="form-group">
										<label for="name">请选择一张宽高比例约为 3 ： 4 的图片</label> <label
											class="sr-only" for="inputfile">文件输入</label> <input
											type="file" name="upload" />
									</div>
									<input type="submit" class="btn btn-primary pull-right"
										value="&nbsp;提&nbsp;&nbsp;交&nbsp;"/ >
								</form>
								<br> <br> <br> <br> <br>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="ejb">
					<p>Enterprise Java
						Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web
						Logic 等）的 J2EE 上。</p>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery-1.11.1.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>