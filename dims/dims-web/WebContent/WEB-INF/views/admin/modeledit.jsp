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
<title>站点修改</title>
 <link rel="stylesheet" type="text/css" href="public/easyui/themes/default/easyui.css">
 <link rel="stylesheet" type="text/css" href="public/easyui/themes/icon.css">
 <link rel="stylesheet" type="text/css" href="public/css/demo.css">
 <link rel="stylesheet" type="text/css" href="public/css/fw.css" ></link>
 <script type="text/javascript" src="public/easyui/jquery.min.js"></script>
 <script type="text/javascript" src="public/easyui/jquery.easyui.min.js"></script>
 <script type="text/javascript" src="js/common.js"></script>
 <script type="text/javascript" src="js/admin/modeledit.js"></script>
</head>
<body>

<div data-options="fit:true"  >
 <!-- 内容栏 -->
 <div class="editcontent"
      style="padding:10px;background:#fff;border:1px solid #ccc;height:200px;">

  <div id="maindata" >
   <ul id="areatree" data-options="animate:true,lines:true"></ul>

   <table class="table table-hover table-condensed">
    <tr>
     <th>品牌型号ID：</th>
     <td><input id="modelid"  type="text" style="width:114px;" readonly></input>
     </td>
    </tr>
    <tr>
     <th>品牌名称：</th>
     <td><input id="devbrand" type="text"   style="width:114px;"></input>
     </td>
    </tr>
    <tr>
     <th>型号名称：</th>
     <td><input id="devmodel" type="text"   style="width:114px;"></input>
     </td>
    </tr>
    <th>设备类型ID</th>
     <td>
      <input id="typeid" type="text" style="width:114px;" ></input>
      <img id="siteimg" src="public/img/@chatroom.gif" border="0" onclick="javascript:selectSuper();void(0);">
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
<!-- 对话框 -->
<div id="wtype" class="easyui-window" data-options="title:'设备类型列表',iconCls:'icon-save',modal:true,closed:true"
     style="width: 400px; height: 240px; padding: 5px;">
 <div class="easyui-layout" data-options="fit:true">
  <div data-options="region:'center',border:false" style="padding: 10px; background: #fff;
                border: 1px solid #ccc;">
   <iframe id="iframetype" scrolling="yes" frameborder="0" src="#" style="width: 100%;
                    height: 98%;"></iframe>
  </div>
 </div>
</div>

</body>
</html>