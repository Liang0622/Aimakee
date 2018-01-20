$(function(){
	//页面跳转过来时接受参数
	var search=window.location.search;
	if(search==null||search.trim()==""){
		pageControllNoSearch();
	}else{
		var pcid=search.substring(1,5);
		var lev=search.substring(5,6);
		var level=parseInt(lev);//将字符串转为int类型的数据
		var pcIdvalue=search.substring(7);
		pageControllBySearch(pcIdvalue,level)
	}


	//左侧目录展示
	function menuInit(parentId,level){
		var lev=level+1;
		//var $menu_top_span=$(".menu_top").children();//目录表头
			//$menu_top_span.html(categoryName);
		//目录详细
		var $menu_con=$(".menu_con");
		$.getJSON("proMenuServlet",{"categoryId":parentId,"level":lev},processProMenu);
		function processProMenu(data){
			$menu_con.empty();
			$(data).each(function(i){
				$menu_con.append("<li cId='"+$(data)[i].id+"' lev='"+$(data)[i].type+"'><a  title=''>"+$(data)[i].name+"<span></span></a></li>");
			})
			//在回调函数中写事件，保证事件可以被Ajax加载的代码调用
			$("li[cId]").click(function(){
				$("li[cId]").removeClass("current_li");
				$(this).addClass('current_li');
				//在此添加Ajax刷新主题商品页面
				var cId=$(this).attr("cId");
				var lev=$(this).attr("lev");
				var cName=$(this).children().text();
				//实现页面加载时的分页显示
				productInit(cId,lev,1); 
			})
		}
	}
	
	//加载所有数据库中的所有商品
	function allProductproductInit(currentPage){
		var pageCount="";//定义当前搜索数据的总页数
		//发送Ajax请求，获得页面要加载的数据
		$.getJSON("productShowByPageServlet","curPage="+currentPage,processProduct);
	}
	
	//商品精确搜索，实现分页的方法
	function productInit(categoryId,level,currentPage){
		var pageCount="";//定义当前搜索数据的总页数
		//发送Ajax请求，获得页面要加载的数据
		$.getJSON("productShowByPageServlet",
				{"categoryId":categoryId,"level":level,"curPage":currentPage},
				processProduct);
	}
	//商品数据获得后的回调函数
	function processProduct(data){//查询成功后的回调函数
		$("#pro_box").empty();
		//在页面展示数据
		$(data).each(function(i){
			if(this.page!=null){
				pageCount=this.page.pageCount;
				currentPage=this.page.currentPage;
			}
			$("#pro_box").append(
					 "<ul class=\"pro_con1\">                                                                                                                         	 "
	            	+"<li class=\"pro_img\"><a href='product_detailServlet?productId="+$(data)[i].id+"' title=\"\"><img src=\"images/product_pic1.jpg\" alt=\"产品图片\" /></a></li>                        		"
	                +"<li class=\"pro_name\"><a href='product_detailServlet?productId="+$(data)[i].id+"' title=\"\" >"+$(data)[i].name+"</a></li>                                                                  		"
	                +"<li class=\"pro_price\"></span> 会员价:<span>￥"+$(data)[i].price+"</span></li>                                                  			"
	                +"<li class=\"pro_custom\"><a href='product_detailServlet?productId="+$(data)[i].id+"' title=\"\"><img src=\"images/product_btn5.jpg\" width=\"80\" height=\"18\" alt=\"我要定制\" /></a></l\"i>	\""
	                +"</ul>                                                                                                                                          	"
			);  
		})
		$("#pageCount").text(pageCount);
		$("a.current").text(currentPage);
		pageStyleChange(currentPage,pageCount)
	} 
	//页面改变，分页样式变化控制
	function pageStyleChange(currentPage,totlePage){
		if(currentPage==1){
			$("#first_page").hide();
			$("#prev_page").hide();
		}else{
			$("#first_page:hidden").show();
			$("#prev_page:hidden").show();
		}
		if(currentPage==pageCount){
			$("#last_page").hide();
			$("#next_page").hide();
		}else{
			$("#last_page:hidden").show();
			$("#next_page:hidden").show();
		}
	}

	//所有商品的页面控制方法
	function pageControllNoSearch(){
		//页面加载时初始化商品信息
		pageInitNoSearch();
		function pageInitNoSearch(){
			var pageIndex=1;
			menuInit(0,0);
			$("#testClick").click(function(){
				$(".menu_con>li>a").removeClass("current_li");
				$(this).addClass("current_li");
			})
			allProductproductInit(pageIndex);//初始页面显示首页
		}
		//点击下一页
		$("#next_page").click(function(){
			var curPage=$("a.current").text();
			var pageIndex=parseInt(curPage)+1;
			//查询数据库中的数据
			allProductproductInit(pageIndex);
		})
		//点击上一页
		$("#prev_page").click(function(){
			var curPage=$("a.current").text();
			var pageIndex=parseInt(curPage)-1;
			//查询数据库中的数据
			allProductproductInit(pageIndex);
			
		})
		//点击首页
		$("#first_page").click(function(){
			var curPage=$("a.current").text();
			var pageIndex=1;
			//查询数据库中的数据
			allProductproductInit(pageIndex);
			
		})
		//点击尾页
		$("#last_page").click(function(){
			var pageIndex=pageCount;
			//查询数据库中的数据
			allProductproductInit(pageIndex);
			
		})
		//输入数字跳页
		$("#skipPage").click(function(){
			var pageIndex=$("input.page_txt").val();
			var totleCount=parseInt($("#pageCount").text());
			pageIndex=pageIndex>totleCount?totleCount:pageIndex;
			pageIndex=pageIndex<1?1:pageIndex;
			allProductproductInit(pageIndex);
		})
	}

	//附带查询的页面控制
	function pageControllBySearch(pcIdvalue,level){
		//页面加载即初始化
		pageInitBySearch(pcIdvalue,level)
		//携带参数的页面初始化方法
		function pageInitBySearch(pcIdvalue,level){
			if(pcid=="pcId"){
				menuInit(pcIdvalue,level);
				productInit(pcIdvalue,level,1);//页面跳转到商品页面即加载的商品
			};
			$("#testClick").click(function(){
				$(".menu_con>li>a").removeClass("current_li");
				$(this).addClass("current_li");
			})
			
		}
		//点击下一页
		$("#next_page").click(function(){
			var curPage=$("a.current").text();
			var pageIndex=parseInt(curPage)+1;
			//查询数据库中的数据
			productInit(pcIdvalue,level,pageIndex);
			
		})
		//点击上一页
		$("#prev_page").click(function(){
			var curPage=$("a.current").text();
			var pageIndex=parseInt(curPage)-1;
			//查询数据库中的数据
			productInit(pcIdvalue,level,pageIndex);
			
		})
		//点击首页
		$("#first_page").click(function(){
			var curPage=$("a.current").text();
			var pageIndex=1;
			//查询数据库中的数据
			productInit(pcIdvalue,level,pageIndex);
			
		})
		//点击尾页
		$("#last_page").click(function(){
			var curPage=$("a.current").text();
			var pageIndex=pageCount;
			//查询数据库中的数据
			productInit(pcIdvalue,level,pageIndex);
			
		})
		//输入数字跳页
		$("#skipPage").click(function(){
			var pageIndex=$("input.page_txt").val();
			var totleCount=parseInt($("#pageCount").text());
			pageIndex=pageIndex>totleCount?totleCount:pageIndex;
			pageIndex=pageIndex<1?1:pageIndex;
			productInit(pcIdvalue,level,pageIndex);
		})
	}
})
