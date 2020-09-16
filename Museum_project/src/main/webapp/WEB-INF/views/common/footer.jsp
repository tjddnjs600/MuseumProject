<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Footer -->
  <footer>
    <div class="foot-link">
      <ul class="contain clearfix">
        <li><a href="#">박물관 소개</a></li>
        <li><a href="#">교육프로그램</a></li>
        <li><a href="#">개인정보취급방침</a></li>
        <li><a href="#">이메일수집거부</a></li>
        <li><a href="#">찾아오시는 길</a></li>
      </ul>
    </div>
    <div class="foot-info">
      <div class="contain">
        <div class="f-info">
          <address>
            서울시 종로구 돈화문로 71  |  대표전화 : 02-741-5447  |  팩스 : 02-741-7848
          Copyright 2017 by 떡박물관. All Rights Reserved.
          </address>
        </div>
        <div class="f-logo">
          <a href="#"><img alt="f-logo" src="../../resources/img/foot_logo.jpg"></a>
          <a href="#"><img alt="f-logo" src="../../resources/img/foot_logo2.jpg"></a>
        </div>
        <div class="f-cs">
          <h4>관람 및 예약문의</h4>
          <p>02.741.5447</p>
        </div>
      </div>
    </div>
  </footer>
  
<script>
$(function() {
	
	$.getJSON("/board/newList.json", function(res) {
		console.log(res);
		let ulTag = '<ul class="notice-wrap" >';
		for (let nvo of res) {
			console.log(nvo.nno);
			ulTag += '<li><a href="/board/notice/detail?nno='+nvo.nno+'">'+nvo.ntitle+'</a><span>'+moment(nvo.nregdate).format('YYYY-MM-DD')+'</span></li>';
		}
		ulTag += '</ul>';
		$("#newNotice").append(ulTag);
	}).fail(function() {
		alert("가져오기 실패");
	});
	
	
	let msg = '<c:out value="${msg}"/>';
	if (msg != '') {
	  alert(msg);
	}	
});
</script>  

</body>
</html>