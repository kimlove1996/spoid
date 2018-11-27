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
    	border-bottom: 1px solid #cccccc;
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
		padding : 50px;
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
		height: 60%;
		max-height : 60%;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	.col2 .overlay_story{
		width: 100%;
		height : 160px;
		font-size : 1.2em;
		-webkit-line-clamp: 7;
		-webkit-box-orient: vertical;
		display: -webkit-box;
		overflow: hidden;

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


</head>
<body id="index_box">
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
					<div class="col1" data-num="1">
						<img src="<%=path%>/img/poster/movie_image.jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
					<div class="col1" data-num="5">
						<img src="<%=path%>/img/poster/movie_image (4).jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<h4>줄거리</h4>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
					<div class="col1" data-num="8">
						<img src="<%=path%>/img/poster/movie_image (7).jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<h4>줄거리</h4>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
				</div>

				<div class="inner_topmv">
					<div class="col2" data-num="2">
						<img src="<%=path%>/img/poster/movie_image (1).jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<h4>줄거리</h4>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
					<div class="col2" data-num="4">
						<img src="<%=path%>/img/poster/movie_image (3).jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<h4>줄거리</h4>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
					<div class="col2" data-num="6">
						<img src="<%=path%>/img/poster/movie_image (5).jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<h4>줄거리</h4>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
					<div class="col2" data-num="9">
						<img src="<%=path%>/img/poster/movie_image (8).jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<h4>줄거리</h4>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
				</div>

				<div class="inner_topmv">
					<div class="col1" data-num="3">
						<img src="<%=path%>/img/poster/movie_image (3).jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<h4>줄거리</h4>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
					<div class="col1" data-num="7">
						<img src="<%=path%>/img/poster/movie_image (6).jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<h4>줄거리</h4>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
					<div class="col1" data-num="10">
						<img src="<%=path%>/img/poster/movie_image (9).jpg">
						<div class="overlay">
							<span>보헤미안 랩소디</span>
							<h3>Bohemian Rhapsody, 2018</h3>
							<h4>줄거리</h4>
							<div class="overlay_story">
								<strong>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”</strong>
								<p>
									공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ 
									 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. 
									  
									 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 
									 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 
									 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. 
									  
									 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 
									 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 
									  
									 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, 
									 우리가 몰랐던 그들의 진짜 이야기가 시작된다!							
								</p>
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
				</div>
				<div class="clr_both"></div>
			</div>
		</div>
		
	</div>
	
</body>
</html>
<%@ include file="include/footer.jsp" %>