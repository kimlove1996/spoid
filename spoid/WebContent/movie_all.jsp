<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
	#movieall_all{
	   /*  margin: 195px auto 120px auto; */
	    width: 85%;
	    padding: 142px;
	    background-color: #f0f0f0;
	}
	
	#movieall_list{
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

	
	
	.movieall_card{
		width: 256px;
		height: 373px;
		box-shadow: grey 5px 4px 6px 0px;
		display: inline-block;
		margin: 24px;
		transition: all 1.5s;
		transform:rotateY(180deg);
		vertical-align: middle;
	}
	
	.movieall_card_wrap:hover .movieall_card{background-color: #ff510e;}
	.movieall_card_wrap:hover img{padding: 9px;}
	.movieall_card_wrap:hover .movieall_card_label{display: block;}
	
	
	
	.movieall_card_wrap{display:inline-block;cursor: pointer;}
	.movieall_card > img{
	    width: 256px;
	    height: 373px;
		box-sizing: border-box;
		transition: all 0.5s;
	}
	
	
	.movieall_card_label{
	    height: 170px;
	    width: 93%;
	    position: relative;
	    bottom: 183px;
	    background: linear-gradient(to bottom,#ffffff, #ffffffeb -10%, #ffffffbd 78%);
	    box-sizing: border-box;
	    padding: 5px;
	    border: 1px dotted #dedede;
	    margin: 0 auto;
	    display: none;
	    text-align: center;
	}
	
	.movieall_card_label > p{
	    margin: 0 0;
	    font-size: 12px;
	    text-align: center;
	    line-height: 22px;
	    color: #353535;
	    font-weight: bold;
	}
	.movieall_card_label > strong{
		color: #000000;
	    font-size: 80%;
	}
	
	
	
	
	
	
	
			/* 페이지네이션 */
	#paging ul{
		display: inline-block;
	}
	
	#paging li{
	    border: 1px solid #d7d5d5;
	    font-size: 12px;
	    color: #757575;
	    line-height: 59px;
	    width: 34px;
	    height: 34px;
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
	$(".movieall_card_all").css("transform","rotateY(360deg)");
	$("#movie_text_top > hr").css("width","100%");
});

$(document).on("click",".movieall_card_wrap",function(){
	var movieCd = $(this).attr("data-mvCd");
	location.href = "detailmovie.spoid?movieCd="+movieCd;
});
</script>
</head>
<body id="movieall">
<div id="movieall_all">

	<div id="movieall_list">
			<div id="movie_text_top">
				<span>전체 영화</span>
				<hr>
			</div>
	
		<ul>
	
			<c:forEach items="${movieAll}" var="mList">
				<fmt:parseDate var="open" value="${mList.openDt}" pattern="yyyy-MM-dd HH:mm:ss" />
				<fmt:formatDate var="openDt" value="${open}" pattern="yyyy.MM.dd"/>
				<fmt:parseDate var="first" value="${mList.firstOpen}" pattern="yyyy-MM-dd HH:mm:ss" />
				<fmt:formatDate var="firstDt" value="${first}" pattern="yyyy.MM.dd"/>	
				<li class="movieall_card_wrap" data-mvCd="${mList.movieCd}">
						<div class="movieall_card_all movieall_card">
							<c:choose>
								<c:when test="${empty mList.poster}">
									<img src="https://ssl.pstatic.net/static/movie/2012/06/dft_img203x290.png">
								</c:when>
								<c:otherwise><img src="${mList.poster}"></c:otherwise>														
							
							</c:choose>
	

							<div class="movieall_card_label">
								<strong>${mList.kor_tit}</strong>
								<hr>
								<p>${mList.genre} | ${openDt}개봉
									<c:if test="${mList.firstOpen} != ${mList.openDt}">
										| ${firstDt} 재개봉
									</c:if>								
								</p>
								<p> ${mList.grade} | 관람가</p>
							</div>
				
						</div>			
				</li>			
			
			</c:forEach>
		</ul>			 
			 
			
	  </div>
		
		
		
	<!-- 페이지넘기기 -->
	<div class="pagenation">
		<c:if test="${pageMaker.prev}">  
			<a href="?page=${pageMaker.startPage - 1}">&laquo;</a>
			<a href="?page=1">1</a>
			<a href="#">...</a>		
		</c:if>																
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
			<a href="?page=${idx}&flag=${flag}&keyword=${keyword}&key=${code}" 
			<c:out value="${pageMaker.criMDto.page == idx? 'class=active':''}"/>>${idx}</a> 
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<a href="#">...</a>
			<a href="?page=${pageMaker.finalPage}">${pageMaker.finalPage}</a>
			<a href="?page=${pageMaker.endPage + 1}">&raquo;</a>
		</c:if>															
	</div>

		
</div>
	
	


</body>
</html>
<%@ include file="include/footer.jsp" %>