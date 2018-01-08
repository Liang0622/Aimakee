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
<link type="text/css" rel="stylesheet" href="css/product.css" />
<script type="text/javascript" src="js/common.js"></script>
<title>爱玛克登录页</title>
</head>
<body onload="margin_top_height();">
<div id="wrap">
<%@ include file="elements/top.jsp" %>
<%@ include file="elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" href="#">登录</a> </div>
    	<div class="box5">
        <div class="con_left">
            <img src="images/product_pic3.jpg" alt="产品图片" />
        </div>
        <form action="" method="post">
        <ul class="con_right">
            <li class="title">神奇魔术变色杯</li>
            <li>促&nbsp;&nbsp;销&nbsp;&nbsp;价： <span class="txt1">￥50.00</span>  爱玛价： <span class="txt2">￥58.00</span></li>
            <li>一周成交：<span class="txt3">1390件</span></li>
            <li>用户评论：<span>927&nbsp;条</span></li>
            <li>运&nbsp;&nbsp;&nbsp;&nbsp;费：<span class="txt4">满 138.00 元包邮，江浙沪 5 元，其它地区 9 元起</span><a href="#" class="txt5" title="">  更多&gt;&gt;</a></li>
            <li>购买10件以上，即享受 <a href="#" class="txt6" title="">团购优惠&gt;&gt;</a></li>
            <li>数量：<input type="text" class="inputBg" name="" value="1" />件</li>
            <li class="txt7">颜色</li>
            <li class="txt8"><input name="" type="radio" checked="checked" />白色 [￥0.00元]</li>
            <li class="txt8"><input name="" type="radio" />黑色 [加￥10.00元]</li>
            <li class="txt9"><input class="btn1" type="submit" value="" /></li>
        </ul>
        </form>
    </div>
    <div class="box6">
    	<div class="con_left">
    		<div class="con_top">热门推荐</div>
            <div class="box_con">
                <ul class="con_ul">
                    <li><a href="" title=""><img src="images/product_pic2.jpg" alt="产品图片" /></a></li>
                    <li class="left_name"><a href="#" title="">圆钻石结婚戒指雪花款</a></li>
                    <li class="left_price">单价：<span>￥999</span></li>
                </ul>
                <ul class="con_ul">
                    <li><a href="" title=""><img src="images/product_pic2.jpg" alt="产品图片" /></a></li>
                    <li class="left_name"><a href="#" title="">圆钻石结婚戒指雪ddddddddddddddddddddddddddddddddddddd花款</a></li>
                    <li class="left_price">单价：<span>￥999</span></li>
                </ul> 
                <ul class="con_ul">
                    <li><a href="" title=""><img src="images/product_pic2.jpg" alt="产品图片" /></a></li>
                    <li class="left_name"><a href="#" title="">圆钻石结婚戒指雪花款</a></li>
                    <li class="left_price">单价：<span>￥999</span></li>
                </ul>
                <ul class="con_ul">
                    <li><a href="" title=""><img src="images/product_pic2.jpg" alt="产品图片" /></a></li>
                    <li class="left_name"><a href="#" title="">圆钻石结婚戒指雪ddddddddddddddddddddddddddddddddddddd花款</a></li>
                    <li class="left_price">单价：<span>￥999</span></li>
                </ul> 
                <ul class="con_ul">
                    <li><a href="" title=""><img src="images/product_pic2.jpg" alt="产品图片" /></a></li>
                    <li class="left_name"><a href="#" title="">圆钻石结婚戒指雪ddddddddddddddddddddddddddddddddddddd花款</a></li>
                    <li class="left_price">单价：<span>￥999</span></li>
                </ul> 
                <ul class="con_ul">
                    <li><a href="" title=""><img src="images/product_pic2.jpg" alt="产品图片" /></a></li>
                    <li class="left_name"><a href="#" title="">圆钻石结婚戒指雪ddddddddddddddddddddddddddddddddddddd花款</a></li>
                    <li class="left_price">单价：<span>￥999</span></li>
                </ul>                                 
            </div>           
        </div>
        <div class="con_right">
            <ul class="tabs">
                <li id="tb_1" class="hot" onmouseover="HoverLi(1,3,'tb_','in_')"><b></b><a class="hot1" href="#">商品详情</a><span></span></li>
                <li id="tb_2" class="normaltab" onmouseover="HoverLi(2,3,'tb_','in_')"><b></b><a class="hot2" href="#">用户评价</a><span></span></li>
                <li id="tb_3" class="normaltab" onmouseover="HoverLi(3,3,'tb_','in_')"><b></b><a class="hot3" href="#">商品销售记录</a><span></span>
                </li>           
            </ul>           
            <div class="box_con1">
                <div class="nohide" id="in_1">
                	<div>
                        <p class="title">神奇变色杯，浪漫一"辈"子！</p>
                        <p> 通过国际食品安全资格认证</p>
                        <p> 特级出口品，严格筛选，100个杯子，只有30-40个能达到出口标准！</p>
                        <p>即"FDA"无毒测试），确保安全健康</p>
                        <p>品牌承诺：质量问题免费退换，购物更放心！</p>
                        <p>中国美院设计师原创设计，进口设备与耗材，完美品质非一般小作坊可比！</p>
                        <p><img src="images/product_pic4.jpg" alt="图片" /></p>
                        <p><span class="title">好消息：</span>变色杯升级至磨砂效果，遮盖效果更佳，升级不加价！</p>
                        <p><img src="images/product_pic5.jpg" alt="图片" /></p>
                    </div>  
                    <div class="box_con2">
                        <div class="con_top2">用户评价</div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>                                                
                    </div>
                    <div class="box_con3">
                        <div class="page2">
                            <a class="prev" href="#">上一页</a>
                            <a href="#">1</a><a class="current" href='#'>2</a><a href='#'>3</a><a href='#'>4</a><a href='#'>5</a><span class='text'>...</span><a href='#'>6</a>
                            <a class="next" href="#">下一页</a>
                        </div>
                    </div>                                     
                </div>	
                <div class="hide" id="in_2">
					<div class="box_con2">
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>    
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>
                        <div class="com_con">
                            <div class="title_user"><a href="#" title="">alleny *** 说：</a></div>
                            <div class="com_con1">
                                <div class="com_txt">蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错蛮不错，就是黑的时候图案有点明显，还有手柄那没图片，总体来说还不错，给个好评吧</div>
                                <div class="com_time">2010/8/24/ 21:51</div>
                            </div>
                        </div>                                                                                                                    
                    </div>
                    <div class="box_con3">
                        <div class="page2">
                            <a class="prev" href="#">上一页</a><a href="#">1</a><a class="current" href='#'>2</a><a href='#'>3</a><a href='#'>4</a><a href='#'>5</a><span class='text'>...</span><a href='#'>6</a><a class="next" href="#">下一页</a>
                        </div>
                    </div>                          	
                </div>
                <div class="hide" id="in_3">
					<table>
                        <tr>
                            <th width="10%">买家</th>
                            <th width="60%">宝贝名称</th>
                            <th width="10%">购买数量</th>
                            <th width="20%">成交时间</th>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                        <tr>
                            <td align="center"><strong>kjioupp</strong></td>
                            <td>[1001－2000个买家信用积分，请点击查看详情] /O2 氧气生活/ 田园风格天然草编布艺收纳筐 大小2个入套装 </td>
                            <td align="center">1</td>
                            <td align="center">2010-09-13 22:36:07</td>
                        </tr>
                    </table>
                    <div class="box_con3">
                        <div class="page2">
                            <a class="prev" href="#">上一页</a><a href="#">1</a><a class="current" href='#'>2</a><a href='#'>3</a><a href='#'>4</a><a href='#'>5</a><span class='text'>...</span><a href='#'>6</a><a class="next" href="#">下一页</a>
                        </div>
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
