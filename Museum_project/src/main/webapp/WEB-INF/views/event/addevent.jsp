<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>


<div class="container">
  <h2>과정 추가</h2>
    <form action="/event/addevent" method="post">
    <div class="form-group">
      <label for="etitle">과정 제목:</label>
      <input type="text" class="form-control" id="etitle" name="title">
    </div>
    <div class="form-group">
      <label for="estart">과정 시작일:</label>
      <input type="text" class="form-control" id="estart" name="start">
    </div>
    <div class="form-group">
      <label for="estart">참여 인원수:</label>
      <input type="text" class="form-control" id="emember" name="emember">
    </div>
    <button class="btn btn-primary" type="submit" id="okBtn">등록하기</button>
    </form>
</div>

<script>
/* 	$(function() {
		$("#okBtn").on("click",function(){
			let etitleVal = $("#etitle").val();
			let estartVal = $("#estart").val();
			
			$.ajax({
				url: "./event/add",
				type: "post",
				data:{etitle:etitleVal,estart:estartVal},
				success: function(result) {
					if (result > 0) {
						alert("등록을 완료했습니다.");
						location.replace("index.jsp?pg=cal");
					} else {
						alert("실패");
					}
				}
			});
			
		});
	}); */
</script>

<jsp:include page="../common/footer.jsp"></jsp:include>