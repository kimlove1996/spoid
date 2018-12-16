<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieView</title>
<style type="text/css">
html {
     scroll-behavior: smooth;
}
body#header_body{
     background-color: #f7f9fa;
}
#header_wrap{
     background-color: white;
}
#Movie_bar {
     position: fixed;
     width: 100%;
     background-color: white;
     top: 0;
     margin-top: 100px;
}
#MovieViewAll {
     margin: 0;
     margin-top: 100px;
     /* background-color: #f0f0f0; */
}

#MovieViewAll h2{
	padding: 0 0 0 20px;
    margin: 0;
    line-height: 2;
}
#movie_table {
     height: 60px;
     background-color: #dedef1;
     margin-top: 48px;
}
#movie_table > ul >li {
     float: left;
    padding: 15px;
    padding-top: 10px;
    cursor: pointer;
}
#movie_table > ul >li:hover{
    text-decoration: underline;
}
#movie_table > ul > li > a {
     text-decoration: none;
     color: #4a4a4a;
     font-size: 25px;
     font-weight: bold;
}
/* 상단 영화명 */
#movie_name{
    text-align: center;
    font-size: 30px;
    font-weight: bold;
    color: #4a4a4a;
    margin: 0;
}
#movie_table > ul{
     width: 600px;
    margin: 0 auto;
    height: 60px;
}
#movie_name_underline{
     margin: 7px auto 11px auto;
    width: 20%;
    border: 3px solid #6db9ce;
}

/* 영화 출연배우들 */
#mvb_wrap {
	background-color: #e8e8e8;
	padding-bottom: 50px;
}


/* 영화상세정보 */
#mvtop_wrap{
    background-color: #f7f9fa;
    /* height: 700px; */
    margin-top: 261px;
    /* margin-bottom: 51px; */
    padding-bottom: 50px;
}
.wrap{
     padding-top: 50px;
}
#poster {
    width: 350px;
    display: inline-block;
    border-radius: 10px;
    padding: 4px;
    border: 2px solid #dedeef;
}
#mv_info {
     margin-top: 70px;
     border: 1px solid white;
     display: inline-block;
}
#info_table {
     width: 94%;
     padding: 10px 6px;
     margin: 0 auto;
     border-collapse: collapse;
}
#first_p{
    color: #137a96;
    font-size: 22px;
    border-top: 1px solid gray;
    border-bottom: 1px solid gray;
    padding: 5px 0 9px 0px;
    margin: 15px 0;
}
#info_table p:nth-child(2){
    padding-left: 3px;
    margin: 4px 0;
    color: #4c4c4c;
    font-size: 15px;
}
#info_table p:nth-child(3){
    padding-left: 3px;
    margin: 4px 0;
    color: #4c4c4c;
    font-size: 15px;
}

#info_table p:nth-child(4){
    padding-left: 0px;
    padding-bottom: 5px;
    margin: 31px 0 4px 0;
    color: #ff8337;
    font-size: 18px;
    text-align: left;
}
#info_table p:nth-child(5){
    padding-left: 3px;
    margin: 0;
    color: #2b2b2b;
    /* background-color: #636363; */
    font-size: 14px;
    padding: 9px;
    border: 1px dotted #d4d4d4;
    border-radius: 9px;
    line-height: 24px;
}

#info_table td{
     padding-left: 2%;
}
#info_table  th{
     width: 100%;
    text-align: left;
    padding-right: 2%;
    padding-left: 6%;
}
#mvtop_border {
    width: 1200px;
    margin: 0 auto;
    border: 2px solid #dedeef;
    border-radius: 50px;
    background-color: white;
    margin-top: 45px;
    padding-bottom: 50px;
}
/* 차트 */
#mvmid_wrap {
     height: 800px;
     background-image: url("img/background_dott.PNG");
     background-color: #dfe5fb;
}
/* 댓글 */
#mvbot_wrap {
     background-color: #f7f9fa;
     margin: 0;
}
#spoid_score {
    margin: 0 auto;
    margin-top: 10%;
}
.spoid {
     width: 100px;
     height: 100px;
     border: 1px solid #dedef1;
     border-radius: 100%;
     margin: 0 50px;
     background-color: white;
     display: block;
}
#D_spoid {
     display: inline-block;
     background-image: url("img/slime/score${dSvg}.svg");
     background-repeat: no-repeat;
     background-size: 100px;
     border: 2px solid #568ef7;
}
#N_spoid {
     display: inline-block;
     background-image: url("img/slime/score${nSvg}.svg");
     background-repeat: no-repeat;
     background-size: 100px;
     border: 2px solid green;
}

