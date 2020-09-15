<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>



<div class="container mt">
	<div class="reser-check">
				<h2 class="btit z-i">예약확인</h2>
	</div>
	<div class="cbook">
		<table class="table table-hover">
			<thead class="thead-dark">
				<tr>
					<th>예약번호</th>
					<th>과정이름</th>
					<th>예약날짜</th>
					<th>예약시간</th>
					<th>예약자</th>
					<th>휴대폰번호</th>
					<th>인원수</th>
					<th>예약 수정/취소</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${blist }" var="bvo">
					<tr>
						<td class="bno">${bvo.bno }</td>
						<td class="btitle">${bvo.btitle }</td>
						<td>${bvo.bdate }</td>
						<td>${bvo.btime }</td>
						<td><input size="3" value="${bvo.bname }" name="bname"
							readonly></td>
						<td><input size="11" value="${bvo.bphone }" name="bphone"
							readonly></td>
						<td><input size="3" value="${bvo.bnumber }" name="bnumber"
							readonly></td>
						<td>
							<button type="button" class="btn btn-secondary modBt">예약수정</button>
							<button type="button" class="btn btn-danger rmBt">예약취소</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<script>
	$(function() {
		$(".modBt").on("click",	function(e) {
							e.preventDefault();
							let tr = $(this).closest("tr");
							$(tr).find("input[name=bname]").attr("readonly",
									false);
							$(tr).find("input[name=bphone]").attr("readonly",
									false);
							$(tr).find("input[name=bnumber]").attr("readonly",
									false);

							let newBtn = '<button type="button" class="btn btn-secondary sBt" id="sbmBtn">수정하기</button>';
							let newCBtn = '<button type="button" class="btn btn-danger" id="rebtn">취소하기</button>';
							$(this).next().remove();
							$(this).closest("td").prepend(newCBtn).trigger(
									"create");
							$(this).closest("td").prepend(newBtn).trigger(
									"create");
							$(this).remove();

							$(".sBt").css('margin', '0 4px 0 0');

							$(tr).find("input[name=bname]").focus();

							$("#rebtn").on("click", function(e) {
								history.go(0);
							});
			});

		$(".rmBt").on("click", function() {
			let tr = $(this).closest("tr");
			let bnoVal = $(tr).children(".bno").text();
			let btitleVal = $(tr).children(".btitle").text();
	    let bnumberVal = $(tr).find("input[name=bnumber]").val();
	    console.log(btitleVal);
			
			let input = confirm('예약을 취소하시겠습니까?');
			if (input) {
				$.ajax({
		            url : "/booking/bremove",
		            type : "get",
		            data : {
		              bno : bnoVal,
		              bnumber : bnumberVal,
		              btitle : btitleVal
		            },
		            success : function(res) {
		              if (res == 1) {
		                alert("예약이 취소되었습니다.");
		                history.go(0);
		              } else {
		                alert("오류");
		              }
		            }
		        });
			}
			
		});

		$(document).on("click", "#sbmBtn", function(e) {
					e.preventDefault();
					let tr = $(this).closest("tr");
					let bnoVal = $(tr).children('.bno').text();
					let bnameVal = $(tr).find("input[name=bname]").val();
					let bphoneVal = $(tr).find("input[name=bphone]").val();
					let bnumberVal = $(tr).find("input[name=bnumber]").val();
					

					console.log(bnoVal);
					console.log(bnameVal);
					console.log(bphoneVal);
					console.log(bnumberVal);

					$.ajax({
						url : "/booking/bmodify",
						type : "get",
						data : {
							bno : bnoVal,
							bname : bnameVal,
							bphone : bphoneVal,
							bnumber : bnumberVal
						},
						success : function(res) {
							if (res == 1) {
								alert("예약수정이 완료되었습니다.");
					            $(tr).find("input[name=bname]").attr("readonly", true);
					            $(tr).find("input[name=bphone]").attr("readonly", true);
					            $(tr).find("input[name=bnumber]").attr("readonly", true);
					            history.go(0);
							} else {
								alert("업데이트 오류");
							}
						}
				});
		});
	});
</script>

<jsp:include page="../common/footer.jsp"></jsp:include>