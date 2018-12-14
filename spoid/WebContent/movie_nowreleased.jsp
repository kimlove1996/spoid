<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
	#nowreleased_all{
	   /*  margin: 195px auto 120px auto; */
	    width: 85%;
	    padding: 142px;
	    background-color: #f0f0f0;
	}
	
	#nowreleased_list{
	    padding: 34px;
	    border: 1px dashed #c5c5c5;
	    box-shadow: #bfbfbf 7px 6px 5px -1px;
	    box-sizing: border-box;
	    width: 1617.55px;
	    /* height: 1200px; */
	    background-color: white;
	}
	
	/* 영화종류 자리*/
	#movie_text_top{
	    text-align: center;
	    margin: 0 auto 63px auto;
	    width: 313px;
	    font-size: 27px;
	    font-weight: bold;
	    color: #3d3d3d;
	}
	
	
	#movie_text_top > hr{
		border-color: #ff4363;
		transition: all 1s;
		width: 0px;
	}
	#nowreleased_line{
		width: 1547px;
	}
	
	
	.nowreleased_card{
		width: 256px;
		height: 373px;
		box-shadow: grey 5px 4px 6px 0px;
		display: inline-block;
		margin: 24px;
		transition: all 1.5s;
		transform:rotateY(180deg);
		vertical-align: middle;
	}
	.nowreleased_card_wrap{display:inline-block;}
	.nowreleased_card_wrap:hover .nowreleased_card{background-color: #ff510e;}
	.nowreleased_card_wrap:hover img{padding: 9px;}
	.nowreleased_card_wrap:hover .nowreleased_card_label{display: block;}
	
	
	
	
	.nowreleased_card > img{
	    width: 256px;
	    height: 373px;
		box-sizing: border-box;
		transition: all 0.5s;
	}
	
	
	.nowreleased_card_label{
	    height: 120px;
	    width: 93%;
	    position: relative;
	    bottom: 133px;
	    background: linear-gradient(to bottom,#ffffff, #ffffffeb -10%, #ffffffbd 78%);
	    box-sizing: border-box;
	    padding: 5px;
	    border: 1px dotted #dedede;
	    margin: 0 auto;
	    display: none;
	    text-align: center;
	}
	
	.nowreleased_card_label > p{
	    margin: 0 0;
	    font-size: 12px;
	    text-align: center;
	    line-height: 22px;
	    color: #353535;
	    font-weight: bold;
	}
	.nowreleased_card_label > strong{
		color: #000000;
	    font-size: 80%;
	}
	
	.pagenation{
		text-align: center;
		clear: both;
		height: 35px;
		margin-top: 26px;
	}
	
	.pagenation a{
	    padding: 4px 8px;
	    border: 3px solid #d4d4d4;
	    background-color: #ffffff;
	    border-radius: 6px;
	    color: #111111;
	    border-top: 0.5px solid #d5ced8;
	    border-left: none;
	}
	
	.pagenation .active{
	    font-weight: bold;
	    padding: 4px 8px;
	    border: 3px solid #9b9b9b;
	    background-color: #ffffff;
	    border-radius: 6px;
	    color: #111111;
	    border-top: 0.5px solid #9b9b9b;
	    border-left: none;
	}	
	
</style>

<script type="text/javascript">
$(document).ready(function(){
	$(".nowreleased_card_all").css("transform","rotateY(360deg)");
	$("#movie_text_top > hr").css("width","100%");
});
$(document).on("click",".nowreleased_card_wrap",function(){
	var movieCd = $(this).attr("data-mvCd");
	location.href = "detailmovie.spoid?movieCd="+movieCd;
});
</script>
</head>
<body id="nowreleased">
<div id="nowreleased_all">


	<div id="nowreleased_list">
		<div id="movie_text_top">
			<span>현재 상영 영화</span>
			<hr>
		</div>
		<ul>
	
			<c:forEach items="${nowMovie}" var="nList">
				<fmt:parseDate var="open" value="${nList.openDt}" pattern="yyyy-MM-dd HH:mm:ss" />
				<fmt:formatDate var="openDt" value="${open}" pattern="yyyy.MM.dd"/>
				<fmt:parseDate var="first" value="${nList.firstOpen}" pattern="yyyy-MM-dd HH:mm:ss" />
				<fmt:formatDate var="firstDt" value="${first}" pattern="yyyy.MM.dd"/>	
				<li class="nowreleased_card_wrap" data-mvCd="${nList.movieCd}">
						<div class="nowreleased_card_all nowreleased_card">
							<img src="${nList.poster}">
							<div class="nowreleased_card_label">
								<strong>${nList.kor_tit}</strong>
								<hr>
								<p>${nList.genre} | ${openDt}개봉
									<c:if test="${nList.firstOpen} != ${nList.openDt}">
										| ${firstDt} 재개봉
									</c:if>								
								</p>
								<p> ${nList.grade} | 관람가</p>
							</div>
				
						</div>			
				</li>			
			
			</c:forEach>
		</ul>
			

	</div>

	
</div>

</body>
</html>
<%@ include file="include/footer.jsp" %>