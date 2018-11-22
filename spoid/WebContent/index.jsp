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
		padding: 180px 60px 20px;
	}
	.graph_view{
		background-color: #F8F6F8;
		width : 64%;
		height : 100%;
		max-height: 100%;
		float :right;
	}
	.topmv_section{
		background-color:#f5f5f2;
		min-height: 500px;
	}
	.topmv_content{
		padding : 50px;
	}
	.graph_div > div{
		display: inline-block;
		
	}
	
	.inner_topmv{
		display: inline-block;
		width : 33%;
		max-height: 2100px;
		float: left;
	}
	.col1{
		height: 690px;
		max-height: 690px;
		background-color: #fff;
		margin-bottom: 10px;
		
	}
	.col2{
		height: 515px;
		max-height:515px;
		margin: 0 10px 10px 10px;
		background-color: #fff;
		
	
	}
	.score_icon{
		width : 50px;
		height : 50px;
	}
	td *{	
		vertical-align: middle;		
	}
	.clr_both{
		clear:both;
	}

</style>

</head>
<body id="index_box">
	<div id="index_wrapper" class="wrapper">
		<div class="graph_div">	
			<div class="score_view">
				<p>네티즌 평점 지수</p>
				<table>
					<tr>
						<th>순위</th>
						<th>이름</th>
						<th>네이버</th>
						<th>다음</th>
					</tr>
					<tr>
						<td>1</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="img/slime/score4.png" class="score_icon daum_score">7</td>
					</tr>					
					<tr>
						<td>2</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>	
					<tr>
						<td>3</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>	
					<tr>
						<td>4</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>
					<tr>
						<td>5</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>		
					<tr>
						<td>6</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>					
					<tr>
						<td>7</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>	
					<tr>
						<td>8</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon"><span>7.82</span></td>
						<td><img src="img/slime/score4.png" class="score_icon">7</td>
					</tr>	
					<tr>
						<td>9</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="img/slime/score4.png" class="score_icon daum_score">7</td>						
					</tr>
					<tr>
						<td>10</td>
						<td>신비한 동물사전:그렌왈드의 범죄</td>
						<td><img src="img/slime/score4.png" class="score_icon naver_score">7.82</td>
						<td><img src="img/slime/score4.png" class="score_icon daum_score">7</td>					
					</tr>				
				</table>
			</div>
			<div class="graph_view">
				<div class="graph1">2018.11.20</div>
				<div class="graph_txt">박스오피스</div> 
				<div class="graph2">TOP 10</div>
			</div>
			<div class="clr_both"></div>
		</div>
		<div class="topmv_section">
			<div class="topmv_content">

				<div class="inner_topmv">
					<div class="col1">1</div>
					<div class="col1">5</div>
					<div class="col1">8</div>
				</div>

				<div class="inner_topmv">
					<div class="col2">2</div>
					<div class="col2">4</div>
					<div class="col2">6</div>
					<div class="col2">9</div>
				</div>

				<div class="inner_topmv">
						<div class="col1">3
						</div>
						<div class="col1">7</div>
						<div class="col1">10</div>
				</div>
				<div class="clr_both"></div>
			</div>
		</div>
		
	</div>
	
</body>
</html>