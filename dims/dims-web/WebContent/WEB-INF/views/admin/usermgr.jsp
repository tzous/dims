<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
 <base href="<%=basePath%>">
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
 <link rel="stylesheet" type="text/css" href="public/easyui/themes/default/easyui.css">
 <link rel="stylesheet" type="text/css" href="public/easyui/themes/icon.css">
 <link rel="stylesheet" type="text/css" href="public/css/demo.css">
 <link rel="stylesheet" type="text/css" href="public/css/fw.css" ></link>
 <script type="text/javascript" src="public/easyui/jquery.min.js"></script>
 <script type="text/javascript" src="public/easyui/jquery.easyui.min.js"></script>
 <script type="text/javascript" src="js/common.js"></script>
 <script type="text/javascript" src="js/admin/usermgr.js"></script>
</head>
<body>

<!-- 数据列表 -->
<table id="dataview" ></table>

<!-- 对话框 -->
<div id="wedit" class="easyui-window" data-options="title:'用户管理',iconCls:'icon-save',modal:true,closed:true"
     style="width: 500px; height: 340px; padding: 5px;">
 <div class="easyui-layout" data-options="fit:true">
  <div data-options="region:'center',border:false" style="padding: 10px; background: #fff;
                border: 1px solid #ccc;">
   <iframe id="iframemain" scrolling="yes" frameborder="0" src="#" style="width: 100%;
                    height: 98%;"></iframe>
  </div>
 </div>
</div>

</body>  	
</html>