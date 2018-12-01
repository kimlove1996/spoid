<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>



<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">


	#boxoffice_all{
		height: 2000px;
	}

	#boxoffice_top_gradation{
		background: linear-gradient(rgb(245, 245, 245) 0%, #9c9c9c 75%, #a2a2a2 93%, rgb(48, 161, 192) 100%);
		opacity: 0;
	}
	
	#slider{
		margin: 0 auto;
	    height: 100px;
	    position: relative;
	    top: 266px;
	    width: 60%;
	}
	
	.slide{
	    position: absolute;
	    padding: 5px 5px 2px 5px;
		background-color: black;
		transition : all 1s;
	}
	
	#slide_1{
	    left: 0;
	    width: 205px;
	    top: 161%;
	    z-index: 10;

	}
	#slide_1>img{ width: 205px;}
	
	#slide_2{
	    left: 20.5%;
	    width: 184px;
	    top: 93%;
	    z-index: 9;
	}
	#slide_2 > img{width: 184px;}
	
	#slide_3{
		left: 42%;
	    width: 172px;
	    top: 70px;
	    z-index: 8;
    }
    #slide_3>img{width: 172px;}
    
	#slide_4{
		right: 20.5%;
	    width: 184px;
	    top: 93%;
	    z-index: 5;
	}
	#slide_4>img{width: 184px;}
	
	#slide_5{
		right: 0;
	    width: 205px;
	    top: 161%;
	    z-index: 6;
	}
	#slide_5>img{width: 205px;}
	
	
	#slide_6{
	    right: -17%;
	    width: 227px;
	    top: 257%;
	    z-index: 5;
	}
	#slide_6>img{width: 227px;}
	
	#slide_7{
		right: 7%;
	    width: 268px;
	    top: 429%;
	    z-index:4;
	}
	#slide_7>img{ width: 268px;}
	
	#slide_8{
	    left: 37%;
	    width: 291px;
	    top: 447%;
	    z-index: 3;
    }
    #slide_8>img{width: 291px;}
    
	#slide_9{
	    left: 7%;
	    width: 268px;
	    top: 429%;
	    z-index: 2;
	}
	#slide_9>img{width: 268px;}
	
	#slide_10{
		left: -17%;
	    width: 227px;
	    top: 257%;
	    z-index: 1;
	}
	#slide_10>img{width: 227px;}
	

</style>

<script type="text/javascript">
	$(document).ready(function(){

		$("#boxoffice_top_gradation").css("transition", "all 1s").css("height","100%").css("opacity","1");
		
  		$(".slideNimg1").css("left","20.5%").css("width","184px").css("top","93%"); 
 		$(".slideNimg2").css("left","42%").css("width","172px").css("top","70%"); 
		$(".slideNimg3").css("left","62%").css("width","184px").css("top","93%"); 
		$(".slideNimg4").css("right","0%").css("width","205px").css("top","161%"); 
		$(".slideNimg5").css("right","-17%").css("width","227px").css("top","257%"); 
 		$(".slideNimg6").css("right","7%").css("width","268px").css("top","429%"); 
 	 	$(".slideNimg7").css("right","38%").css("width","291px").css("top","447%"); 
		$(".slideNimg8").css("left","7%").css("width","268px").css("top","429%"); 
		$(".slideNimg9").css("left","-17%").css("width","227px").css("top","257%"); 
		$(".slideNimg10").css("left","0%").css("width","205px").css("top","161%");
		
	});
</script>
</head>
<body id="boxoffice">
<div id="boxoffice_all">
	<div id="boxoffice_top_gradation">
		<div id="slider">
			<div id=slide_wrap>
				<div id="slide_1" class="slide slideNimg1">
					<img class="slideNimg1" src="img/poster/movie_image (1).jpg">
				</div>
		
				<div id="slide_2"  class="slide slideNimg2">
					<img class="slideNimg2" src="img/poster/movie_image (2).jpg">
				</div>
				
				<div id="slide_3"  class="slide slideNimg3">
					<img class="slideNimg3" src="img/poster/movie_image (3).jpg">
				</div>
		
				<div id="slide_4"  class="slide slideNimg4">
					<img class="slideNimg4" src="img/poster/movie_image (4).jpg">
				</div>
				
				<div id="slide_5"  class="slide slideNimg5">
					<img class="slideNimg5" src="img/poster/movie_image (5).jpg">
				</div>
				
				<div id="slide_6" class="slide slideNimg6">
					<img class="slideNimg6" src="img/poster/movie_image (6).jpg">
				</div>
		
				<div id="slide_7"  class="slide slideNimg7">
					<img class="slideNimg7" src="img/poster/movie_image (7).jpg">
				</div>
				
				<div id="slide_8"  class="slide slideNimg8">
					<img class="slideNimg8" src="img/poster/movie_image (8).jpg">
				</div>
		
				<div id="slide_9"  class="slide slideNimg9">
					<img class="slideNimg9" src="img/poster/movie_image (9).jpg">
				</div>
				
				<div id="slide_10"  class="slide slideNimg10">
					<img class="slideNimg10" src="img/poster/movie_image (10).jpg">
				</div>
			</div>
		</div>
			
	</div>
</div>







</body>
</html>
<%@ include file="include/footer.jsp" %>