<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="org.apache.taglibs.standard.tag.common.core.ForEachSupport"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/common.css" />
<link type="text/css" rel="stylesheet" href="css/user.css" />
<link type="text/css" rel="stylesheet" href="css/user_login.css" />
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/user_login.js"></script>

<title>爱玛克登录页</title>
</head>
<body onload="margin_top_height();changeImg()">
<div id="wrap">
<%@ include file="elements/top.jsp" %>
<%@ include file="elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" href="">登录</a> </div>
    <div class="login_con">
		<div class="login_left">
            <div class="login_title">已经是会员，请登陆</div>
            <div class="login_form">
<% 
	String username="";
	String password="";
	request.setCharacterEncoding("utf-8");
	Cookie[] params=request.getCookies();
	if(params!=null){
		for(int i=0;i<params.length;i++){
			if(params[i].getName().equals("username")){
				username=URLDecoder.decode(params[i].getValue(),"utf-8");
			}else if(params[i].getName().equals("password")){
				password=URLDecoder.decode(params[i].getValue(),"utf-8");
			}
		}
	}
 %>
            	<form action="loginServlet" method="post" name="loginForm">
  					<div class="log_txt">
  					<span class="txt">账户名：</span>
  					<input  type="text" name="username" value="<%=username %>" size="24"/>
  					</div>
  					<div class="log_pass"><span class="txt">密&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
  					<input type="password" name="password" value="<%=password %>" size="24" /></div>
                    <div class="checkbox">
                   		<input  type="checkbox" name="checkbox" id="checkbox" /> 记住我的密码
                    </div>
                    <div class="log_code">
  					<input  type="text" name="inputCode" placeholder="验证码" size="6" />
  					<div class="code" id="code" onclick="changeImg()"></div>
  					</div>
                    <input type="submit" value="" name="" class="login_btn" />
            	</form>
            </div>
        </div>
        <div class="login_right">
            <div class="login_title1">如果你不是会员，请注册</div>
            <div class="login_r_con">
				<p class="color2">友情提示：</p>
                <p>注册成爱玛客会员，可以享受到购物折扣的优惠，<a href="user_register.jsp">马上注册&gt;&gt;</a></p>
            </div>         
        
        </div>
    </div>
</div>

<%@ include file="elements/bottom.jsp" %>
</div>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
</body>
</html>
