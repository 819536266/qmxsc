$(document).ready(function() {
	//顶部导航显示js
        $(".menu-item .menu").hover(function() {
            $(this).find(".menu-bd").show()
        },function() {
            $(this).find(".menu-bd").hide()
        });
		
        $(".search-type").hover(function() {
            $(this).css({
                height: "auto",
                overflow: "visible"
            })
        },
        function() {
            $(this).css({
                height: 36,
                overflow: "hidden"
            })
        });  
		     
        $(".category-box-border .home-category").hover(function() {
            $(".expand-menu").css("display", "inline-block");
        },
		function() {
            $(".expand-menu").css("display", "none")
        });
		//右侧导航回到顶部
        $(window).scroll(function() {
            if ($(this).scrollTop() > $(window).height()) {
                $(".returnTop").show()
            } else {
                $(".returnTop").hide()
            }
        });
        $(".returnTop").click(function() {
            $("body,html").animate({
                scrollTop: 0
            },
            800);
            return false
        });
		//右侧导航js
        $(".quick-login .quick-links-a,.quick-login .quick-login-a,.customer-service-online a").click(function() {
            $(".pop-login,.pop-mask").show()
        });
        $(".quick-area").mouseover(function() {
            $(this).find(".quick-sidebar").show()
        });
        $(".quick-area").mouseout(function() {
            $(this).find(".quick-sidebar").hide()
        });
        $(".right-sidebar-panel li").mouseenter(function() {
            $(this).children(".popup").stop().animate({
                left: -92,
                queue: true
            });
            $(this).children(".popup").css("visibility", "visible");
            $(this).children(".ibar_login_box").css("display", "block")
        });
        $(".right-sidebar-panel li").mouseleave(function() {
            $(this).children(".popup").css("visibility", "hidden");
            $(this).children(".popup").stop().animate({
                left: -121,
                queue: true
            });
            $(this).children(".ibar_login_box").css("display", "none")
        });
});
$(document).ready(function() {
     $(".list").hover(function() {
            $(this).find(".categorys").show()
        },
        function() {
            $(this).find(".categorys").hide()
        })
});

$(document).ready(function(){
	$(".sidebar-cartbox-trigger .span").on("click",function(){
        window.location.href="login.html";
	})
});

$(document).ready(function(){
    $(document).keydown(function(e){
        e = e || window.event;
        var keycode = e.which ? e.which : e.keyCode;
        if(keycode == 38){
            if(jQuery.trim($("#append").html())==""){
                return;
            }
            $("#keyword").blur();
            var index = $(".addbg").prevAll().length;
            if(index == 0){
                $(".item").removeClass('addbg').eq($(".item").length).addClass('addbg');
            }else{
                $(".item").removeClass('addbg').eq(index-1).addClass('addbg');
            }
            event.preventDefault();
        }else if(keycode == 40){
            if(jQuery.trim($("#append").html())==""){
                return;
            }
            $("#keyword").blur();
            if($(".item").hasClass("addbg")){
            	 var index = $(".addbg").prevAll().length;
                 if(index == $(".item").length-1){
                     $(".item").removeClass('addbg').eq(0).addClass('addbg');
                 }else{
                     $(".item").removeClass('addbg').eq(index+1).addClass('addbg');
                 }
                
            }else{
                $(".item").removeClass('addbg').eq(0).addClass('addbg');
            }
            event.preventDefault();
        }else if(keycode == 13){        	
        	$("#keyword").blur();
            var value = $(".addbg").text();
            if(value==""){
            	value=$("#keyword").val();
            };
            $("#keyword").val(value);
            $("#append").hide().html("");
            $("#btn_search_box_submit").trigger("click");
        }
    });
});

function showMask() {
	$(".login_bg").css("height", $(document).height());
	$(".login_bg").css("width", $(document).width());
	$(".login_bg").show();
	$(".page_login").show();
}
function hideMask() {
	$(".login_bg").hide();
	$(".page_login").hide();
}
$(document).ready(function(){
	$('.detail-content p').find('br').remove();
})
