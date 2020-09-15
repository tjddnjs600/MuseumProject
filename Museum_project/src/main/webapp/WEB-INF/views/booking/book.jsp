<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>



<div id="container">
  <div class="sub-tab">
    <ul class="clearfix">
      <li class="active"><a href="/event/calendar">온라인 예약</a></li>
      <li ><a href="/booking/chkBooking">예약 조회</a></li>
    </ul>
  </div>
	
	<div class="reser-wrap">
		<div class="head">
			<h2>단체체험예약</h2>
			<p>허위로 작성된 가입정보일 경우 임의로 삭제처리될 수 있으니 주의해 주세요.</p>
		</div>
		<form action="/booking/book" method="post" id="bookForm">
		  <input type="hidden" id="bphone" name="bphone" value="">
			<div class="mainform">
				<table>
					<tr>
						<th scope="row"><label for="bdate">예약일자</label></th>
						<td><input type="text" id="bdate" name="bdate" class="input2" value="${evo.start }"/></td>
					</tr>
					<tr>
						<th scope="row"><label for="bcate">과정명</label></th>
						<td><input type="text" id="bcate" name="btitle" class="input2" value="${evo.title }"/></td>
					</tr>
					<tr>
						<th scope="row"><label for="btime">예약시간</label></th>
						<td>
							<select class="select" id="btime" name="btime">
        						<option value="오전 10시" selected="selected">오전 10시</option>
        						<option value="오후 2시">오후 2시</option>
      						</select>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="bname">이름</label></th>
						<td><input type="text" id="bname" name="bname" class="input2 name"/></td>
					</tr>
					<tr>
						<th scope="row"><label for="bphone">전화번호</label></th>
						<td>
							<select class="select" id="bphone1">
						        <option value="010" selected="selected">010</option>
						        <option value="011">011</option>
						        <option value="017">017</option>
						        <option value="019">019</option>
						    </select>
						    - <input type="text" class="input2" id="bphone2">
      						- <input type="text" class="input2" id="bphone3">
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="bnumber">인원수</label></th>
						<td>
						  <input type="text" id="bnumber" maxlength="2" name="bnumber" class="input2"/>
						  <span id="memCount"></span>
						</td>
					</tr>
				</table>
			</div>
			<div class="button-f">
				<button type="button" id="bookBt">예약하기</button>
			</div>
		</form>
	</div>
</div>
<script>
$(function() {
	$("#bnumber").on("blur", function() {
		let title = $("#bcate").val();
		let num = $(this).val();
		$.ajax({
			type: "get",
			url: "/event/chkMem",
			data: {title:title},
			success: function(res) {
				let emember = Number(res);
				if (emember < num) {
					$("#memCount").text("예약인원이 가득 찼습니다.").css("color","red");
				} else {
					$("#memCount").text("예약이 가능 합니다.").css("color","#0f0");
				}
			}
		});
	});
	
	
	$("#bookBt").on("click", function() {
		let memCount = $("#memCount").text();
		let bphone1 = $("#bphone1").val();
		let bphone2 = $("#bphone2").val();
		let bphone3 = $("#bphone3").val();
		let bphone = bphone1+bphone2+bphone3;
		if (memCount == "예약인원이 가득 찼습니다.") {
			alert("다른 과정을 선택해 주세요");
		} else {
			$("#bphone").val(bphone);
			$("#bookForm").submit();
		}
	});
});
</script>
<jsp:include page="../common/footer.jsp"></jsp:include>
