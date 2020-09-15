$(document).ready(function(){
	$("#gnb_bg").hide();
	$(".sub_gnb").hide();
            
    
    $(".m_gnb_cate, .sub_gnb, #gnb_bg").hover(function(){
    	$('#gnb_bg').stop().slideDown('fast');
    	$('.sub_gnb').stop().slideDown('fast');
    }, function(){
    	$('#gnb_bg').stop().slideUp('fast');
    	$('.sub_gnb').stop().slideUp('fast');
    });
    
    $(".sub_gnb a").hover(function(){
    	$(this).css("color","#833540");
    }, function(){
    	$(this).css("color","#3e3e3e");
    });
    
    $(".m_gnb_cate > a").hover(function(){
    	$(this).css("color","#833540");
    }, function(){
    	$(this).css("color","#3e3e3e");
    });

            
});