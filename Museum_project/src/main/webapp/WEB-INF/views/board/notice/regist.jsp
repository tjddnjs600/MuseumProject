<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../common/header.jsp"></jsp:include>
<jsp:include page="../../common/nav.jsp"></jsp:include>

<div class="container">
  <h2>공지사항 등록</h2>
  <form action="/board/notice/regist" method="post">
	<input type="hidden" name="sv" value="regist">
    <div class="form-group">
      <label for="text">글제목:</label>
      <input type="text" class="form-control" id="ntitle" placeholder="Enter ntitle" name="ntitle">
    </div>
    <div class="form-group">
      <label for="nwriter">작성자: ${adInfo.adnick }</label>
      <input type="hidden" id="nwriter" name="nwriter" value="${adInfo.adnick }">
    </div>
    <div class="form-group">
      <label for="text">글내용:</label>
      <textarea class="form-control" rows="5" id="ncontent" name="ncontent"></textarea>
    </div>
    <div class="form-group">
      <label for="text">이미지주소:</label>
      <input type="text" class="form-control" id="imgfile" placeholder="Enter imgfile" name="imgfile">
    </div>
    
    <button type="submit" class="btn btn-primary">등록하기</button>
  </form>
</div>

<jsp:include page="../../common/footer.jsp"></jsp:include>