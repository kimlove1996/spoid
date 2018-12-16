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
     width: 545px;
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
     height: 800px;
     background-color: #f7f9fa;
     margin: 0;
}
#spoid_score {
     width: 410px;
    height: 100px;
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
}
#D_spoid {
     display: inline-block;
     background-image: url("img/slime/score${dSvg}.svg");
     background-repeat: no-repeat;
     background-size: 100px;
}
#N_spoid {
     display: inline-block;
     background-image: url("img/slime/score${nSvg}.svg");
     background-repeat: no-repeat;
     background-size: 100px;
}
#mvbot_border {
     width: 1200px;
    margin: 0 auto;
    margin-top: 70px;
    border: 2px solid #dedef1;
    border-radius: 50px;
    height: 600px;
}
#reply_table{
     padding-top: 2%;
    text-align: left;
    margin: 0 auto;
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
    width: 1480px;
    border: 2px solid #b7b8b8;
    border-radius: 30px;
    background-color: #f8f8f8;
    margin-top: 45px;
}

#actor>p{
    padding: 2px;
    margin: 9px;
    display: inline-block;
}

#actor_info_all{
    display: inline-block;
    width: 333px;
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
    margin-bottom: 8px;
    font-weight: bold;
    color: #474747;
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

});
$(window).on("scroll", function() {
	x = 0;
	$("#span1").text( x= $(window).scrollTop() + " px");
});
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
          <li><a id="mvtop_cl" onclick="$('html, body').stop().animate({scrollTop : '0'});">상세내용</a></li>
          <li><a id="mvb_cl" onclick="$('html, body').stop().animate({scrollTop : '857'});">출연배우</a></li>
          <li><a id="mvmid_cl" onclick="$('html, body').stop().animate({scrollTop : '1580'});">차트그래프</a></li>
          <li><a id="mvbot_cl" onclick="$('html, body').stop().animate({scrollTop : '2385'});">댓글분석</a></li>
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
	<h2>출연 배우 & 스태프</h2><hr style="border: 1px solid #ccccc;">
	<div id="actor">
		<c:forEach items="${pList}" var="pList">
			<div id="actor_info_all">
				<div id="actor_img">
					<img src="${pList.profile}">
				</div>
				<div id="actor_info">
					<p>${pList.pname}</p>
					<p>${pList.eng_name}</p>
					<p>${pList.dept}(${pList.part})</p>
					<p>역할 : ${pList.role}</p>
				</div>
			</div>
		</c:forEach>
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
     <div id="N_spoid" class="spoid"></div>
     <div id="D_spoid" class="spoid"></div>
     </div>
     <table id="reply_table">
          <tbody>
              <tr>
                   <th>네이버</th>
                   <th>다음</th>
              </tr>
              <tr>
                   <td>${nAvg}</td>
                   <td>${dAvg}</td>
              </tr>
          </tbody>
     </table>
</div>
</article>
</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>