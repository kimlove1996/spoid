<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding');
	/* 폰트체 기억이 안나서 아무거나 해놨음...나중에 보고서 확인하고 수정할 예정 */
	/* 기본 컬러 :black, white, 호버 시 글자 회색 #555; ; 글자색: rgba(255,255,255,0.5);  */
	
	*{font-family: 'Nanum Gothic Coding', monospace;}
	body, ul{margin: 0px; padding: 0px;}
	a{text-decoration:none;}
	ul{list-style: none; list-style-type:none;}
	#sidebar_body{
		width : auto;
	}
	/* 사이드바를 싸고 있는 div */	
	#sidebar_wrap *{
		box-sizing: border-box;
	
	}
	
	#sidebar_wrap{
		width:  200px;
		top:0px;
		left: 0px;
		z-index: 1;
		color: white;
		background-color: #212121;
		font-size: 15px;
		overflow: auto;
		height: 100%;
		text-align: center;
		position: fixed;
		z-index: 2;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),
					0 4px 20px 0 rgba(0,0,0,0.19);
	
	}
	
	/* 로고 이미지 */
	#sidebar_logo{
		margin: 10px 0 20px 0;
		padding: 0px 20px;
	}
	#logo_s{
		font-size: 50px;
		font-weight: 700;
		
	}
	#logo_poid{
		font-size: 30px;
		font-weight: 600;
		font-style: italic;
	}
	
	/* 검색창 */
	
	#sidebar_wrap_search{
		height:25px;
		display: inline-block;
		padding-top:10px; 
	}
	
	div#sidebar_search{
		border: 2px solid;
		height: 25px;
		box-sizing: border-box;
		position: relative;
	}
	input#search_keyword{
		width: 175px;
		height:21px;
		font-size: 13px;
		box-sizing: border-box;
		border: 0px;
		padding-left:5px;
		background-color: #222;
		color: white;
	}
	input#search_btn{
		width: 38px;
		height: 24px;
		color:white;
		font-size: 13px;
		border:0px;
		position: absolute;
		right: -2px;
		top:-2px;
	}
	
	/* 메뉴 */
	#sidebar_menu{
		margin: 40px 5px 0px 5px;
		width: 190px;
	}
	
	.side_menu{
		font-size: 15px;
		font-weight: 600;
		text-align: left;
		padding: 10px 15px;


	}
	.side_menu > a{

		color :rgba(255,255,255,0.7);
	}
	.side_menu>a:hover{
		 color:white;
	}
	.active >a{
		 color:white;

	}	
	.sidebar_menu_ul li{
		background-color:#222;
	}	
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		});
</script>
</head>
<body id="sidebar_body">
	<!-- 전체Div -->
	<div id="sidebar_wrap">
		<!-- 로고 -->
		<div id="sidebar_logo"><a href="">
			<span id="logo_s">S</span><span id="logo_poid">poid</span></a>
		</div>
		<!-- 검색창 -->
		<div id="sidebar_wrap_search">
			<div id="sidebar_search">
				<input id="search_keyword" type="text" placeholder="검색어를 입력하세요.">
				<input id="search_btn" type="submit" value="검색">
			</div>
				
		</div>
		
		<!-- 사이드바의 메뉴  -->
		<div id="sidebar_menu">
			<ul id="sidebar_menu_ul">
				<li class="side_menu active"><a href="#">홈</a></li>
				<li class="side_menu"><a href="#">박스오피스</a></li>
				<li class="side_menu"><a href="#">현재 상영작</a></li>
				<li class="side_menu"><a href="#">모든 영화</a></li>
				<li class="side_menu"><a href="#">자유게시판</a></li>					
			
			</ul>

	
		</div>
		
		
	</div>

</body>
</html>