.nd_score{
    display: block;
    font-weight: bold;
    font-size: 32px;
}
#mvbot_border {
     width: 1200px;
    margin: 0 auto;
    margin-top: 70px;
    border: 2px solid #dedef1;
    border-radius: 50px;
    text-align: center;
}
#reply_table{
    text-align: left;
    margin: 27px 47px;
    padding: 12px;
}
#google_trends {
     height: 366px;
    width: 600px;
    display: inline-block;
    padding: 25px;
}
#google_upload {
    width: 600px;
    display: inline-block;
    vertical-align: 5px;
    padding: 25px;
}
#google_chart{
    padding: 69px;
    width: 1460px;
    margin: 40px auto;
    border: 8px double #d6d6d6;
    background-color: gray;
    box-sizing: border-box;
}



/* 출연배우관련 */
#actor{
    padding: 72px;
    margin: 0 auto;
    width: 1576px;
    border: 2px solid #b7b8b8;
    border-radius: 30px;
    background-color: #f8f8f8;
    margin-top: 45px;
}

#actor_wrap{
    overflow: hidden;
    height: 365px;
}

#actor>p{
    padding: 2px;
    margin: 9px;
    display: inline-block;
}

#actor_info_all{
    display: inline-block;
    width: 355px;
    padding: 16px;
}

#actor_info{
	display: inline-block;
	vertical-align: top;
}

#actor_img{
	display: inline-block;
	margin-right: 16px;
}

#actor_info > p{
	margin: 0 0;
}

#actor_info > p:nth-child(1) {
	font-weight: bold;
    font-size: 18px;
	margin-bottom: 6px;
	color: cornflowerblue;
}
#actor_info > p:nth-child(2){
	font-weight: bold;
}

#actor_info > p:nth-child(3), #actor_info > p:nth-child(4){
	margin-left: 5px;
    font-weight: bold;
    color: #474747;
    margin-top: 5px;
}

/* 더보기 버튼 */
#more_button_wrap{
	margin: 0 auto;
	text-align: center;
}

#more_button{
	padding: 10px 59px;
    background-color: gray;
    color: white;
}

#more_button:hover {
	cursor: pointer;
}

.cl{
	border: navajowhite;
    background-color: #ffffff00;
    font-size: 25px;
    font-weight: bold;
    outline: none;
    cursor: pointer;
}


.reviewscore{
	display: block;
}

#naver_review_box{
	display: inline-block;
}
#daum_review_box{
	display: inline-block;
}

#naver_reviewscore{
	color: green;
    font-weight: bold;
    font-size: 22px;
}
#daum_reviewscore{
    color: #568ef7;
    font-weight: bold;
    font-size: 22px;
}

#n_reviewinfo{
	margin: 6px 0;
}

#reviewinfo_area1{
	color: gray;
}
#n_writer{
	font-weight: bold;
    color: #5d5d5d;
}

#n_score{
	font-weight: bold;
    color: red;
    font-size: 26px;
}

#n_score_tx{
	font-size: 26px;
    font-weight: bold;
}
</style>
<script type="text/javascript">

