<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#footer_body{margin: 0px;}
	
	.information{text-decoration: none;}

	.sns_icon{float: right; color: white; font-size: 40px; margin-left: 1%;}
	
	#facebook:hover{color : #0e4754}
	#youtub:hover{color : #0e4754}
	#line:hover{color : #0e4754}
	#instagram:hover{color : #0e4754}
	#twitter:hover{color : #0e4754}
	#top {
		cursor: pointer;
		width: 100px;
	    height: 100px;
    	border-radius: 100%;
    	border: 2px double #30a1c0;
    	background-color: #30a1c0;
    	margin: 0 auto;
    	position: relative;
    	top: 50px;
    	color: white;
    	text-align: center;
	 }
	 #t_border {
	 	width: 80px;
	 	height: 80px;
	 	border: 2px solid #30a1c0;
	 	border-radius: 100%;
	 	border-radius: 100%;
    	margin: 8px auto 0 auto;
	 }
	 #top:hover {
	 	color: #f0af24;
		background-color: white;
		border: 2px double #30a1c0;
		transition: all 1s;
		
	 }
	 #top > #t_border > p {
	 	margin: 0;
    	margin-top: 15px;
	 }
	 #top > #t_border > span {
	 	margin: 0;
	 }
</style>
<script type="text/javascript">

$(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 500) {
            $('#top').fadeIn();
        } else {
            $('#top').fadeOut();
        }
    });
    
    $("#top").click(function() {
        $('html, body').animate({
            scrollTop : 0
        }, 400);
        return false;
    });
});



</script>
</head>
<body id="footer_body"> 

	<div id="top"><div id="t_border"><p>^</p><span>TOP</span></div></div>
	<div style="height: 250px; background-color: #30a1c0; width: 100%; padding-top: 1%;" >
		<div style=" padding-top: 1%;">
			<a class="information" href="#"><span style="color: white; font-size: 40px; font-weight: bolder; margin: 5%;">Spoid</span>
			<a class="information" href="#"><span id="facebook" class="sns_icon" style=" margin-right: 3%;"><i class="fab fa-facebook-f"></i></span></a>
			<a class="information" href="#"><span id="youtub" class="sns_icon"><i class="fab fa-youtube"></i></span></a>
			<a class="information" href="#"><span id="line" class="sns_icon"><i class="fab fa-line"></i></span></a>
			<a class="information" href="#"><span id="instagram" class="sns_icon"><i class="fab fa-instagram"></i></span></a>
			<a class="information" href="#"><span id="twitter" class="sns_icon"><i class="fab fa-twitter"></i></span></a>
		</div>
		
		<div style="margin: 2%"></div>
		
		<div>
			<a class="information" href="teaminfo.spoid"><span style="color : white; margin-left: 5%; font-size: 20px;">팀 소개</span></a>
			<a class="information" href="personalinfo.spoid"><span style="color : white; margin-left: 2%; font-size: 20px;">개인정보 취급방침</span></a>
			<a class="information" href="useinfo.spoid"><span style="color : white; margin-left: 2%; font-size: 20px;">이용약관</span></a>
		</div>
		
		<div style="margin-top: 2.5%;">
			<span style="color : white; font-size: 12px; margin-left: 5%;">2018 Spoid - Doing something good for people after 2018.</span>
		</div>
		
	</div>
	
</body>
</html>