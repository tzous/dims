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
<title>密码修改</title>
 <link rel="stylesheet" type="text/css" href="public/easyui/themes/default/easyui.css">
 <link rel="stylesheet" type="text/css" href="public/easyui/themes/icon.css">
 <link rel="stylesheet" type="text/css" href="public/css/demo.css">
 <link rel="stylesheet" type="text/css" href="public/css/fw.css" ></link>
 <script type="text/javascript" src="public/easyui/jquery.min.js"></script>
 <script type="text/javascript" src="public/easyui/jquery.easyui.min.js"></script>
 <script type="text/javascript" src="js/common.js"></script>
 <script type="text/javascript" src="js/admin/modipasswd.js"></script>
</head>
<body>

<div data-options="fit:true"  >
 <!-- 内容栏 -->
 <div class="editcontent"
      style="padding:10px;background:#fff;border:1px solid #ccc;height:200px;">

  <div id="maindata" >

   <table class="table table-hover table-condensed">
    <tr>
     <th>旧&nbsp;密&nbsp;码：</th>
     <td><input id="oldpass"  type="password" style="width:114px;"></input>
     </td>
    </tr>
    <tr>
     <th>新&nbsp;密&nbsp;码：</th>
     <td><input id="newpass" type="password"   style="width:114px;"></input>
     </td>
    </tr>
    <tr>
     <th>再输一遍：</th>
     <td><input id="newpass1" type="password"   style="width:114px;"></input>
     </td>
    </tr>
    <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
    </tr>
   </table>

  </div>

 </div>

 <!-- 保存按钮栏 -->
 <div style="text-align:center;padding:5px 0;">
  <a id="btnSave" class="easyui-linkbutton" data-options="iconCls:'icon-ok'"  >保 存</a>
  &nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a id="btnCancel" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'"  >关闭</a>
 </div>
</div>

</body>  	
</html>