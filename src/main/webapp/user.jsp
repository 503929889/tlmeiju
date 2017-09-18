<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TL美剧</title>
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-xs-offset-3 col-lg-5">
      <div class="panel panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">
            <h1 style="text-align:center;"> <strong>用户信息</strong></h1>
          </h3>
        </div>
        <div class="panel-body">
            <div class="col-lg-12"> <span class="col-lg-4" style=" font-size:24px;">用户名：</span><span style=" font-size:24px; color:#999">${username}</span> </div>
            <div class="col-lg-12"  style="text-align:center;"> <a class="btn btn-default" id="flip">更改信息</a> </div>
        
          <div class="change" style="display:none; padding-top:150px; padding-bottom:150px">
           <form action="user_changePass" name="rgform" method="post">
           <input type="hidden" name="username" value="${username}">
            <div class="col-lg-12"> <span class="col-lg-4" style=" font-size:20px;">密码：</span><input name="password" type="password" style=" font-size:20px; color:#999"> </div><br><br>
             <div class="col-lg-12"> <span class="col-lg-4" style=" font-size:20px;">重复密码：</span><input   name="rppassword" type="password" style=" font-size:20px; color:#999"> </div><br><br>
            <div class="col-lg-12"  style="text-align:center;"> 
            <span id="passwordremind"></span><br><button type="submit" class="btn btn-default" >确定更改</button> </div>
          </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="js/jquery-1.11.1.js"></script> 
<script src="js/bootstrap.js"></script>
<script type="text/javascript"> 
$(document).ready(function(){
  $("#flip").click(function(){
    $(".change").slideDown("slow");
  });
});
var remind=document.getElementById("passwordremind");
var pass=$("#ps").val();
var rgpass=document.rgform.rgpassword.value;
function check(){
		if(pass==""||pass==null){
			alert("密码为空！");
			return false;
		}
		else if(pass!=rgpass){
			alert("两次密码不同");
			return false;
		}
		else{
			return false;
		}
}
function change(){
	//	var pass=document.rgform.password.value;
		//var rgpass=document.rgform.rgpassword.value;
		if(pass==""||pass==null){
			remind.innerHTML="密码为空";
			remind.style.color='red';
			return false;
		}
		else if(pass!=rgpass){
			remind.innerHTML="两次密码不同";
			remind.style.color='red';
			return false;
		}
		else{
			xmlhttp.onreadystatechange=function()
			{
			    if (xmlhttp.status==200&&xmlhttp.responseText=="1")
			    {
			    	remind.innerHTML="用户已经存在";
			    	remind.style.color='red';
			    }
			    else if(xmlhttp.responseText=="22")
			    {
			    	remind.innerHTML="更改密码成功";
			    	remind.style.color='blue';
			    }
			}
			xmlhttp.open("GET","user_changePass.action?username="+document.rgform.username.value+",password="+document.rgform.password.value);
			xmlhttp.send();
			
		}
	}
</script>
</body>
</html>