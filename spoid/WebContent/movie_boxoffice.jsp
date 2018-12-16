<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
	#boxoffice_all{
	   /*  margin: 195px auto 120px auto; */
	    width: 85%;
	    padding: 142px;
	    background-color: #f0f0f0;
	}
	
	#boxoffice_list{
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
	.boxoffice_line{
		width: 1547px;
	}
	
	.boxoffice_card_wrap{display: inline-block;}
	.boxoffice_card{
		width: 256px;
		height: 373px;
		box-shadow: grey 5px 4px 6px 0px;
		display: inline-block;
		margin: 24px;
		transition: all 1.5s;
		transform:rotateY(180deg);
		vertical-align: middle;
	}
	
	.boxoffice_card_wrap:hover .boxoffice_card{background-color: #ff510e;}
	.boxoffice_card_wrap:hover img{padding: 9px;}
	.boxoffice_card_wrap:hover  .boxoffice_card_label{display: block;}
	
	
	
	
	.boxoffice_card > img{
	    width: 256px;
	    height: 373px;
		box-sizing: border-box;
		transition: all 0.5s;
	}
	
	
	.boxoffice_card_label{
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
	
	.boxoffice_card_label > p{
	    margin: 0 0;
	    font-size: 12px;
	    text-align: center;
	    line-height: 22px;
	    color: #353535;
	    font-weight: bold;
	}
	
	.boxoffice_card_label > p:nth-child(4){
		
	}
	
	.boxoffice_card_label > strong{
		color: #000000;
	    font-size: 80%;
	}
	
	.boxoffice_card{cursor: pointer;}
	
	/* 평점 */
	.spoid {
	    width: 35px;
	    border: 2px solid #dedef1;
	    border-radius: 100%;
	    margin: 0 5px;
	    background-color: #ffffffbf;
	    margin-top: 7px;
	}
	.n_spoid {
		 display: inline-block;
	     border-color: green;
	}
	.d_spoid {
		 display: inline-block;
	     border-color: #568ef7;
	}
</style>

<script type="text/javascript">
$(document).ready(function(){
	$(".boxoffice_card_all").css("transform","rotateY(360deg)");
	$("#movie_text_top > hr").css("width","100%");
});
$(document).on("click",".boxoffice_card_wrap",function(){
	var movieCd = $(this).attr("data-mvCd");
	location.href = "detailmovie.spoid?movieCd="+movieCd;
});
</script>
</head>
<body id="boxoffice">
<div id="boxoffice_all">


	<div id="boxoffice_list">
			<div id="movie_text_top">
				<span>박스오피스</span>
				<hr>
			</div>
			
		<ul>
	
			<c:forEach items="${bList}" var="bList" varStatus="status">
				<fmt:parseDate var="open" value="${bList.openDt}" pattern="yyyy-MM-dd HH:mm:ss" />
				<fmt:formatDate var="openDt" value="${open}" pattern="yyyy.MM.dd"/>
				<fmt:parseDate var="first" value="${bList.firstOpen}" pattern="yyyy-MM-dd HH:mm:ss" />
				<fmt:formatDate var="firstDt" value="${first}" pattern="yyyy.MM.dd"/>	
				<li class="boxoffice_card_wrap" data-mvCd="${bList.movieCd}">
						<div class="boxoffice_card_all boxoffice_card">
							<img src="${bList.poster}">
							<div class="boxoffice_card_label">
								<strong>${bList.kor_tit}</strong>
								<hr>
								<p>${bList.genre} | ${openDt}개봉
									<c:if test="${bList.firstOpen} != ${bList.openDt}">
										| ${firstDt} 재개봉
									</c:if>								
								</p>
								<p>${bList.grade } | 관람가</p>
								<c:forEach items="${nSvg}" var="nSvg" varStatus="status4">
								<c:if test="${status4.count == status.count}">
								<img class="spoid n_spoid" src="img/slime/score${nSvg}.svg">
								</c:if>
								</c:forEach>
								<c:forEach items="${dSvg}" var="dSvg" varStatus="status5">
								<c:if test="${status5.count == status.count}">
								<img src="img/slime/score${dSvg}.svg" class="spoid d_spoid">
								</c:if>
								</c:forEach>
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