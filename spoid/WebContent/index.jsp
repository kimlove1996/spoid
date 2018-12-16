<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<!-- 버튼 호버시 : #ec4c6a -->
<!-- 홈페이지 색깔 : wrapper => #fbfbfb or #f5f5f2 -->
<style type="text/css">
	body{
		margin : 0;
		padding : 0;
		background-color: #fff;
	}
	
	.wrapper{
		max-width : 2560px;
	}
	.graph_div{height : 850px;}
	.score_view{
		width : 600px;
		height : 100%;
		padding: 10% 0 0 4%;
	}
	
	.score_view > p{
		font-weight: bold;
	    text-align: center;
	    margin-bottom: 30px;
	    padding: 4px 0;
	    background-color: #a5ddec;
	    color: white;
	    border-radius: 15px;
	}
	.score_view table{
	    border-collapse: collapse;
	    text-align: center;
	    text-overflow: ellipsis;
	    width: 100%;
	    transform: rotatey(90deg);
	    transition: all 1s;
	}
	
	.score_view table th,.score_view table td{
    	overflow: hidden;
    	padding : 0 10px;
		font-size: 14px;
  	}
  	
  	/* 애니메이션 효과 만들기 */ 
  	@Keyframes backgroundColorAnimation{
		0% {background-color: #fddfde78;}	/* 애니메이션 시작부분 : 0% = from 라고도 쓸 수잇음 */
		30% {background-color: white;}	/*  */
		100% {background-color: #fddfde78;}	/* 애니메이션 마지막부분 : 100% = to 라고도 쓸 수잇음 */
	}
	
	.score_view table tr:nth-child(even){
		background-color: #f8f6f8;
	}
	
	.score_view table tr:nth-child(odd){
		animation-name: backgroundColorAnimation;	/* 설정한 애니메이션 이름 */
		animation-duration : 3s;	/* 1회 애니메이션 동작시간 : 5초 */
		animation-iteration-count: infinite;	/* 반복 횟수: 무한반복 */
	}
	.score_view table th{
		background-color: white;
		padding-bottom : 5px;
	}
	.graph_view{
		background-color: #F8F6F8;
		width : 64%;
		height : 100%;
		max-height: 100%;
		float :right;
	}
	.topmv_section{
		background-color:#f1f1f1;
		min-height: 500px;
	}
	.topmv_content{
	    width: 1894px;
	    margin: 0 auto;
	    padding: 50px 50px 50px 150px;
	    box-sizing: border-box;
	}
	.graph_div > div{
		display: inline-block;
		
	}
	
	.inner_topmv{
		display: inline-block;
		max-height: 2100px;
		float: left;
		
	}
	.inner_topmv:first-child,.inner_topmv:nth-child(3){
		width : 32%;
	}
	.inner_topmv:nth-child(2){
		width: 30%;
	}
	.inner_topmv > div > img{
		width: 100%;
		height: 100%;
	}
	.col1{
		position : relative;
		height: 690px;
		max-height: 690px;
		background-color: #fff;
		margin-bottom: 10px;
		cursor: pointer;
	}

	.col2{
		position : relative;
		height: 515px;
		max-height:515px;
		margin: 0 10px 10px 10px;
		background-color: #fff;
		cursor: pointer;
	
	}
	.overlay{
		position : absolute;
		top : 0;
		bottom : 0;
		right : 0;
		height: 100%;
		width : 100%;
		opacity: 0;
		transition : .5s ease;
		background-color: white;
		padding : 10%;
		box-sizing: border-box;
		box-shadow: inset 0 0 10px rgba(0,0,0,.5);
	}
	.col1 .overlay_story{
		width: 100%;
		height :22.4em;
		line-height : 1.2em;
		-webkit-line-clamp: 17;
		-webkit-box-orient: vertical;
		display: -webkit-box;
		overflow: hidden;
		word-wrap:break-word; 
		text-overflow: ellipsis;	
	}
	.col2 .overlay_story{
		width: 100%;
		height :9.3em;
		line-height : 1.2em;
		-webkit-line-clamp: 6;
		-webkit-box-orient: vertical;
		display: -webkit-box;
		overflow: hidden;
		word-wrap:break-word; 
		text-overflow: ellipsis;
	}
	.overlay > span{
		color:#30a1c0;
		font-size: 30px;
		font-weight: bold;
	}
	.overlay_score{
		width: 100%;
		
		border-top : 1px solid #cccccc;
		border-bottom: 1px solid #cccccc;
	}
	.score_icon{
		width : 50px;
		height : 50px;
		vertical-align: middle;
	}
	td *{	
		vertical-align: middle;		
	}
	.clr_both{
		clear:both;
	}
	.oscore_div{
		display: inline-block;
		width: 48%;
	}
	.oscore_div > span {
		display: block;
		text-align: center;
		font-size: 14px;
    	font-weight: bold;
	}
	.oscore_div:nth-child(1) > span:nth-child(1) {
	    color: green;
	}
	.oscore_div:nth-child(2) > span:nth-child(1) {
	    color: #568ef7;
	}
	.oscore_div > img {
		border: 1px solid black;
		border-radius: 100%;
		display: block;
		text-align: center;
		margin-left: 38%;
	}
	.oscore_div:nth-child(1) > img {
	    border-color: green;
	}
	.oscore_div:nth-child(2) > img {
	    border-color: #568ef7;
	}
	.link_detail{color:#30a1c0;}
	.col1:hover .overlay{opacity: 1;}
	.col2:hover .overlay{opacity: 1;}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$(".score_view > table").css("transform","rotatey(0deg)")
});

$(document).on("click",".col1",function(){
	location.href= "detailmovie.spoid?movieCd="+($(this).attr("data-num"));
});

</script>

</head>
<body id="index_box" onload="load()">
	<div id="index_wrapper" class="wrapper">
		<div class="graph_div">	
			<div class="score_view">
				<p>SPOID's MOVIE CHART</p>
				<table >
					<tr>
						<th>RANK</th>
						<th>MOVIE NAME</th>
						<th style="color:green;">NAVER</th>
						<th style="color:#568ef7;">DAUM</th>
					</tr>
					<c:forEach items="${indexList}" var="idxDto"  varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${idxDto.kor_tit}</td>
						<c:forEach items="${nAvg}" var="nAvg" varStatus="status2">
						<c:if test="${status2.count == status.count}">
						<c:forEach items="${nSvg}" var="nSvg" varStatus="status4">
						<c:if test="${status4.count == status.count}">
						<td><img src="<%=path%>/img/slime/score${nSvg}.svg" class="score_icon naver_score">${nAvg}</td>
						</c:if></c:forEach>
						</c:if></c:forEach>
						<c:forEach items="${dAvg}" var="dAvg" varStatus="status3">
						<c:if test="${status3.count == status.count}">
						<c:forEach items="${dSvg}" var="dSvg" varStatus="status5">
						<c:if test="${status5.count == status.count}">
						<td><img src="<%=path%>/img/slime/score${dSvg}.svg" class="score_icon naver_score">${dAvg}</td>
						</c:if></c:forEach>
						</c:if></c:forEach>
					</tr>					
					</c:forEach>
				</table>
			</div>
			<div class="graph_view">
				  <div>
				    <canvas id="canvas"></canvas>
				  </div>
			</div>
			<div class="clr_both"></div>
		</div>
		<div class="topmv_section">
			<div class="topmv_content">
				<div class="inner_topmv">
					<c:forEach items="${indexList}" var="idxDto" varStatus="status">
						<c:if test="${status.count==1||status.count==5||status.count==8}">
							<div class="col1" data-num="${idxDto.movieCd}">
								<img src="${idxDto.poster}">
								<div class="overlay">
									<span>${idxDto.kor_tit}</span>
									<h3>${idxDto.eng_tit}</h3>
									<div class="overlay_story">
										<strong>줄거리</strong>
										<p>${idxDto.story}</p>
									</div>
									<div class="overlay_score">
										<div class="oscore_div">
											<c:forEach items="${nAvg}" var="nAvg" varStatus="status2">
												<c:if test="${status2.count == status.count}">
	 											  <span>NAVER</span>
	 											  <c:forEach items="${nSvg}" var="nSvg" varStatus="status4">
												  <c:if test="${status4.count == status.count}">
												  <img src="<%=path%>/img/slime/score${nSvg}.svg" class="score_icon"><span>${nAvg}</span>
												  </c:if>
	 											  </c:forEach>
												</c:if>									
											</c:forEach>
										</div>
										<div class="oscore_div">
											<c:forEach items="${dAvg}" var="dAvg" varStatus="status3">
											<c:if test="${status3.count == status.count}">
											<span>DAUM</span>
											<c:forEach items="${dSvg}" var="dSvg" varStatus="status5">
											<c:if test="${status5.count == status.count }">
											<img src="<%=path%>/img/slime/score${dSvg}.svg" class="score_icon"><span>${dAvg}</span>
											</c:if>
											</c:forEach>
											</c:if>
											</c:forEach>
										</div>
									</div>
									<a href="detailmovie.spoid?movieCd=${idxDto.movieCd}" class="link_detail">자세히 보기</a>
								
								</div>
							  </div>
												
							</c:if>
						</c:forEach>
					</div>
					<div class = "inner_topmv">
						<c:forEach items="${indexList}" var="idxDto" varStatus="status">						
							<c:if test="${status.count==2||status.count==4||status.count==6||status.count==9}">
								<div class="col2" data-num="${idxDto.movieCd}">
									<img src="${idxDto.poster}">
									<div class="overlay">
										<span>${idxDto.kor_tit}</span>
										<h3>${idxDto.eng_tit}</h3>
										<div class="overlay_story">
											<strong>줄거리</strong>
											<p>${idxDto.story}</p>
										</div>
										<div class="overlay_score">
										<div class="oscore_div">
											<c:forEach items="${nAvg}" var="nAvg" varStatus="status2">
												<c:if test="${status2.count == status.count}">
	 											  <span>NAVER</span>
	 											  <c:forEach items="${nSvg}" var="nSvg" varStatus="status4">
												  <c:if test="${status4.count == status.count}">
												  <img src="<%=path%>/img/slime/score${nSvg}.svg" class="score_icon"><span>${nAvg}</span>
												  </c:if>
	 											  </c:forEach>
												</c:if>									
											</c:forEach>
										</div>
										<div class="oscore_div">
											<c:forEach items="${dAvg}" var="dAvg" varStatus="status3">
											<c:if test="${status3.count == status.count}">
											<span>DAUM</span>
											<c:forEach items="${dSvg}" var="dSvg" varStatus="status5">
											<c:if test="${status5.count == status.count }">
											<img src="<%=path%>/img/slime/score${dSvg}.svg" class="score_icon"><span>${dAvg}</span>
											</c:if>
											</c:forEach>
											</c:if>
											</c:forEach>
										</div>
									</div>
										<a href="detailmovie.spoid?movieCd=${idxDto.movieCd}" class="link_detail">자세히 보기</a>
									
									</div>
								</div>
	
							</c:if>
					
						</c:forEach>
					</div>
					<div class = "inner_topmv">
						<c:forEach items="${indexList}" var="idxDto" varStatus="status">						
							<c:if test="${status.count==3||status.count==7||status.count==10}">
								<div class="col1" data-num="${idxDto.movieCd}">
									<img src="${idxDto.poster}">
									<div class="overlay">
										<span>${idxDto.kor_tit}</span>
										<h3>${idxDto.eng_tit}</h3>
										<div class="overlay_story">
											<strong>줄거리</strong>
											<p>${idxDto.story}</p>
										</div>
										<div class="overlay_score">
										<div class="oscore_div">
											<c:forEach items="${nAvg}" var="nAvg" varStatus="status2">
												<c:if test="${status2.count == status.count}">
	 											  <span>NAVER</span>
	 											  <c:forEach items="${nSvg}" var="nSvg" varStatus="status4">
												  <c:if test="${status4.count == status.count}">
												  <img src="<%=path%>/img/slime/score${nSvg}.svg" class="score_icon"><span>${nAvg}</span>
												  </c:if>
	 											  </c:forEach>
												</c:if>									
											</c:forEach>
										</div>
										<div class="oscore_div">
											<c:forEach items="${dAvg}" var="dAvg" varStatus="status3">
											<c:if test="${status3.count == status.count}">
											<span>DAUM</span>
											<c:forEach items="${dSvg}" var="dSvg" varStatus="status5">
											<c:if test="${status5.count == status.count }">
											<img src="<%=path%>/img/slime/score${dSvg}.svg" class="score_icon"><span>${dAvg}</span>
											</c:if>
											</c:forEach>
											</c:if>
											</c:forEach>
										</div>
									</div>
										<a href="detailmovie.spoid?movieCd=${idxDto.movieCd}" class="link_detail">자세히 보기</a>
									
									</div>
								</div>
	
							</c:if>
					
						</c:forEach>
				</div>


				<div class="clr_both"></div>
			</div>
		</div>
		
	</div>
	<script>
	
	var lineChartData = {
		    labels: ["날짜1", "날짜2", "날짜3", "날짜4", "날짜5", "날짜6", "날짜7"],
		    datasets: [{
		        fillColor: "rgba(220,220,220,0)",
		        strokeColor: "rgba(220,180,0,1)",
		        pointColor: "rgba(220,180,0,1)",
		        data: [2, 3, 8, 2, 4, 1, 6]
		    }, {
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [6, 1, 4, 3, 8, 3, 2]
		    },{
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [5, 2, 3, 4, 7, 2, 3]
		    },{
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [5, 2, 3, 4, 7, 2, 3]
		    },{
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [5, 2, 3, 4, 7, 2, 3]
		    },{
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [5, 2, 3, 4, 7, 2, 3]
		    },{
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [5, 2, 3, 4, 7, 2, 3]
		    },{
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [5, 2, 3, 4, 7, 2, 3]
		    },{
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [5, 2, 3, 4, 7, 2, 3]
		    },{
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [5, 2, 3, 4, 7, 2, 3]
		    }
		    ]

		}

		Chart.defaults.global.animationSteps = 50;
		Chart.defaults.global.tooltipYPadding = 16;
		Chart.defaults.global.tooltipCornerRadius = 0;
		Chart.defaults.global.tooltipTitleFontStyle = "normal";
		Chart.defaults.global.tooltipFillColor = "rgba(0,160,0,0.8)";
		Chart.defaults.global.animationEasing = "easeOutBounce";
		Chart.defaults.global.responsive = true;
		Chart.defaults.global.scaleLineColor = "black";
		Chart.defaults.global.scaleFontSize = 16;

		var ctx = document.getElementById("canvas").getContext("2d");
		var LineChartDemo = new Chart(ctx, {
			type:"line",
			data:lineChartData

		});
	</script>	
</body>
</html>
<%@ include file="include/footer.jsp" %>