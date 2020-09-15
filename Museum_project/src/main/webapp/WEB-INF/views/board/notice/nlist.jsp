<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../../common/header.jsp"></jsp:include>
<jsp:include page="../../common/nav.jsp"></jsp:include>

<div class="sub-visual">
	<img alt="sub_visual" src="../../resources/img/sub_visual.jpg">
</div>

<div id="contain" class="clearfix">
	<div id="lnb">
		<div class="lnb-wrap">
			<h2>박물관 소식</h2>
			<ul>
				<li class="pick"><a href="#">공지사항</a></li>
				<li><a href="#">자주하는질문</a></li>
				<li><a href="#">포토뉴스</a></li>
			</ul>
		</div>
		<div class="left-bnr">
			<ul>
				<li><a href="/event/calendar" class="icon1">교육예약</a></li>
				<li><a href="#" class="icon2">찾아오시는 길</a></li>
				<li><a href="#" class="icon3">관람안내</a></li>
				<li><a href="#" class="icon4">박물관소식</a></li>
			</ul>
		</div>
	</div>

	<div class="contentArea">
		<div class="sub-title">
			<h2 class="btit">공지사항</h2>
			<div class="path">
				<img alt="home" src="../../resources/img/home.gif">
				박물관소식
				<span class="arrow">></span>
				공지사항
			</div>
		</div>

		<div class="real-cont">
			<table class="table table-hover">
				<thead class="thead-dark">
					<tr>
						<th>글번호</th>
						<th>글제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${nlist }" var="nvo">
						<tr>
							<td class="nno">${nvo.nno }</td>
							<td><a class="clink"
								href="/board/notice/detail?nno=${nvo.nno }">${nvo.ntitle }</a></td>
							<td>${nvo.nwriter }</td>
							<td>${nvo.nregdate }</td>
							<td>${nvo.checkcount }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<c:if test="${adInfo.adnick eq '떡박물관' }">
				<ul class="list-group list-group-horizontal">
					<li class="list-group-item"><a href="/board/notice/regist">글등록하기</a></li>
				</ul>
			</c:if>
		</div>
	</div>
</div>

<script>
	$(function() {
		$(".clink").on("click", function() {
			let tr = $(this).closest("tr");
			let nnoVal = $(tr).children(".nno").text();
			console.log("nnoVal: " + nnoVal);

			console.log("nnoVal222: " + nnoVal);
			$.ajax({
				url : "/board/notice/upCount",
				type : "get",
				data : {
					nno : nnoVal
				},
				success : function(result) {
					if (result > 0) {
						console.log("조회수 증가!");
					} else {
						console.log("실패");
					}
				}
			});
		});
	});
</script>

<jsp:include page="../../common/footer.jsp"></jsp:include>