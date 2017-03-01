<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index page</title>
</head>
<body>
          主页
      <table>
            <th><td>测试数据</td></th>
            <tr>
                <td>${str}</td>
            </tr>     
                <th><td> <a href="${basePath }login/tologin">登录</a> </td></th>
                <th><td> <a id='logout' href="">退出</a> </td></th>
        </table>
    
    
    
</body>
</html>