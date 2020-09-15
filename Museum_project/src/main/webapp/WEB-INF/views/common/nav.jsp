<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="adInfo" value="${adInfo }" scope="session" />

<!-- Navigation -->
<nav>
  <div id="top-nav">
    <div class="c_content" id="c_gnb">
      <div id="a_gnb_wrap">
        <ul>
          <li><a href="/">HOME</a></li>
          <c:if test="${adInfo eq null || adInfo eq '' }">
            
            <li><a href="/member/login">관리자 로그인</a></li>
          </c:if>
          <c:if test="${adInfo ne null && adInfo ne '' }">
            <li><a>${adInfo.adnick } 님 로그인</a></li>

            <li><a href="#">갑질하기</a></li>

            <li><a href="/event/addevent">과정추가</a></li>

            <li><a href="/event/rmEvent">과정삭제</a></li>

            <li><a href="/member/logout">로그아웃</a></li>
          </c:if>
        </ul>
      </div>
      <div class="sns-img">
        <a href="https://www.instagram.com/"><img alt="" src="../../resources/img/sns_i.jpg"></a>
        <a href="https://www.facebook.com/"><img alt="" src="../../resources/img/sns_f.jpg"></a>
      </div>
    </div>

  </div>
  
  <div id="main-nav">
  <div id="gnb_bg"></div>
    <div class="c_content" id="m-gnb">
      <h1>
        <a href="/">
          <img alt="logo" src="../../resources/img/logo.jpg">
        </a>
      </h1>
      <div id="m_gnb_wrap">
        <ul class="clearfix">
          <li class="m_gnb_cate"><a href="/sub/introSub">박물관소개</a>
            <ul class="sub_gnb">
              <li><a href="index.jsp?pg=int">관장님 인사말</a></li>
              <li><a href="#">이용안내</a></li>
              <li><a href="#">찾아오시는 길</a></li>
            </ul>
          </li>
          <li class="m_gnb_cate"><a href="#">전시안내</a>
            <ul class="sub_gnb">
              <li><a href="#">상설전시</a></li>
            </ul>
          </li>
          <li class="m_gnb_cate"><a href="/sub/eventSub">교육프로그램</a>
            <ul class="sub_gnb">
              <li><a href="/sub/eventSub">단체관람</a></li>
              <li><a href="/sub/eventSub2">체험</a></li>
            </ul>
          </li>
          <li class="m_gnb_cate"><a href="/event/calendar">교육예약</a>
            <ul class="sub_gnb">
              <li><a id="calevnt" href="/event/calendar">온라인 예약</a></li>
              <li><a href="/booking/chkBooking">예약조회</a></li>
            </ul>
          </li>
          <li class="m_gnb_cate"><a href="#">소장자료</a>
            <ul class="sub_gnb">
              <li><a href="#">유물이야기</a></li>
              <li><a href="#">떡이야기</a></li>
            </ul>
          </li>
          <li class="m_gnb_cate"><a href="/board/notice/nlist">박물관소식</a>
            <ul class="sub_gnb">
              <li><a href="/board/notice/nlist">공지사항</a></li>
              <li><a href="#">자주하는질문</a></li>
              <li><a href="#">포토뉴스</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>


