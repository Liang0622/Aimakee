<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<p><c:out value="${sessionScope.user.userName}"/> 欢迎您回到 ECSHOP！</p>
<p>您的上一次登录时间: 2010-09-15 09:44:20</p>
<p>您的等级是 注册用户 ,您还差 10000 积分达到 vip</p>
<p>您还没有通过邮件认证 点此发送认证邮件</p>
<div class="user_pub"><img src="images/user_icon2.jpg" align="middle" /> 用户中心公告！</div>
<div class="array2">
    <div class="box1">
        <div class="title">您的账户</div>
        <div class="detail">
            <p>余额：<span class="txt1">￥0.00元</span></p>
            <p>红包：共计 0 个，价值 ￥0.00元</p>
        </div>
    </div>
    <div class="box2">
        <div class="title">用户提醒</div>
        <div class="detail">
            <p>您最近30天内提交了2个订单</p>
        </div>
    </div>
</div>