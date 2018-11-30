<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#boxoffice_all{
		height: 2000px;
	}

	#boxoffice_top_gradation{
		background: linear-gradient(rgb(0, 0, 0) -19%, #d0d0d0 93%, rgb(48, 161, 192) 100%);;
		opacity: 0;
	}
	
	
	
	

	
</style>
<script src="query.circular-carousel.js"></script> 

<script type="text/javascript">
	$(document).ready(function(){

		$("#boxoffice_top_gradation")
		.css("transition", "all 1s").css("height","100%").css("opacity","1");
		
		
	});
</script>
</head>
<body id="boxoffice">
<div id="boxoffice_all">
	<div id="boxoffice_top_gradation">
		<div id="slider"></div>
		<div id="slide1" class="slide">
		</div>

		<div id="slide2"  class="slide">
		</div>
		
		<div id="slide3"  class="slide">
		</div>

		<div id="slide4"  class="slide">
		</div>
		
		<div id="slide5"  class="slide">
		</div>
			
	</div>
</div>







</body>
</html>
<%@ include file="include/footer.jsp" %>