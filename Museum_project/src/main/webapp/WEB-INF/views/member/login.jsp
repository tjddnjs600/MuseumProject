<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>

<div id="container">

	<div class="real-cont a-join">
		<form action="/member/login" method="post">
			<div class="reser-check">
				<h2 class="btit">관리자 로그인</h2>
				<div class="i-wrap">
					<div class="group">
						<input type="text" id="adid" name="adid" placeholder="아이디">
					</div>
					<div class="group">
						<input type="password" placeholder="비밀번호" id="adpwd" name="adpwd">
					</div>
					<input type="submit" value="로그인" class="c-submit">
				</div>
			</div>
		</form>
	</div>
</div>

<jsp:include page="../common/footer.jsp"></jsp:include>