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
<title>爱玛克登录页</title>
</head>
<body onload="margin_top_height();">
<div id="wrap">
<%@ include file="elements/top.jsp" %>
<%@ include file="elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" href="#">我的评论</a> </div>
 	<div class="user_content">
 		<div class="con_left">
            <div class="pad_border">
                <ul class="user_menu">
                    <li class="user_icon1"><a href="user.jsp">欢迎页</a></li>
                    <li class="user_icon2"><a href="user_order.jsp">我的订单</a></li>
                    <li class="user_icon3"><a href="user_credit.jsp">我的积分</a></li>
                    <li class="user_icon4"><a href="user_address.jsp">地址薄</a></li>
                    <li class="user_icon5"><a href="user_info.jsp">基本信息</a></li>
                    <li class="user_icon6"><a href="user_album.jsp">我的图库</a></li>
                    <li class="user_icon7"><a href="user_recommend.jsp">我的推荐</a></li>
                    <li class="user_icon8"><a class="hot" href="user_comment.jsp">我的评论</a></li>
                    <li class="user_icon9"><a href="user_message.jsp">留言管理</a></li>
                </ul>
                <div class="user_logout"><a href="exitServlet" title="退出"><img src="images/user_btn1.jpg" alt="退出" /></a></div>
            </div>
        </div>
 		<div class="con_right">
        	<div class="pad_border">
            	<div class="user_con">
                	<div class="subject"><span>我的评论</span></div>
                    <div class="comment_box1">
                        <div class="f_l">
                        	<span class="com_title">商品评论:</span><span class="com_name">诺基亚N96</span><span>(2010-09-19 11:32:33)</span>
                            <a href="#" title="删除" onclick="if (!confirm('你确实要彻底删除这条留言吗？')) return false;" class="f6">删除</a>
                        </div>
                        <div class="comment_con">
                        	好好好好好
                        </div>     
                    </div>
                     <div class="comment_box1">
                        <div class="f_l">
                        	<span class="com_title">商品评论:</span><span class="com_name">诺基亚N96</span><span>(2010-09-19 11:32:33)</span>
                            <a href="#" title="删除" onclick="if (!confirm('你确实要彻底删除这条留言吗？')) return false;" class="f6">删除</a>
                        </div>
                        <div class="comment_con">
                        	好好好好好
                        </div>     
                    </div>
                    <div class="comment_box1">
                        <div class="f_l">
                        	<span class="com_title">商品评论:</span><span class="com_name">诺基亚N96</span><span>(2010-09-19 11:32:33)</span>
                            <a href="#" title="删除" onclick="if (!confirm('你确实要彻底删除这条留言吗？')) return false;" class="f6">删除</a>
                        </div>
                        <div class="comment_con">
                        	好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好
                        </div>     
                    </div>
                    <div class="comment_box1">
                        <div class="f_l">
                        	<span class="com_title">商品评论:</span><span class="com_name">诺基亚N96</span><span>(2010-09-19 11:32:33)</span>
                            <a href="#" title="删除" onclick="if (!confirm('你确实要彻底删除这条留言吗？')) return false;" class="f6">删除</a>
                        </div>
                        <div class="comment_con">
                        	好好好好好
                        </div>     
                    </div>
                    <div class="comment_box1">
                        <div class="f_l">
                        	<span class="com_title">商品评论:</span><span class="com_name">诺基亚N96</span><span>(2010-09-19 11:32:33)</span>
                            <a href="#" title="删除" onclick="if (!confirm('你确实要彻底删除这条留言吗？')) return false;" class="f6">删除</a>
                        </div>
                        <div class="comment_con">
                        	好好好好好
                        </div>     
                    </div>
                    <div class="comment_box1">
                        <div class="f_l">
                        	<span class="com_title">商品评论:</span><span class="com_name">诺基亚N96</span><span>(2010-09-19 11:32:33)</span>
                            <a href="#" title="删除" onclick="if (!confirm('你确实要彻底删除这条留言吗？')) return false;" class="f6">删除</a>
                        </div>
                        <div class="comment_con">
                        	好好好好好
                        </div>     
                    </div>             
                    <div id="pager" class="pagebar">
                        <span class="">总计 <b>11</b>  个记录</span>
                        <a class="prev" href="#">上一页</a>
                        <a href="#">[1]</a>
                        <span class="page_now">2</span>
                        <a href="#">[3]</a>
                        <a class="next" href="#">下一页</a>
                    </div>
				</div>			
            </div>
        </div>
	</div>
</div>
<%@ include file="elements/bottom.jsp" %>
</div>
</body>
</html>
