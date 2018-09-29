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
<title>设备类型列表</title>
 <link rel="stylesheet" type="text/css" href="public/easyui/themes/default/easyui.css">
 <link rel="stylesheet" type="text/css" href="public/easyui/themes/icon.css">
 <link rel="stylesheet" type="text/css" href="public/css/demo.css">
 <link rel="stylesheet" type="text/css" href="public/css/fw.css" ></link>
 <script type="text/javascript" src="public/easyui/jquery.min.js"></script>
 <script type="text/javascript" src="public/easyui/jquery.easyui.min.js"></script>
 <script type="text/javascript" src="js/common.js"></script>
 <script type="text/javascript" src="js/admin/typelist2.js"></script>
</head>
<body>

<div data-options="fit:true"  >
 <!-- 内容栏 -->
 <div title="设备类型列表" style="width:180px;">
  <ul id="tt1" class="easyui-tree" data-options="animate:true,dnd:true"></ul>
 </div>

</div>

</body>  	
</html>