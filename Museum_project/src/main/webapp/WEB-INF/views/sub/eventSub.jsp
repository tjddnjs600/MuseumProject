<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>

<div class="sub-visual">
	<img alt="sub_visual" src="../../resources/img/sub_visual.jpg">
</div>

<div id="contain" class="clearfix">
	<div id="lnb">
		<div class="lnb-wrap">
			<h2>교육프로그램</h2>
			<ul>
				<li class="pick"><a href="index.jsp?pg=esub">단체관람</a></li>
				<li><a href="index.jsp?pg=es">체험</a></li>
			</ul>
		</div>
		<div class="left-bnr">
			<ul>
				<li><a href="index.jsp?pg=cal" class="icon1">교육예약</a></li>
				<li><a href="#" class="icon2">찾아오시는 길</a></li>
				<li><a href="#" class="icon3">관람안내</a></li>
				<li><a href="index.jsp?pg=list" class="icon4">박물관소식</a></li>
			</ul>
		</div>
	</div>

	<div class="contentArea">
		<div class="sub-title">
			<h2 class="btit">단체관람</h2>
			<div class="path">
				<img alt="home" src="resources/img/home.gif"> 교육프로그램 <span
					class="arrow">></span> 단체관람
			</div>
		</div>

		<div class="real-cont">
			<div id="demo" class="carousel slide" data-ride="carousel">

				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>

				<!-- The slideshow -->
				<div class="img-inner">
					<div class="carousel-item active">
						<img class="e-img" src="../../resources/img/sub-event1.jpg" alt="Los Angeles">
					</div>
					<div class="carousel-item">
						<img class="e-img" src="../../resources/img/sub-event2.jpg" alt="Chicago">
					</div>
					<div class="carousel-item">
						<img class="e-img" src="../../resources/img/sub-event3.jpg" alt="New York">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="carousel-control-prev" href="#demo" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</a> <a class="carousel-control-next" href="#demo" data-slide="next">
					<span class="carousel-control-next-icon"></span>
				</a>
			</div>
			<div class="mgb40">
				<p>떡 박물관의 단체 관람은 여러분을 떡에 관한 많은 이야기 세상으로 안내할 것입니다. 
				시절마다 달리 먹는 떡, 만드는 방법에 따라 분류되어 있는 떡, 
				통과의례 상차림의 떡 등 100여 가지의 다양한 떡들을 만나볼 수 있습니다. 
				가끔 교과서에서나 접하던 떡 만드는 도구와 이제는 사라져가는 떡에 관한 풍속을 배울 수 있는 좋은 
				기회가 될 것입니다.</p>
			</div>
			<h3 class="doc-tit">단체관람안내</h3>
			<div id="s-doc" class="doc-cnt mgb40">
				<ul>
					<li><strong>- 시간</strong> : 월요일~토요일(11시, 14시)</li>
					<li><strong>- 최소 예약가능 인원</strong> : 20명 이상</li>
					<li><strong>- 소요시간</strong> : 30~40분(해설사 동행)</li>
				</ul>
			</div>
			<h3 class="doc-tit">내용및관람료</h3>
			<table class="table01 mgb7">
				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">36개월~19세 미만</th>
						<th scope="col">성인</th>
						<th scope="col">36개월 미만, 65세 이상</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>해설사 동행 관람</th>
						<td>2,000원</td>
						<td>3,000원</td>
						<td>무료</td>
					</tr>
				</tbody>
			</table>
			<p class="mgb20">
				* 예약은 최소 일주일전까지 해주셔야 합니다.<br>
				* 떡박물관에서 진행하는 프로그램 이외의 학습활동은 금지 합니다.
			</p>
			
			<a href="/booking/calendar" class="btn-app">예약하러가기</a>
		</div>
	</div>
</div>

<jsp:include page="../common/footer.jsp"></jsp:include>