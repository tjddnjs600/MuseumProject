<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>

<div class="container">
  <h2>모든 예약확인</h2>            
  <table class="table table-hover">
    <thead class="thead-dark">
      <tr>
        <th>예약번호</th>
        <th>과정분류</th>
        <th>예약날짜</th>
        <th>예약시간</th>
        <th>예약자</th>
        <th>전화번호</th>
        <th>인원수</th>
        <th>예약 취소</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${blist }" var="bvo">
      	<tr>
	        <td class="bno">${bvo.bno }</td>
	        <td>${bvo.bcate }</td>
	        <td>${bvo.bdate }</td>
	        <td>${bvo.btime }</td>
	        <td>${bvo.bname }</td>
	        <td>${bvo.bphone }</td>
	        <td>${bvo.bnumber }</td>
	        <td>
	        	<button type="button" class="btn btn-danger rmBt">강제 취소</button>
	        </td>
	    </tr> 
      </c:forEach>
    </tbody>
  </table>
</div>

<script>
	$(function() {
		$(".rmBt").on("click",function(){
			let tr = $(this).closest("tr");
			let bnoVal = $(tr).children(".bno").text();
			
			$.ajax({
				url:"./book?sv=aRemove",
				type:"post",
				data:{bno:bnoVal}
			}).done(function(){
				alert("삭제되었습니다");
			}).fail(function() {
				alert("삭제 오류");
			}).always(function() {
				location.replace("./book?sv=aList");
			});;
			
		});
	});
</script>

<jsp:include page="../common/footer.jsp"></jsp:include>