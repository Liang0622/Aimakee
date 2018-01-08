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
<script type="text/javascript" src="js/common.js"></script>
<title>我的订单</title>
</head>
<body onload="margin_top_height();">
<div id="wrap">
<%@ include file="elements/top.jsp" %>
<%@ include file="elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" >我的订单</a> </div>
 	<div class="user_content">
 		<div class="con_left">
            <div class="pad_border">
                <ul class="user_menu">
                    <li class="user_icon1"><a href="user.jsp">欢迎页</a></li>
                    <li class="user_icon2"><a class="hot" href="user_order.jsp">我的订单</a></li>
                    <li class="user_icon3"><a href="user_credit.jsp">我的积分</a></li>
                    <li class="user_icon4"><a href="user_address.jsp">地址薄</a></li>
                    <li class="user_icon5"><a href="user_info.jsp">基本信息</a></li>
                    <li class="user_icon6"><a href="user_album.jsp">我的图库</a></li>
                    <li class="user_icon7"><a href="user_recommend.jsp">我的推荐</a></li>
                    <li class="user_icon8"><a href="user_comment.jsp">我的评论</a></li>
                    <li class="user_icon9"><a href="user_message.jsp">留言管理</a></li>
                </ul><!--安全退出加伪协议，显示退出成功信息，然后跳转到首页-->
                <div class="user_logout"><a href="exitServlet" title="退出"><img src="images/user_btn1.jpg" alt="退出" /></a></div>
            </div>
        </div>
        
 		<div class="con_right">
        	<div class="pad_border">
            	<div class="user_con">
                	<div class="subject"><span>我的订单</span></div>
                    <form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkConsignee(this)">
                    <table width="98%" align="center"> 
                        <tr>
                            <td width="19%">订单号</td>
                            <td width="23%">下单时间</td>
                            <td width="22%">订单总金额</td>
                            <td width="20%">订单状态</td>
                            <td width="15%">操作</td>
                        </tr> 
                        <tr>
                            <td>2010082779613</td>
                            <td>2010-08-27 19:20:53</td>
                            <td class="td2">￥6008.00元 </td>
                            <td>未确认,未付款,未发货</td>
                            <td><a href="#">取消订单</a></td>
                        </tr>
                    </table>
                    </form>

                </div>
            </div>
        </div>
	</div>
</div>
<%@ include file="elements/bottom.jsp" %>
</div>
</body>
</html>
