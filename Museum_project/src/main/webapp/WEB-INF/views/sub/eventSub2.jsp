<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
				<li><a href="index.jsp?pg=esub">단체관람</a></li>
				<li class="pick"><a href="index.jsp?pg=es">체험</a></li>
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
			<h2 class="btit">단체체험</h2>
			<div class="path">
				<img alt="home" src="resources/img/home.gif"> 교육프로그램 <span
					class="arrow">></span> 단체체험
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
						<img class="e-img" src="../../resources/img/sub2-event1.jpg" alt="Los Angeles">
					</div>
					<div class="carousel-item">
						<img class="e-img" src="../../resources/img/sub2-event2.jpg" alt="Chicago">
					</div>
					<div class="carousel-item">
						<img class="e-img" src="../../resources/img/sub2-event3.jpg" alt="New York">
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
				<p>떡 만들기 체험은 요즘 우리 학생들에게는 낯선 음식이 되어 버린 떡을 직접 만들고 먹어 볼 수 있어 색다른 경험이 되고 있습니다.
				빵과 케익같은 단맛에 길들여진 학생들에게 전통의 멋과 맛을 느껴볼 수 있는 체험프로그램입니다. 
				그리하여 학생들에게 떡이 만들기 쉽고 몸에 좋은 음식으로 친근하게 다가갈 수 있을 것이라 기대합니다.</p>
			</div>
			<h3 class="doc-tit">단체체험학습안내</h3>
			<div id="s-doc" class="doc-cnt mgb40">
				<ul>
					<li><strong>- 시간</strong> : 월요일~토요일(10시, 14시, 16시)</li>
					<li><strong>- 최소 예약가능 인원</strong> : 대상에 따라 다름</li>
					<li><strong>- 소요시간</strong> : 90~120분(메뉴에 따라 다름, 떡박물관 관람 포함)</li>
					<li><strong>- 체험가능연령</strong> : 만 4세 이상</li>
				</ul>
			</div>
			<h3 class="doc-tit">주요내용 및 체험 (체험비/1인)</h3>
			<table class="table01 mgb7">
				<thead>
					<tr>
						<th scope="col" height="40">대상</th>
						<th scope="col" colspan="2">유치원, 초등학생</th>
						<th scope="col" colspan="2">중학생 ~ 고등학생</th>
						<th scope="col">대학생(외국인학생 포함)</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>체험비</th>
						<td>10,000원</td>
						<td>15,000원</td>
						<td>15,000원</td>
						<td>20,000원</td>
						<td>30,000원</td>
					</tr>
					<tr>
						<th>입장료</th>
						<td>1,000원 (단체할인)</td>
						<td>1,000원 (단체할인)</td>
						<td>1,000원 (단체할인)</td>
						<td>1,000원 (단체할인)</td>
						<td>2,000원 (단체할인)</td>
					</tr>
					<tr>
						<th>체험메뉴</th>
						<td>절편 1종류</td>
						<td>
							① 절편 1종류+다식<br>
							② 절편 2종류<br>
							③ 김치
						</td>
						<td>
							① 절편 1종류+다식<br>
							② 미니설기떡케이크
						</td>
						<td>
							① 설기떡+앙금꽃장식<br>
							② 보리영양증편<br>
							③ 김치
						</td>
						<td>
							① 떡케이크<br>
							② 쌀베이킹(쌀쿠키)<br>
							③ 쌀베이킹(쌀빵)
						</td>
					</tr>
					<tr>
						<th>최소인원</th>
						<td colspan="2">20인 이상	</td>
						<td colspan="2">15인 이상</td>
						<td>12인 이상</td>
					</tr>
					<tr>
						<th>내용</th>
						<td class="left" colspan="5">
							<ul>
								<li>· 떡박물관 관람(해설사 동행)</li>
								<li>· 이론 - 전통음식 유래 및 이론</li>
								<li>· 실습- 체험 및 시식</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>공통사항</th>
						<td class="left" colspan="5">
							<ul>
								<li>· 최소 일주일 전까지 인터넷 예약필수(www.tkmuseum.or.kr)</li>
								<li>· 입장료 별도, 해설사 동행</li>
								<li>· 수료증 증정(희망 단체는 3일전까지 이메일 tkmuseum@tkmuseum.or.kr 로 명단발송 필요함)</li>
								<li>· 단체예약 취소는 예약 2일전까지만 가능함(당일~1일전 취소 시, 위약금 30% 발생)</li>
								<li>· 기타 체험 메뉴는 별도 문의해주세요.</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
			
			
			<a href="/booking/calendar" class="btn-app">예약하러가기</a>
		</div>
	</div>
</div>

<jsp:include page="../common/footer.jsp"></jsp:include>