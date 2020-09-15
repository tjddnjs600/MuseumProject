<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>

<div class="container">
  <h2>과정 삭제</h2>
    <div class="form-group">
      <label for="etitle">과정명:</label>
      <input type="text" class="form-control" id="etitle">
    </div>
    <div class="form-group">
    <button class="btn btn-primary" type="button" id="rmBtn">삭제하기</button>
	</div>
</div>
<script>
	$(function() {
		$("#rmBtn").on("click",function(){
			let etitleVal = $("#etitle").val();
			
			$.ajax({
				url: "./event/remove",
				type: "post",
				data:{etitle:etitleVal},
				success: function(result) {
					if (result > 0) {
						alert("삭제를 완료했습니다.");
						location.replace("index.jsp?pg=cal");
					} else {
						alert("실패");
					}
				}
			});
			
		});
	});
</script>

<jsp:include page="../common/footer.jsp"></jsp:include>