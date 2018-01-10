$(function(){
	var pcid=window.location.search.substring(1,5);
	var pcIdvalue=window.location.search.substring(6);
	if(pcid=="pcId"){
		var $menu_top_span=$(".menu_top").children();
		$.get("viewMenuServlet","pcId="+pcIdvalue,function(data){
			$menu_top_span.empty();
			$menu_top_span.html(data)
		},"text");
		var $menu_con=$(".menu_con");
		$.getJSON("thirdMenuServlet","opr="+pcIdvalue,callBack);
		function callBack(data){
			$menu_con.empty();
			$(data).each(function(i){
				$menu_con.append("<li opr='"+$(data)[i].id+"'><a  title=''>"+$(data)[i].name+"<span></span></a></li>");
			})
			//在回调函数中写事件，保证事件可以被Ajax加载的代码调用
			$("li[opr]").click(function(){
				$("li[opr]").removeClass("current_li");
				$(this).addClass('current_li');
				//在此添加Ajax刷新主题商品页面
				var opr=$(this).attr("opr");
				//实现分页显示
				var pageCount="";
				var curPage=$(".page>.current").text();
				$.getJSON("productShowByPageServlet",{opr3:opr,currentPage:curPage},processLevel3);
				function processLevel3(data){
					$("#pro_box").empty();
					$(data).each(function(i){
						
						$("#pro_box").append(
								 "<ul class=\"pro_con1\">                                                                                                                         	 "
			                	+"<li class=\"pro_img\"><a href=\"product_detail.jsp\" title=\"\"><img src=\"images/product_pic1.jpg\" alt=\"产品图片\" /></a></li>                        		"
			                    +"<li class=\"pro_name\"><a href=\"product_detail.jsp\" title=\"\" >"+$(data)[i].name+"</a></li>                                                                  		"
			                    +"<li class=\"pro_price\">单价:<span class=\"font_1\">￥4444</span> 会员价:<span>￥"+$(data)[i].price+"</span></li>                                                  			"
			                    +"<li class=\"pro_custom\"><a href=\"product_detail.jsp\" title=\"\"><img src=\"images/product_btn5.jpg\" width=\"80\" height=\"18\" alt=\"我要定制\" /></a></l\"i>	\""
			                    +"</ul>                                                                                                                                          	"
						);                                                                                                                                                       
					})
				} 
			})
		}
		//$.getJSON("productShowByPageServlet","opr="+pcIdvalue,callBack);
		
		//$menu_con.load("thirdMenuServlet","opr="+pcIdvalue);
	};
	
	$("#testClick").click(function(){
		$(".menu_con>li>a").removeClass("current_li");
		$(this).addClass("current_li");
	})
	
	//页面跳动控制
	var curPageValue=$(".page>.current").text();
	if(curPageValue==1){
		$(".page>.prev_disabled").hide();
	}else{
		$(".page>.prev_disabled").show();
	}
})
//点击上一页的事件
$(".page>.prev_disabled").click(function(){
	var curPageValue=$(".page>.current").text();
	if(curPageValue-1==1){
		$(".page>.prev_disabled").hide()
		$(".page>a").text($(".page>a").text()+1);
		
	}
	
})
