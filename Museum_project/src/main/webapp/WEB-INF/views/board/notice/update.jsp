<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../common/header.jsp"></jsp:include>
<jsp:include page="../../common/nav.jsp"></jsp:include>

<div class="container">
  <h2>글 수정하기</h2>
  <form action="./notice" method="post">
  	<c:set var="nno" value="${param.nno }"/>
	<input type="hidden" name="sv" value="modify">
	<input type="hidden" name="nno" value="${nno }">
    <div class="form-group">
      <label for="text">글제목:</label>
      <input type="text" class="form-control" id="ntitle" placeholder="Enter ntitle" name="ntitle">
    </div>
    <div class="form-group">
      <label for="text">글내용:</label>
      <textarea class="form-control" rows="5" id="ncontent" name="ncontent"></textarea>
    </div>
    <div class="form-group">
      <label for="text">이미지:</label>
      <input type="text" class="form-control" id="imgfile" placeholder="Enter imgfile" name="imgfile">
    </div>
    
    <button type="submit" class="btn btn-primary">수정하기</button>
  </form>
</div>

<jsp:include page="../../common/footer.jsp"></jsp:include>