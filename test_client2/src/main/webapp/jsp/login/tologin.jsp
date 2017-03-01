<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index page</title>
</head>
<body>
    
          主页
      <table>
            <th><td>登录成功</td></th>
            <tr>
                <td>${userId}</td>
            </tr>     
                 <c:if test="${empty userId}">
                    <th><td> <a href="${basePath }login/tologin">登录</a> </td></th>
                 </c:if>
                
                <c:if test="${not empty userId}">
                     <th><td> <a id='logout' href="http://sso.sit.chexiang.com/wxlogout?systemType=MAIN&backUrl=http%3a%2f%2fsso.sit.com%2ftest_client2%2flogin%2findex
                     ">退出</a> </td></th>
                 </c:if>
               
        </table>
    
    
    
</body>
</html>