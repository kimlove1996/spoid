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
		width : 29%;
		height : 100%;
		padding: 10% 0 0 4%;
	}
	.score_view table{
		border-collapse: collapse;
		text-align: center;
		text-overflow: ellipsis;
		width: 100%;
	}
	
	.score_view table th,.score_view table td{
    	overflow: hidden;
    	padding : 0 10px;

  	}
	.score_view table tr:nth-child(odd){
		background-color: #F8F6F8;
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
		
		width : 90%;
		margin: 0 auto;
		padding : 50px 50px 50px 150px;
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
	}
	.link_detail{color:#30a1c0;}
	.col1:hover .overlay{opacity: 1;}
	.col2:hover .overlay{opacity: 1;}
</style>
<script type="text/javascript">

</script>

</head>
<body id="index_box" onload="load()">
	<div id="index_wrapper" class="wrapper">
		<div class="graph_div">	
			<div class="score_view">
				<p>네티즌 평점 지수</p>
				<table >
					<tr>
						<th>순위</th>
						<th>이름</th>
						<th>네이버</th>
						<th>다음</th>
					</tr>
					<tr>
						<td>1</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon daum_score">7</td>
					</tr>					
					<tr>
						<td>2</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>	
					<tr>
						<td>3</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>	
					<tr>
						<td>4</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>
					<tr>
						<td>5</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>		
					<tr>
						<td>6</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>					
					<tr>
						<td>7</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>	
					<tr>
						<td>8</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon"><span>7.82</span></td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon">7</td>
					</tr>	
					<tr>
						<td>9</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon daum_score">7</td>						
					</tr>
					<tr>
						<td>10</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="<%=path%>/img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>				
				</table>
			</div>
			<div class="graph_view">
				<div class="graph1">2018.11.20</div>
				<div class="graph_txt">박스오피스</div> 
				<div class="graph2">TOP 10</div>
				<canvas></canvas>
			</div>
			<div class="clr_both"></div>
		</div>
		<div class="topmv_section">
			<div class="topmv_content">
				<div class="inner_topmv">
					<c:forEach items="${indexList}" var="idxDto" varStatus="status">
						<c:if test="${status.count==1||status.count==5||status.count==8}">
							<div class="col1" data-num="${status.count}">
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
											<span>네이버</span>
											<span><img src="<%=path%>/img/slime/score4.png" class="score_icon">7</span>
										</div>
										<div class="oscore_div">
											<span>다음</span>
											<span><img src="<%=path%>/img/slime/score4.png" class="score_icon">7</span>
										</div>
									</div>
									<a href="#" class="link_detail">자세히 보기</a>
								
								</div>
							  </div>
												
							</c:if>
						</c:forEach>
					</div>
					<div class = "inner_topmv">
						<c:forEach items="${indexList}" var="idxDto" varStatus="status">						
							<c:if test="${status.count==2||status.count==4||status.count==6||status.count==9}">
								<div class="col2" data-num="${status.count}">
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
												<span>네이버</span>
												<span><img src="<%=path%>/img/slime/score4.png" class="score_icon">7</span>
											</div>
											<div class="oscore_div">
												<span>다음</span>
												<span><img src="<%=path%>/img/slime/score4.png" class="score_icon">7</span>
											</div>
										</div>
										<a href="#" class="link_detail">자세히 보기</a>
									
									</div>
								</div>
	
							</c:if>
					
						</c:forEach>
					</div>
					<div class = "inner_topmv">
						<c:forEach items="${indexList}" var="idxDto" varStatus="status">						
							<c:if test="${status.count==3||status.count==7||status.count==10}">
								<div class="col1" data-num="${status.count}">
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
												<span>네이버</span>
												<span><img src="<%=path%>/img/slime/score4.png" class="score_icon">7</span>
											</div>
											<div class="oscore_div">
												<span>다음</span>
												<span><img src="<%=path%>/img/slime/score4.png" class="score_icon">7</span>
											</div>
										</div>
										<a href="#" class="link_detail">자세히 보기</a>
									
									</div>
								</div>
	
							</c:if>
					
						</c:forEach>
				</div>


				<div class="clr_both"></div>
			</div>
		</div>
		
	</div>
	
</body>
</html>
<%@ include file="include/footer.jsp" %>