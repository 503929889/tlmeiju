<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TL美剧</title>
<link rel="stylesheet" href="css/register.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<img src="image/back/1.jpg">
<div class="container" style="text-align:center; border:none;">
  <div class=" col-xs-offset-3 col-lg-5" style="margin-top:20%;">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><strong>欢迎您</strong></h3>
      </div>
      <div class="panel-body" style=" padding-left:0px;">
        <form class="form-horizontal" role="form" action="usre/register" name="rgform" onSubmit="return check();" method="post">
          <div class="form-group">
            <label for="username" class="col-sm-3 control-label">用户名：</label>
            <div class="col-sm-9">
              <input type="text" class="form-control" name="account" placeholder="请输入用户名"  onblur="userCheck();">
            </div>
            <span id="userremind"> </span> </div>
          <div class="form-group">
            <label for="password" class="col-sm-3 control-label">密码：</label>
            <div class="col-sm-9">
              <input type="password" class="form-control" name="password" placeholder="请输入密码">
            </div>
          </div>
          <div class="form-group">
            <label for="password_repeat" class="col-sm-3 control-label">重复密码：</label>
            <div class="col-sm-9">
              <input type="password" class="form-control" name="password_repeat" placeholder="请再次输入密码" onblur="passwordCheck();">
            </div>
          </div>
          <span id="passwordremind"> </span><br>
          <div class="col-sm-offset-1 col-sm-10">
            <button type="submit" class="btn btn-default">&nbsp;注&nbsp;&nbsp;册&nbsp;</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
	var xmlhttp=new XMLHttpRequest();
	var remind=document.getElementById("userremind");
	var passwordremind=document.getElementById("passwordremind");
	var username=document.getElementById("username");
	function check(){
		var user=document.rgform.account.value;
		var password=document.rgform.password.value;
		var passwordrp=document.rgform.password_repeat.value;
				
		if(user==""||user==null){
			alert("用户名为空！！！");
			return false;
		}
		else if(password==null|| password==""){
				alert("密码为空！！！！");
				return false;
		}
		else if(password != passwordrp){
				return false;
			}
		}
	function passwordCheck(){
		var password=document.rgform.password.value;
		var passwordrp=document.rgform.password_repeat.value;
		if(password != passwordrp){
				passwordremind.innerHTML="两次密码不一致";
				passwordremind.style.color='red';
			}
		else{
			passwordremind.innerHTML="";
			}
		}
	function userCheck(){
		var user=document.rgform.account.value;
		
		if(user==""||user==null){
			remind.innerHTML="用户名为空";
			remind.style.color='red';
		}
		else{
			var user=document.rgform.account.value;
			xmlhttp.onreadystatechange=function()
			{
			    if (xmlhttp.status==200&&xmlhttp.responseText=="1")
			    {
			    	remind.innerHTML="用户已经存在";
			    	remind.style.color='red';
			    }
			    else if(xmlhttp.responseText=="22")
			    {
			    	remind.innerHTML="用户名合法";
			    	remind.style.color='blue';
			    }
			}
			xmlhttp.open("GET","user_checkUser.action?username="+document.rgform.account.value);
			xmlhttp.send();
			
		}
	}
</script>
</body>
</html>