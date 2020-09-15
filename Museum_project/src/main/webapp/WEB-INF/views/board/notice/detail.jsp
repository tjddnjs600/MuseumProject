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
				<img alt="home" src="../../resources/img/home.gif"> 박물관소식 <span
					class="arrow">></span> 공지사항
			</div>
		</div>

		<div class="real-cont">
			<div class="list-group">
				<c:if test="${nvo ne null}">
					<a href="#" class="list-group-item list-group-item-action">글번호
						: <span id="nno">${nvo.nno }</span>
					</a>
					<a href="#" class="list-group-item list-group-item-action">글제목
						: ${nvo.ntitle }</a>
					<a href="#" class="list-group-item list-group-item-action">작성자
						: ${nvo.nwriter }</a>
					<a href="#" class="list-group-item list-group-item-action">등록일
						: ${nvo.nregdate }</a>
					<a href="#" class="list-group-item list-group-item-action">조회수
						: ${nvo.checkcount }</a>
					<a href="#" class="list-group-item list-group-item-action">글내용
						: ${nvo.ncontent }</a>
					<c:if test="${nvo.imgfile ne null}">
						<a href="#" class="list-group-item list-group-item-action">
							<img src="${nvo.imgfile }">
						</a>
					</c:if>
				</c:if>
			</div>


			<c:if test="${adInfo.adnick eq '떡박물관' }">
				<ul class="list-group list-group-horizontal">
					<li class="list-group-item"><a
						href="index.jsp?pg=modi&nno=${nvo.nno }">수정</a></li>
					<li class="list-group-item"><a
						href="./notice?sv=remove&nno=${nvo.nno }">삭제</a></li>
				</ul>
			</c:if>
		</div>
	</div>
</div>

<jsp:include page="../../common/footer.jsp"></jsp:include>
