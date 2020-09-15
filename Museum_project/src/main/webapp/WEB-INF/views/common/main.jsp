<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- main-->
<div class="visual">
  <div id="demo" class="carousel slide" data-ride="carousel">
      <ul class="carousel-indicators">
      <li data-target="#demo" data-slide-to="0" class="active"></li>
      <li data-target="#demo" data-slide-to="1"></li>
      <li data-target="#demo" data-slide-to="2"></li>
    </ul>
      <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="resources/img/visual3.jpg" alt="Los Angeles" width="1100" height="500">
      </div>
      <div class="carousel-item">
        <img src="resources/img/visual.jpg" alt="Chicago" width="1100" height="500">
      </div>
      <div class="carousel-item">
        <img src="resources/img/visual2.jpg" alt="New York" width="1100" height="500">
      </div>
    </div>
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
      <span class="carousel-control-prev-icon"></span>
      </a> <a class="carousel-control-next" href="#demo" data-slide="next">
      <span class="carousel-control-next-icon"></span>
      </a>
  </div>
</div>

<main>
  <div class="m-contain">
    <div class="row">
      <div class="program-zone">
        <a href="#">
          <h2>관람프로그램안내</h2>
          <img alt="program1" src="resources/img/program1.jpg">
          <img class="more" alt="more" src="resources/img/more.png">
        </a>
      </div>
      <div class="program-zone2">
        <a href="#">
          <h2>체험프로그램안내</h2>
          <img alt="program1" src="resources/img/program2.jpg">
          <img class="more" alt="more" src="resources/img/more.png">
        </a>
      </div>
      <div class="bnr-zone">
        <ul class="clearfix">
          <li>
            <a href="index.jsp?pg=cal" class="bg1">
              <span class="icon icon-1"></span>
              교육예약
            </a>
          </li>
          <li>
            <a href="#" class="bg2">
              <span class="icon icon-2"></span>
              찾아오시는 길
            </a>
          </li>
          <li>
            <a href="index.jsp?pg=esub" class="bg2">
              <span class="icon icon-3"></span>
              관람안내
            </a>
          </li>
          <li>
            <a href="index.jsp?pg=list" class="bg1">
              <span class="icon icon-4"></span>
              박물관소식
            </a>
          </li>
        </ul>
      </div>
        </div>
        
    <div class="row clearfix">
      <div class="board-zone">
        <div class="inner">
                    <h2>공지사항</h2>
                    <ul class="notice-wrap">
                        <li>
                          <a href="#">공지사항</a>
                          <span>2020.06.22</span>
                        </li>
                    </ul>
          <a href="#">
            <img class="more" alt="more" src="resources/img/more.png">
                    </a>
        </div>
      </div>
      
      <div class="photo-zone">
        <div class="inner">
          <h2>떡박물관 포토튜스</h2>
          <ul>
                        <li><a href="#">
                            <div class="thumb"><img src="resources/img/photo-zone1.jpg" alt="photo-zone1"></div>
                            <p class="tit">박물관 문화가 있는날_4월</p>
                            <p class="date">2020.06.19</p>
                        </a></li>

                        <li><a href="#">
                            <div class="thumb"><img src="resources/img/photo-zone2.jpg" alt="photo-zone2"></div>
                            <p class="tit">박물관 문화가 있는날_4월</p>
                            <p class="date">2020.06.19</p>
                        </a></li>

                        <li><a href="#">
                            <div class="thumb"><img src="resources/img/photo-zone3.jpg" alt="photo-zone3"></div>
                            <p class="tit">박물관 문화가 있는날_4월</p>
                            <p class="date">2020.06.19</p>
                        </a></li>
                    </ul>
          <a href="#">
            <img class="more" alt="more" src="resources/img/more.png">
          </a>
        </div>
      </div>
    </div>
  </div>
</main>