$(document).ready(function(){
	$("#mvtop_cl").click(function(){
		$("#mvtop_cl").css("color","#6db9ce");
		$("#mvtop_wrap > h2").css("color","#6db9ce");
		$("#mvmid_cl").css("color","#4a4a4a");
		$("#mvmid_wrap > h2").css("color","#4a4a4a");
		$("#mvbot_cl").css("color","#4a4a4a");
		$("#mvbot_wrap > h2").css("color","#4a4a4a");
		$("#mvb_cl").css("color","#4a4a4a");
		$("#mvb_wrap > h2").css("color","#4a4a4a");
	
	});
	
	$("#mvb_cl").click(function(){
		$("#mvb_cl").css("color","#6db9ce");
		$("#mvb_wrap > h2").css("color","#6db9ce");
		$("#mvtop_cl").css("color","#4a4a4a");
		$("#mvtop_wrap > h2").css("color","#4a4a4a");
		$("#mvbot_cl").css("color","#4a4a4a");
		$("#mvbot_wrap > h2").css("color","#4a4a4a");
		$("#mvmid_cl").css("color","#4a4a4a");
		$("#mvmid_wrap > h2").css("color","#4a4a4a");
	});
	
	$("#mvmid_cl").click(function(){
		$("#mvmid_cl").css("color","#6db9ce");
		$("#mvmid_wrap > h2").css("color","#6db9ce");
		$("#mvtop_cl").css("color","#4a4a4a");
		$("#mvtop_wrap > h2").css("color","#4a4a4a");
		$("#mvbot_cl").css("color","#4a4a4a");
		$("#mvbot_wrap > h2").css("color","#4a4a4a");
		$("#mvb_cl").css("color","#4a4a4a");
		$("#mvb_wrap > h2").css("color","#4a4a4a");
		
	});
	
	$("#mvbot_cl").click(function(){
		$("#mvbot_cl").css("color","#6db9ce");
		$("#mvbot_wrap > h2").css("color","#6db9ce");
		$("#mvmid_cl").css("color","#4a4a4a");
		$("#mvmid_wrap > h2").css("color","#4a4a4a");
		$("#mvtop_cl").css("color","#4a4a4a");
		$("#mvtop_wrap > h2").css("color","#4a4a4a");
		$("#mvb_cl").css("color","#4a4a4a");
		$("#mvb_wrap > h2").css("color","#4a4a4a");
	});

	
	$("#more_button_wrap").click(function(){
		$("#actor_wrap").css("overflow","unset");
		$("#actor_wrap").css("height","auto");
		$(this).css("display","none");
		
	})
	
	
	


});
$(window).on("scroll", function() {
	x = 0;
	$("#span1").text( x= $(window).scrollTop() + " px");
});


function fnMove2(){
	/* var mvmid_wrap = move3.offset().top-200; */
	var move2 = $("#mvb_wrap").offset();
    $('html, body').animate({scrollTop : move2.top-258}, 400);
}
function fnMove3(){
	var move3 = $("#mvmid_wrap").offset();
    $('html, body').animate({scrollTop : move3.top-265}, 400);
}
function fnMove4(){
	var move4 = $("#mvbot_wrap").offset();
    $('html, body').animate({scrollTop : move4.top-265}, 400);
}




</script>
</head>
<body id="MovieView">
<span id="span1" style="position : fixed">0</span>
<div id="MovieViewAll">
<div id="Movie_bar">
     <p id="movie_name">Detail information</p>
     <hr id="movie_name_underline">
<div id="movie_table">
     <ul>
          <li><button class="cl" id="mvtop_cl" onclick="$('html, body').animate({scrollTop : '0'});">상세내용</button></li>
          <li><button class="cl" id="mvb_cl" onclick="fnMove2()">출연배우</button></li>
          <li><button class="cl" id="mvmid_cl" onclick="fnMove3()">차트그래프</button></li>
          <li><button class="cl" id="mvbot_cl" onclick="fnMove4()">댓글분석</button></li>
     </ul>
</div>
</div>
<article id="mvtop_wrap">
<h2>상세 내용</h2>
<hr style="border: 1px solid #dedeef;">
<div id="mvtop_border">
     <div class="wrap">
     <table id="info_table">
          <tbody>
              <tr>
                   <td><img src="${dDto.poster}" id="poster"></td>
                   <th>
                   					<fmt:parseDate var="open" value="${dDto.openDt}" pattern="yyyy-MM-dd HH:mm:ss" />
					<fmt:formatDate var="openQuery" value="${open}" pattern="yyyy-MM-dd"/>
					<fmt:formatDate var="openDt" value="${open}" pattern="yyyy.MM.dd"/>
					<fmt:parseDate var="first" value="${dDto.firstOpen}" pattern="yyyy-MM-dd HH:mm:ss" />
					<fmt:formatDate var="firstDt" value="${first}" pattern="yyyy.MM.dd"/>
                        <p id="first_p">${dDto.kor_tit}</p>
                        <p>${dDto.eng_tit}</p>
                        <p>${dDto.genre} | ${dDto.grade} | ${openDt} 개봉
	                        <c:if test="${dDto.firstOpen} != ${dDto.openDt}">
								| ${firstDt} 재개봉
							</c:if>
                        </p>
                        <p>줄거리</p>
                        <p>${dDto.story}<br>
                   </th>
              </tr>
          </tbody>
     </table>
     </div>
