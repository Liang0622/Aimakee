<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header">
    <ul id="QuickMenu">
    	<c:set var="islogin" value="${empty sessionScope.user}"/>
        <li class="my_account"><span>
        <c:choose>
    	<c:when test="${!islogin}">
    		<a href="user.jsp" > <c:out value="${sessionScope.user.userName}"   /> </a>
    	</c:when>
    	<c:otherwise>
    		<a href="user_login.jsp" > <c:out value="请登录"/> </a>
    	</c:otherwise>
    	</c:choose>
    	</span></li>
        <li class="my_icon" onmouseover="view_account()"><a href="user.jsp">我的爱玛客<span id="my_icon"></span></a></li>
        <li class=""><a href="flow_cart.jsp">购物车</a></li>
        <li class=""><a href="#">网站联盟</a></li>
        <li class="map"><a href="#">网站地图</a></li>
    </ul>
    <ul id="my_account" class="my_account2" onmouseover="view_account()" onmouseout="hide_account()">
        <li class="my_icon"><a href="#">我的爱玛客</a><span></span></li> 
        <li><a href="user_order.jsp#user_order">我的订单</a></li>
        <li><a href="user_credit">我的积分</a></li>
        <li><a href="#">我的优惠券</a></li> 
        <li><a href="#">快递查询</a></li>         
    </ul>       
    <div id="logo">
        <div class="logo"><a href="/" title="首页"><img src="images/logo.jpg" alt="爱玛客首页" width="224" height="35" /></a></div>
        <div class="contact_phone"><img src="images/contact_phone.jpg" alt="爱玛客首页" width="233" height="17" /></div>
    </div>
    <div id="nav">
        <ul class="mian_nav">
            <li class="nav_index"><a href="index.jsp" title="">首页</a></li>
            <li class=""><a href="product.jsp" title="">个性定制</a></li>
        </ul>
        <ul class="sub_nav">
            <li class=""><a href="#" title="">对象定制</a></li>
            <li class=""><a href="#" title="">新品区</a></li>
            <li class=""><a href="#" title="">特价区</a></li>
        </ul>
    </div>
</div>
