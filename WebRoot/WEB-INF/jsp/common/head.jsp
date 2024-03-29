<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>超市系统</title>
    <link type="text/css" rel="stylesheet" href="${path}/statics/css/style.css" />
    <link type="text/css" rel="stylesheet" href="${path}/statics/css/public.css" />
</head>
<body>
<!--头部-->
    <header class="publicHeader">
        <h1>DoneBug超市管理系统 -V 1.3</h1>
        <div class="publicHeaderR">
            <p><span>下午好！</span><span style="color: #fff21b"> ${userOnLogin.userName }</span> , 欢迎你！</p>
            <a href="${path}/sys/logout">退出</a>
        </div>
    </header>
<!--时间-->
 <!--主体内容-->
 <section class="publicMian ">
     <div class="left">
         <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
         <nav>
             <ul class="list">
             
              <li ><a href="${path}/sys/bill">订单管理</a></li>
              <li><a href="${path }/sys/provider">供应商管理</a></li>
              <li><a href="${path }/sys/user">用户管理</a></li>
              <li><a href="${path }/sys/pwdmodify">密码修改</a></li>
              <li><a href="${path }/sys/logout">退出系统</a></li>
              
             </ul>
         </nav>
     </div>
     <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
     <input type="hidden" id="referer" name="referer" value="<%=request.getHeader("Referer")%>"/>