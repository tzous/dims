<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
 <base href="<%=basePath%>">
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>login</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="public/css/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="public/js/jquery.js"></script>
<script src="public/js/verificationNumbers.js"></script>
<script src="public/js/Particleground.js"></script>
<script type="text/javascript" src="public/js/common.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //提交
  $(".submit_btn").click(function(){
      var LOGINNAME = $("#LOGINNAME").val();
      var PASSWORD = $("#PASSWORD").val();
      if(JUDGE.isNull(LOGINNAME) || JUDGE.isNull(PASSWORD)){
          alert("用户名、密码都不能为空!");
          return;
      }
      if(!validate()) {
    	  alert("验证码校验错误!");
    	  return;
      }
      var condition = {"LOGINNAME":LOGINNAME,"PASSWORD":PASSWORD};
      condition = JSON.stringify(condition);
      condition = escape(encodeURIComponent(condition));
      var url='USERLogin.do?condition='+condition;

      $.ajax( {
          type : "post",
          url : url,
          contentType : "text/html",
          error : function(event,request, settings) {
              alert("请求失败!");
          },
          success : function(data) {
              var jsonresult = eval( data );
              if(jsonresult.retCode == 0){
                  window.location.href="index.do";
              }
              else{
                  alert("用户名或密码错误!");
              }
          }
      });

	  });
});
</script>
</head>
<body>
<dl class="admin_login">
 <dt>
  <strong>设备管理台账</strong>
  <em>Management System</em>
 </dt>
 <dd class="user_icon">
  <input id="LOGINNAME" name="LOGINNAME" type="text" placeholder="账号" class="login_txtbx"/>
 </dd>
 <dd class="pwd_icon">
  <input id="PASSWORD" name="PASSWORD" type="password" placeholder="密码" class="login_txtbx"/>
 </dd>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text" id="J_codetext" name="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
  </div>
 </dd>
 <dd>
  <input type="button" value="立即登录" class="submit_btn"/>
 </dd>
 <dd>
  <p>© 2015-2016 DeathGhost </p>
  <p>2018</p>
 </dd>
</dl>
</body>
</html>
