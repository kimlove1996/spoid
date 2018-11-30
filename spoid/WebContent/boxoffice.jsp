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
	    border: 1px solid white;
	    width: 60%;
	}
	
	.slide{
	    width: 200px;
	    height: 400px;
	    background-color: pink;
	    position: absolute;
	}
	
	#slide_1{
		left: 0;
	    width: 193px;
	    height: 324px;
	    top: 92%;
	}
	#slide_2{
		left: 20.5%;
		width: 184px;
   		height: 280px;
   		top: 30%;
	}
	#slide_3{
		left: 41.25%;
	    width: 172px;
	    height: 210px;
    }
	#slide_4{
		right: 20.5%;
		width: 184px;
   		height: 280px;
   		top: 30%;
	}
	#slide_5{
		right: 0;
		width: 193px;
	    height: 324px;
	    top: 92%;
	}
	
	
	
	#slide_6{
	    right: -17%;
	    height: 343px;
	    top: 257%;
	    width: 227px;
	}
	#slide_7{
		right: 71px;
	    width: 268px;
	    height: 379px;
	    top: 429%;
	}
	#slide_8{
	    top: 447%;
	    left: 37.5%;
	    width: 291px;
	    height: 397px;
    }
	#slide_9{
	    left: -17%;
	    height: 343px;
	    top: 257%;
	    width: 227px;
	}
	#slide_10{
		left: 71px;
	    width: 268px;
	    height: 379px;
	    top: 429%;
	}
</style>

<script type="text/javascript">
	$(document).ready(function(){

		$("#boxoffice_top_gradation").css("transition", "all 1s").css("height","100%").css("opacity","1");
		
		
	});
</script>
</head>
<body id="boxoffice">
<div id="boxoffice_all">
	<div id="boxoffice_top_gradation">
		<div id="slider">
			<div id=slide_wrap>
				<div id="slide_1" class="slide">
				</div>
		
				<div id="slide_2"  class="slide">
				</div>
				
				<div id="slide_3"  class="slide">
				</div>
		
				<div id="slide_4"  class="slide">
				</div>
				
				<div id="slide_5"  class="slide">
				</div>
				
				<div id="slide_6" class="slide">
				</div>
		
				<div id="slide_7"  class="slide">
				</div>
				
				<div id="slide_8"  class="slide">
				</div>
		
				<div id="slide_9"  class="slide">
				</div>
				
				<div id="slide_10"  class="slide">
				</div>
			</div>
		</div>
			
	</div>
</div>







</body>
</html>
<%@ include file="include/footer.jsp" %>