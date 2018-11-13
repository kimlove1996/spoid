<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>필름 사이즈 조절 및 이미지화</title>

<style type="text/css">
	body{
		margin: 0;
		padding: 0;
	}
	
	#bil1{
	    width: 256px;
	    height: 100%;
	    display: inline-block;
	    border: 1px solid black;
	    background-color: black;
	    position: absolute;
	    left: 0;
	}
	#bil2{
	    width: 256px;
	    height: 100%;
	    display: inline-block;
	    border: 1px solid black;
	    background-color: black;
	    position: absolute;
	    right: 0;
	}
	#bil1 > div > div, #bil2 > div > div{
	    background-color: white;
	    width: 197px;
	    height: 83px;
	    position: relative;
	    display: block;
	    margin: 30px auto;
	}
	
	
</style>
</head>
<body>
<div id="bile">


	<!-- 왼쪽 필름 -->
	<div id="bil1" class="bill">
		<div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>	
	</div>
	
	
	<!-- 오른쪽필름 -->
	<div id="bil2" class="bill">
		<div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>	
	</div>
</div>	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<div>	
</body>
</html>