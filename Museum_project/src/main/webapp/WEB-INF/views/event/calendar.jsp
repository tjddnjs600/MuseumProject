<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>

<div id="container">
	<div class="sub-tab">
		<ul class="clearfix">
			<li class="active"><a href="/event/calendar">온라인 예약</a></li>
			<li ><a href="/booking/chkBooking">예약 조회</a></li>
		</ul>
	</div>

	<div id='calendar'></div>
</div>


<script>
	$(document).ready(function() {
     $.getJSON("/event/getEvent.json", function(res) {
    	 console.log(res);
	    let calendarEl = document.getElementById('calendar');

	 		let calendar = new FullCalendar.Calendar(calendarEl, {
	 			  plugins: [ 'interaction', 'dayGrid', 'timegrid' ],
	 			  defaultView: 'dayGridMonth',
	 			  selectable: true,
	 			  events: res,
	 			  
	 			  eventClick: function(info) { 
	 				  	start = moment(info.event.start).format('YYYY-MM-DD');
	 				  	title = info.event.title;
	 				  	console.log(title+" : "+start);
	 				    location.replace("/booking/book?start="+start+"&title="+title);
	 				  }
	 			});

	 		calendar.render();
     }).fail(function() {
         console.log("이벤트 받아오기 실패");
     })   

});
	
</script>

<jsp:include page="../common/footer.jsp"></jsp:include>