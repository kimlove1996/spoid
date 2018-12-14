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
	width: 1920px;
	margin: 0;
	margin-top: 100px;
	/* background-color: #f0f0f0; */
}

#movie_table {
	height: 60px;
	background-color: #dedef1;
	
}
#movie_table > ul >li {
	float: left;
    padding: 15px;
    padding-top: 10px;
    cursor: pointer;
   
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
}

#movie_name_underline{
	margin: 7px auto 11px auto;
    width: 20%;
    border: 3px solid #6db9ce;
}

/* 영화 출연배우들 */
#mvb_wrap {
	background-color: #dedede;
	height: 730px;	
}


/* 영화상세정보 */
#mvtop_wrap{
	background-color: #f7f9fa;
	height: 730px;
	margin-top: 223px;
}
#mvtop_wrap > h2 {
    padding: 0;
    margin: 0;
    line-height: 2;
}
.wrap{
	padding-top: 50px;
}
#poster {
	width: 350px;
	display: inline-block;
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
    height: 600px;
}


/* 차트 */
#mvmid_wrap {
	height: 800px;
	background-image: url("img/background_dott.PNG");
	background-color: #dfe5fb;
}
#mvmid_wrap > h2 {
    padding: 0;
    margin: 0;
    line-height: 2;
}


/* 댓글 */
#mvbot_wrap {
	height: 800px;
	background-color: #f7f9fa;
	margin: 0;
}
#mvbot_wrap > h2 {
    padding: 0;
    margin: 0;
    line-height: 2;
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
	background-image: url("img/slime/score5.svg");
	background-repeat: no-repeat;
	background-size: 100px;
}
#N_spoid {
	display: inline-block;
	background-image: url("img/slime/score3.svg");
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




#google_trend {
	height: 366px;
    width: 600px;
    display: inline-block;
    margin-left: 18%;
}
#google_upload {
    width: 600px;
    display: inline-block;
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
</script>
</head>
<body id="MovieView">
<div id="MovieViewAll">
<div id="Movie_bar">
	<p id="movie_name">Detail information</p>
	<hr id="movie_name_underline">
<div id="movie_table">
	<ul>
		<li><a id="mvtop_cl" onclick="$('html, body').stop().animate({scrollTop : '0'});">상세내용</a></li>
		<li><a id="mvb_cl" onclick="$('html, body').stop().animate({scrollTop : '730'});">출연배우</a></li>
		<li><a id="mvmid_cl" onclick="$('html, body').stop().animate({scrollTop : '1460'});">차트그래프</a></li>
		<li><a id="mvbot_cl" onclick="$('html, body').stop().animate({scrollTop : '2260'});">댓글분석</a></li>
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
					<strong>${dDto.kor_tit}</strong>
					<p>${dDto.eng_tit}</p>
					<p>${dDto.genre} | ${dDto.grade} | ${openDt} 개봉
						<c:if test="${dDto.firstOpen} != ${dDto.openDt}">
							| ${firstDt} 재개봉
						</c:if>
					</p>
					<p>줄거리</p>
					<p>${dDto.story}</p>
				</th>
			</tr>
		</tbody>
	</table>
	</div>
</div>
</article>

<article id="mvb_wrap">
	<h2 style="margin: 0;height: 40px;line-height: 2;">출연 배우</h2><hr style="border: 1px solid #ccccc;">
	<div id="">
		
	</div>
	
</article>

<article id="mvmid_wrap">
	<h2>차트 그래프</h2><hr style="border: 1px solid #cccccc;">
	<div id="google_trend">
		<script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/1671_RC04/embed_loader.js"></script> <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"국가부도의 날","geo":"US","time":"2018-11-13 2018-12-13"}],"category":0,"property":""}, {"exploreQuery":"date=${openDt}2018-12-13&geo=US&q=%EA%B5%AD%EA%B0%80%EB%B6%80%EB%8F%84%EC%9D%98%20%EB%82%A0","guestPath":"https://trends.google.com:443/trends/embed/"}); </script> 
	</div>
	<div id="google_upload"><script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/1671_RC03/embed_loader.js"></script> <script type="text/javascript"> trends.embed.renderExploreWidget("RELATED_TOPICS", {"comparisonItem":[{"keyword":"${dDto.kor_tit}","geo":"KR","time":"today 12-m"}],"category":0,"property":""}, {"exploreQuery":"geo=KR&q=%2Fg%2F11cp7f65yr&date=today 12-m","guestPath":"https://trends.google.co.kr:443/trends/embed/"}); </script></div>
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
				<td>"최곤가?"</td>
				<td>"재밌었다"</td>
			</tr>
		</tbody>
	</table>
</div>
</article>






</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>