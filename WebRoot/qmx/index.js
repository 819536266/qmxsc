$(function() {
	
   
    // 首页Tab标签卡滑门切换
    if ($(".tabs-nav > li > h3")) {

        $(".tabs-nav > li > h3").bind('click', (function(e) {

            if (e.target == this) {

                var tabs = $(this).parent().parent().children("li");

                var panels = $(this).parent().parent().parent().children(".tabs-panel");

                var index = $.inArray(this, $(this).parent().parent().find("h3"));

                if (panels.eq(index)[0]) {

                    tabs.removeClass("tabs-selected").eq(index).addClass("tabs-selected");

                    var color = $(this).parents(".floor:first").attr("color");					

                    $(this).parents(".tabs-nav").find("h3").css({

                        "background": color,

                        "color": ""

                    });

                    $(this).css({

                        "color": color + " " + color + " #fff",

                        "background": color

                    });

                    panels.addClass("tabs-hide").eq(index).removeClass("tabs-hide");

                }

            }
            getTicket();
        }));

    }

    if ($(".floor-tabs-nav > li")) {

        // 首页楼层Tab标签卡滑门切换
        $(".floor-tabs-nav > li").bind('mouseover', (function(e) {

            var color = $(this).parents(".floor").attr("color");

            $(this).addClass('floor-tabs-selected').siblings().removeClass('floor-tabs-selected');

            $(this).find('h3').css({
				
                'background': color,
				
				'color':"#fff"

            }).parents('li').siblings('li').find('h3').css({

                'color':"#000",

                'background': ''

            });

            $(this).parents('.floor-con').find('.floor-tabs-panel').eq($(this).index()).removeClass('floor-tabs-hide').siblings().addClass('floor-tabs-hide');

        }));

    }


    // 首页banner图轮播
    function banner_play(a, b, c, d) {

        var blength = $(a).length;

        if (blength > 1) {

            $(b).mouseover(function() {

                $(this).addClass(c).siblings().removeClass(c);

                $(a).eq($(this).index()).hide().fadeIn().siblings().fadeOut();

                num = $(this).index();

                clearInterval(bannerTime);

            });

            var num = 0;

            function bannerPlay() {

                num++;

                if (num > blength - 1) {

                    num = 0;

                }

                $(b).eq(num).addClass(c).siblings().removeClass(c);

                $(a).eq(num).hide().fadeIn().siblings().fadeOut();

            }

            var bannerTime = setInterval(bannerPlay, 6000);

            $(d).hover(function() {

                clearInterval(bannerTime);

            },
            function() {

                bannerTime = setInterval(bannerPlay, 6000);

            })

        }

    }

    banner_play('.full-screen-slides li', '.full-screen-slides-pagination li', 'current', '#fullScreenSlides'); // 首页主广告轮播

});

// 首页左侧楼层定位
$(document).ready(function() {
    $(document).scroll(function(){
        var top = $(document).scrollTop();
        if(top > 600){
            $(".elevator-floor").stop().animate({opacity: '1'},50);   
        } else {
            $(".elevator-floor").stop().animate({opacity: '0'},10);
        }; 
		if(top > 750){
		   $(".GO_top").stop().animate({opacity: '1'},100);  
		} else {
            $(".GO_top").stop().animate({opacity: '0'},100);
        }; 
    });
	$('.elevator-floor a').on('click',function(){
	    $(this).addClass('on').siblings().removeClass('on')
	});
	//回到顶部按钮
	$(".GO_top").click(function () {
        var speed = 400;//滑动的速度
        $('body,html').animate({ scrollTop: 0 }, speed);
        return false;
    });
	$(document).scroll(function(){
        var top = $(document).scrollTop();
        if(600<top && top<1254){
			 $('.elevator-floor a').eq(0).addClass('on').siblings().removeClass('on');
	    }else if(1254<top && top < 1908){
			 $('.elevator-floor a').eq(1).addClass('on').siblings().removeClass('on');
	    }else if(1908<top && top < 2562){
			 $('.elevator-floor a').eq(2).addClass('on').siblings().removeClass('on')
	    }else if(2562<top && top < 3216){
			 $('.elevator-floor a').eq(3).addClass('on').siblings().removeClass('on');
	    }else if(3216<top && top < 3870){
			 $('.elevator-floor a').eq(4).addClass('on').siblings().removeClass('on')
	    }else if(3870<top && top < 4524){
			 $('.elevator-floor a').eq(5).addClass('on').siblings().removeClass('on');
	    }else if(4524<top && top < 5178){
			 $('.elevator-floor a').eq(6).addClass('on').siblings().removeClass('on')
	    }else if(5178<top && top < 5832){
			 $('.elevator-floor a').eq(7).addClass('on').siblings().removeClass('on');
	    }else if(5832<top && top < 6486){
			 $('.elevator-floor a').eq(8).addClass('on').siblings().removeClass('on')
	    }else if(6486<top && top < 7140){
			 $('.elevator-floor a').eq(9).addClass('on').siblings().removeClass('on')
	    }else if(7140<top && top < 7794){
			 $('.elevator-floor a').eq(10).addClass('on').siblings().removeClass('on');
	    }else if(7794<top && 8448<top){
			 $('.elevator-floor a').eq(11).addClass('on').siblings().removeClass('on')
	    }
    });
	//楼层二维码
	$(".gz-gzh").hover(function() {
		var show = $(this).parent().css("opacity");
		if(show == "1"){
		  $(".gzhwhfl").show(500); 
		}else if(show == "0"){
		 $(".gzhwhfl").hide();
		};
	},function() {
	    $(".gzhwhfl").hide(500);
	});
});
//楼层颜色
$(document).ready(function() {
   var floorobj =  $('.floor-wh>.floor-list'); 
   floorobj.each(function(i){ 
	      var i=parseInt(i+1);
	      $(this).attr('id',"floor"+i); 
	   }); 
})
//楼层处理轮播图片
$(function() {
    if ($('.wanghangh-floor').length > 0){
        $.each($('.wanghangh-floor'), function(i, v) {
            $(v).hiSlider({
                onInited: function() {
                    $.imgloading.loading();
                }
            });
        });
    }
});
//首页tab切换
$(document).ready(function() {
    $(".floor_hover").mouseenter(function(){
	    $(this).parent().parent().next().find(".floor-middle").hide();
	});
	$(".floor_enter").mouseenter(function(){
	    $(this).parent().parent().next().find(".floor-middle").show();
	});
});

//楼层商品分类5的倍数右边框none
$(document).ready(function() {
    $(".floor-width").find(".item:nth-child(5n)").each(function(){
	    $(this).css("borderRight","none")
	});
});

//公司文化右边距0
$(document).ready(function() {
    $(".ad-groups-more-right").find("li:nth-child(4n)").each(function(){
	    $(this).css("marginRight","0")
	});
});