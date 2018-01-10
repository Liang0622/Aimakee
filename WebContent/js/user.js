/*$(function(){
	$(".user_icon5").click(function(){
		$(".user_con").load("user_info_servlet");
	});
	
	
	$(".user_icon8").click(function(){
		$(".user_con").load("user_comment_servlet");
	});
	$("[name='birthdayYear']").mouseover(function(){
		var today=new Date();
		curYear=today.getFullYear();
		$(this).empty();
		for(var year=1950;year<=curYear;year++){
			$(this).append("<option value='"+year+"'>"+year+"</option>");
		}
	});
	$("[name='birthdayMonth']").mouseover(function(){
		$(this).empty();
		for(var month=1;month<=12;month++){
			$(this).append("<option value='"+month+"'>"+(month<10?"0"+month:month)+"</option>");
		}
	});
	$("[name='birthdayDay']").mouseover(function(){
		var optYear=$("[name='birthdayYear']").val();
		var optMonth=$("[name='birthdayMonth']").val();
		$(this).empty();
		var dayCount;
		switch(parseInt(optMonth)){
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:dayCount=31;break;
		case 4:
		case 6:
		case 9:
		case 11:dayCount=30;break;
		case 2:
			if(optYear%100==0&&optYear%400==0||optYear%4==0){
				dayCount=29;
			}else{
				dayCount=28;
			}
			break;
		}
		for(var day=1;day<=dayCount;day++){
			$(this).append("<option value='"+day+"'>"+(day<10?"0"+day:day)+"</option>");
		}
	});
	
})*/

$(function(){
	$(".user_menu li a").click(function(){
		$(".user_menu li a").removeClass("hot");
		$(this).addClass("hot");
		var url=$(this).parent().attr("class");
		$(".user_con").load("userServlet","opr="+url);
	})
})