</div>
</article>

<article id="mvb_wrap">
	<h2>출연 배우 및 감독</h2><hr style="border: 1px solid #ccccc;">
	<div id="actor">
		<div id="actor_wrap">
			<c:forEach items="${pList}" var="pList">
				<div id="actor_info_all">
					<div id="actor_img">
						<img src="${pList.profile}">
					</div>
					<div id="actor_info">
					
						<p>${pList.pname}</p>
						<p>${pList.eng_name}</p>
						<p>${pList.dept}<c:if test="${!empty pList.part}">(${pList.part})</c:if>
						</p>
						<c:if test="${!empty pList.role}">
							<p>${pList.role}</p>
						</c:if>
					</div>
				</div>
			</c:forEach>
		</div>
		<div id="more_button_wrap">
			<a id="more_button">더보기</a>
		</div>
	</div>
	
</article>


<article id="mvmid_wrap">
     <h2>차트 그래프</h2><hr style="border: 1px solid #cccccc;">
     <div id="google_chart">
          <div id="google_trends">
              <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/1671_RC03/embed_loader.js"></script>
              <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"보헤미안","geo":"KR","time":"today 12-m"}],"category":0,"property":""}, {"exploreQuery":"geo=KR&q=%2Fg%2F11c5m5019b&date=today 12-m","guestPath":"https://trends.google.co.kr:443/trends/embed/"}); </script>
          </div>
          <div id="google_upload">
              <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/1671_RC03/embed_loader.js"></script>
              <script type="text/javascript"> trends.embed.renderExploreWidget("RELATED_TOPICS", {"comparisonItem":[{"keyword":"보헤미안","geo":"KR","time":"today 12-m"}],"category":0,"property":""}, {"exploreQuery":"geo=KR&q=%2Fg%2F11cp7f65yr&date=today 12-m","guestPath":"https://trends.google.co.kr:443/trends/embed/"}); </script>
     	  </div>
     </div>
</article>
<article id="mvbot_wrap">
<h2>댓글 분석</h2><hr style="border: 1px solid #dedef1;">
<div id="mvbot_border">
     <div id="spoid_score">
     
     	 <div id="naver_review_box">
		     <span id="naver_reviewscore" class="reviewscore">NAVER</span>
		     <div id="N_spoid" class="spoid"></div>
		     <span id="naver_score" class="nd_score">${nAvg}</span>
	     </div>
	     
	     <div id="daum_review_box">
		     <span id="daum_reviewscore" class="reviewscore">DAUM</span>
		     <div id="D_spoid" class="spoid"></div>
		     <span id="daum_score" class="nd_score">${dAvg}</span>
	     </div>
     
     </div>
     <div id="reply_table">
                   
                   
              <c:forEach items="${bestlist}" var="bestlist">
              <div id="n_reviewinfo">
              	   <div id="reviewinfo_area1">
                   		<span id="n_writer">${bestlist.writer}</span>
                   		<span id="n_goodcnt">${bestlist.regdate}</span>
                   		<span id="n_goodcnt">${bestlist.goodcnt}</span>
                   </div>
                   <div id="reviewinfo_area2">
	                   <i class="fas fa-quote-left"></i><span id="n_score">${bestlist.score}</span><span id="n_score_tx">점!</span><i class="fas fa-quote-right"></i>
	                   <span id="n_content">${bestlist.content}</span>
                   </div>
              </div>
              <hr>
              </c:forEach>
     </div>
</div>
</article>
</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>
