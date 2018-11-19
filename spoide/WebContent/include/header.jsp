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
	/* 기본 컬러 :black, white, 회색 #555; 컬러색 #9933CC; 좀 더 진한 호버할 때 색 : #7a29a3;  */
	*{font-family: 'Nanum Gothic Coding', monospace;}
	#header_body,#header_body ul{margin: 0px; padding: 0px;}
	#header_body a{text-decoration:none; color: white;}
	ul{list-style: none; list-style-type:none;}
	#header_wrap{
		box-sizing: border-box;
		top:0px;
		left: 0px;
		color : white;
		width: 100%;
		position: fixed;
		background-color: #555;
		z-index: 1;
		
	}
	
	/* 로그인, 회원가입 */
	#header_info{
		width: 70%;
		margin: 0 auto;

	}
	
	#header_info_ul{
		float: right;
	}
	#header_info_ul > li{
	float:left;
	position: relative;
	}
	
	.border_box {

		width: 66px;
		height: 21px;
		text-align: center;
		display: inline-block;
		margin: 4px 0 4px 10px;
		line-height: 20px;
		font-size: 13px;
	}
	
	.border_box:hover{

		font-style: italic;
	}
	
	
</style>
</head>
<body id="header_body">
	<div id="header_wrap">
	<!-- 로그인, 회원가입, 고객센터(후에 마이페이지 로그아웃 등 추가) -->
		<div id="header_info">
			<ul id="header_info_ul">
				<li><a href="#"><div class="border_box">로그인</div></a></li>
				<li><a href="#"><div class="border_box">회원가입</div></a></li>
				<li><a href="#"><div class="border_box">고객센터</div></a></li>
			</ul>
		</div>
			
		</div>
	</div>
</body>
</html>