<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		margin: 0;
		padding: 0;
		background-color: #282828;
	}
	
	
	/* 필름 배경 */
	#filem1{
	    background-repeat: repeat;
	    position: fixed;
	    height: 100%;
	    left: 0;
	    z-index: 1000;
	}
	#filem2{
	    background-repeat: repeat;
	    position: fixed;
	    height: 100%;
	    right: 0;
	    z-index: 1000;
	}
	/* =================================== */
	
	/* 감싸는 범위를 가진 div */
	
	#spoid_constract_all{
	    width: 50%;
	    margin: 0 auto;
	}
	
	
	
	
	
	/* 회원가입동의 */
	#spoid_logo{
		display: block;
	    text-align: center;
	    color: #ffb926;
	    font-weight: bold;
	    font-size: 71px;
	    position: relative;
	    top: 57px;
	    letter-spacing: 49px;
	}
	
	
	
	/* 언어지원 셀렉트박스 */
	#lang_select{
		position: relative;
	    left: 850px;
	    bottom: 52px;
	    width: 88px;
	    height: 27px;
	}
	
	
	
	
	
	
	
	
</style>
</head>
<body>
	<!-- 왼쪽 필름 -->
<img alt="" src="img/filem.PNG" id="filem1">	

	<!-- 오른쪽 필름 -->
<img alt="" src="img/filem.PNG" id="filem2">	



<div id="spoid_constract_all">


	<!-- 회원가입동의 문구 -->
	<span id="spoid_logo">SPOID</span>
	
	
	<!-- 언어지원 셀렉트박스 -->
	<select id="lang_select">
		<option>한국어</option>
		<option>English</option>
		<option>中文(简体)</option>
		<option>中文(台灣)</option>
	</select>



</div>

</body>
</html>