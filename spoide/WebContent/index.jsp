<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ include file="include/sidebar.jsp" %>
    <%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding');
	/* 폰트체 기억이 안나서 아무거나 해놨음...나중에 보고서 확인하고 수정할 예정 */
	/* 기본 컬러 :black, white, 회색 #555; 컬러색 #9933CC; 좀 더 진한 호버할 때 색 : #7a29a3;  */
	*{font-family: 'Nanum Gothic Coding', monospace;}
	body, ul{margin: 0px; padding: 0px; }
	a{text-decoration:none; color: white;}
	ul{list-style: none; list-style-type:none;}
	
	#index_body{
		padding-top: 31px;
		background-color: #555;
		
	}
	#index_wrap{
		width: 70%;
		margin: 0 auto;
		background-color: #555;
	}
	
	/* 그래프 */
	#main_graph{
		background-color: white;
		color: black;
		margin: 20px 0 0 0px;
		text-align: center;
	}
	
	/* 1~10위 영화 포스터 */
	#movie_span{
		text-align: center;
		font-size: 25px;
		margin: 20px 0;
		color: white;
		display: block;
	}
	
	
	#main_movie{
		box-sizing: border-box;
		display: inline-block;
		width: 100%;
		text-align: center;
	}
	
	#main_movie_ul{
		display: inline-block;
		width: 100%;
		margin: 0 auto;
		border: 3px double white;
		background-color: #353535;
		box-sizing: border-box;
		
	}
	
	.movie_list{
		margin: 20px 5px 30px 5px;
		display: inline-block;
		text-align: center;
	}
	/* 영화1개 싸는 div */
	.movie_wrap{
		display: inline-block;
		width: 220px;
		height: 420px;
		box-sizing: border-box;
		border: 1px solid #555;
	}
	
	.movie_wrap:hover{
		border: 1px solid white;
	}
	/* 영화포스터(호버포함) */
	.movie_poster_wrap{
		height: 360px;
		position: relative;
	}
	
	.movie_poster_wrap:hover .movie_info_wrap{
		display: block;
	}
	
	.movie_info_wrap{
		background-color: #000000;
		color: black;
		position: absolute;
		width: 205px;
		height: 300px;
		top: 50%;
		left: 50%;
		transform: translate( -50%, -50% );
		opacity: 0.7;
		display: none;
		box-sizing: border-box;
		color: white;
		z-index: 0;
	}
	
	.movie_info{
		text-align: left;
		padding: 10px;
		font-size: 14px;
	}
	
	/* 영화제목과 평점 */
	
	.movie {
		margin: 13px 10px;
		box-sizing: border-box;
		
	}
	.movie_tit{
		color: white;
		font-size: 17px;
		font-weight: 700;
		box-sizing: border-box;
		text-align: left;
	}
	.movie_tit:hover{
		color: #9933CC;
	}
	.movie_sco{
		text-align: right;
		font-weight: 700;
		color: #FF6C6C;
		box-sizing: border-box;
	}

	
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body id="index_body">
	<div id="index_wrap">
	<!-- 메인화면 그래프 -->
		<div id="main_graph">
		<!-- 넣어둔 그래프 이미지는 아무거나 넣어놨으므로 나중에 다시 넣을 것! -->
			<img alt="" src="img/graph.jpg">
		</div>
		<!-- 박스오피스 영화 -->
		<div id="main_movie">
			<span id="movie_span">박스오피스</span>
			<ul id="main_movie_ul">
		
			<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
						
							<div class="movie_info_wrap">
								<div class="movie_info">
								<span>
									<a href="#">
									호버시 영화 상세정보
									</a>
								</span>
								</div>
							</div>
						
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
						
							<div class="movie_tit">
							<span><a href="#">영화제목</a></span>
							</div>
						
			<!-- 영화평점 -->
						<div class="movie_sco">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
				
				<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster2.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
						<div class="movie_info_wrap">
								<div class="movie_info">
								<span><a href="#">호버시 영화 상세정보</a></span>
								</div>
						</div>
						
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
					<div class="movie_tit">
						<a href="#">
							
							<span>영화제목</span>
						
						</a>
					</div>
			<!-- 영화평점 -->
						<div class="movie_sco">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
				
				<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster3.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
						
							<div class="movie_info_wrap">
							
								<div class="movie_info">
								<span><a href="#">호버시 영화 상세정보</a></span>
								</div>
							</div>
						
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
						<div class="movie_title">
							<span>
								<a href="#">
									
									영화제목
									
								</a>
							</span>
						</div>
			<!-- 영화평점 -->
						<div class="movie_score">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
				
				<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster4.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
					
							<div class="movie_info_wrap">
								<div class="movie_info">
								<span>	<a href="#">호버시 영화 상세정보</a></span>
								</div>
							</div>
						
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
					<div class="movie_tit">
						
							
							<span><a href="#">영화제목</a></span>
							
						
					</div>
			<!-- 영화평점 -->
						<div class="movie_sco">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
						<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster5.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
						<div class="movie_info_wrap">
							
							
									<div class="movie_info">
									<span><a href="#">호버시 영화 상세정보</a></span>
									</div>
								
							
						</div>
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
					<div class="movie_tit">
					
							
							<span><a href="#">영화제목</a></span>
							
						
					</div>
			<!-- 영화평점 -->
						<div class="movie_sco">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
				
						<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster6.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
						<div class="movie_info_wrap">
						
							
								<div class="movie_info">
								<span><a href="#">호버시 영화 상세정보</a></span>
								</div>
							
						
						</div>
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
					<div class="movie_tit">
						
							
							<span><a href="#">영화제목</a></span>
							
						
					</div>
			<!-- 영화평점 -->
						<div class="movie_sco">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
					
						<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster7.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
						<div class="movie_info_wrap">
							<div class="movie_info">
								<a href="#">
									
										
									<span>호버시 영화 상세정보</span>
										
									
								</a>
							</div>
						</div>
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
					<div class="movie_tit">
						
							
							<span><a href="#">영화제목</a></span>
							
						
					</div>
			<!-- 영화평점 -->
						<div class="movie_sco">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
				
						<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster8.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
						<div class="movie_info_wrap">
							<div class="movie_info">
								<a href="#">
									<span>호버시 영화 상세정보</span>
								</a>
							</div>
						</div>
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
					<div class="movie_tit">
						<a href="#">
							<span>영화제목</span>
						</a>
					</div>
			<!-- 영화평점 -->
						<div class="movie_sco">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
				
						<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster9.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
						<div class="movie_info_wrap">
							<div class="movie_info">
							<a href="#">
								
									
									<span>호버시 영화 상세정보</span>
									
								
							</a>
							</div>
						</div>
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
					<div class="movie_tit">
						
							
							<span><a href="#">영화제목</a></span>
							
						
					</div>
			<!-- 영화평점 -->
						<div class="movie_sco">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
				
						<!-- 영화 리스트 -->
				<li class="movie_list">
			<!-- 영화 하나를 싸는 div -->
				<div class="movie_wrap">
			<!-- 포스터div(호버시 정보 뜨는 거 포함) -->
					<div class="movie_poster_wrap">
			<!-- 포스터 -->
						<div class="movie_poster">
							<img src="img/poster10.jpg" width="218" height="360">
						</div>
			<!-- 호버시 영화 상세정보 -->
						<div class="movie_info_wrap">
							
						
							<div class="movie_info">
								
								<span><a href="#">호버시 영화 상세정보</a></span>
								
							</div>
						
							
						</div>
					</div>
			<!-- 영화제목과 평점 -->	
					<div class="movie">
			<!-- 영화제목 -->
						<div class="movie_tit">
							
								
								<span><a href="#">영화제목</a></span>
								
							
						</div>
			<!-- 영화평점 -->
						<div class="movie_sco">
						<span >평점</span>
						</div>
					</div>
				</div>
				</li>
			</ul>
			</div>
			</div>

</body>
</html>