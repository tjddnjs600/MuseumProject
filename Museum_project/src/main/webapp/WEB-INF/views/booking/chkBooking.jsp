<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>

<c:set var="fail" value="${fail }"/>
<div id="container">

	<div class="sub-tab">
		<ul class="clearfix">
			<li><a href="/event/calendar">온라인 예약</a></li>
			<li class="active"><a href="/booking/chkBooking">예약 조회</a></li>
		</ul>
	</div>
	
	<div class="real-cont">
		<form action="/booking/bdetail" method="get">
			<div class="reser-check">
				<h2 class="btit">예약조회</h2>
				<div class="i-wrap">
					<div class="group">
						<input type="text" id="bname" name="bname" placeholder="예약자명">
					</div>
					<div class="group">
						<input type="text" placeholder="휴대폰 번호 입력(-없이 입력해 주세요.)" id="pwd" name="bphone">
					</div>
					<input type="submit" value="예약조회" class="c-submit">
				</div>
			</div>
		</form>
	</div>
</div>


<jsp:include page="../common/footer.jsp"></jsp:include>