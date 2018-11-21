<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="include.jsp" %>
<%
	String path = request.getContextPath(); // 컨텍스트 
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body,ul{
		margin : 0; 
	 	padding:0;
	}
	li{list-style: none;}
	#header_body a{text-decoration: none;}
	#header_body header{
		position:fixed;
		top : 0;
		left : 0;		
		z-index:1000;
		width : 100%;
		height: 100px;
		
	}
	.header_line{
		padding : 0 60px;
		margin :  0 auto;
		z-index: 100;
		background-color: rgba(0,0,0,0);
	}
	.header_inner > div{display: inline-block;}
	#logo_anim{
	    width: 90px;
	    height: 100px;
	    background-color: #30a1c0;
		text-align: center;
		display: inline-block;
		position: absolute;
		top : 0px;
		
	}
	#logo_anim > a,.menu_ham{
		display: inline-block;
		margin-top : 30px;
		height : inherit;
		color:white;
	}
	.menu_ham{
		background-color: #0e4754;
		width : 85px;
		height : 40px;
		line-height : 40px;
		border-radius: 4px;
		
		float:right;
		text-align: center;
		
	
	}
	.clr_both{clear:both;}
	#header_inner a{display: inline-block;}
	
	#logo_anim:hover{background-color: #ec4c6a;}
	.menu_ham:hover{background-color: #ec4c6a;}
	#menu_modal{
		position : fixed;

		left : 0;
		top : 0;
		width : 0;
		height: 100%;
		background-color: #fff;
		padding : 0 50px 50px 0;
		z-index:1;
		overflow:hidden;
		transition : 0.5s;

	}
	#menu_section{
		width : 80%;
		overflow-x : hidden;
		margin: 5% auto;
	}
	#menu_ul > li{
		display: inline-block;
		width : 32%;
		height : 400px;
		background-color: #fbfbfb;
		margin-bottom: 10px;
		box-sizing: border-box;
	}
	.menu_btn{
		display: inline-block;
		width : 100%;
		height: 100%;
	}
	.search{
		position: relative;
		width : 400px;
		left : 130px;
		margin-top : 30px;
	}
	.search > input[type=text] {
	    width: 0px;
	    box-sizing: border-box;
	    font-size: 18px;
	    height : 40px;
	    -webkit-transition: width 0.4s ease-in-out;
	    transition: width 0.4s ease-in-out;
	    overflow: hidden;
	    border : none;
	    padding-left : 10px;

	}
	.search *{
		display: inline-block;
		line-height: 40px;
		
	}
	.search > input[type=text],.search >span{float:left;}
	.search > input[type=text].active {
	    width: 300px;
	 	border-bottom: 3px solid #0e4754;
	}
	.search > span{
		display : inline-block;
		border-radius: 0 4px 4px 0px;
		font-size : 25px;
		line-height : 40px;
		height: 40px;
		width : 40px;
		background-color: #0e4754;
		color:white;

	}
	.search > span *{
		margin-left: 4px;
		line-height: 40px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){

		$('.search-button').click(function(){
			
			$(".search-box").addClass("active");
			$(".search-box").focus();
		});
	});
	$(document).on("click",".menu_ham",function(){
		var menu_state = $.trim($(this).text()); // 메뉴 햄버거 버튼의 이름을 가지고 온다
 		$(this).css("display","none");
		if(menu_state == "MENU"){ // 같으면 menu modal 을 열어주고 버튼의 상태를 close로 바꿈
			$("#menu_modal").width("100%");
			$("#menu_close").css("display","block");
		
		}else{
			alert("다름");
			$("#menu_modal").width("0");
			$("#menu_open").css("display","block");

		}
		
	});

</script>


</head>
<body id="header_body">
	<header>
		<div class="header_line">
			<div class="header_inner">
				<div class="logo" id="logo_anim">
					<a href = "#">Spoide's Slime</a>
				</div>
				<div class="search">
  					<input type="text" class="search-box" placeholder="영화 검색 키워드 입력"/>
  					<span class="search-button">
    					<span class="search-icon"><i class="fas fa-search"></i></span>
  					</span>
				</div>

				<a class="menu_ham" id="menu_open" href="#">
           			 <span class="text"><i class="fas fa-bars"></i> MENU</span>
          		</a>
          		<a class="menu_ham" id="menu_close" href="#" style="display:none;">
          			 <span class="text"><i class="fas fa-times"></i>CLOSE</span>
          		</a>
          		<div class="clr_both"></div>
          	</div>
		
		</div>
	
	</header>
	<div id="menu_modal">
		<div id="menu_section" >	
			<ul id="menu_ul">
					<li><a href="#" class="menu_btn">글자를 어또카지</a></li>
					<li><a href="#" class="menu_btn">?</a></li>
					<li><a href="#" class="menu_btn">?</a></li>
					<li><a href="#" class="menu_btn">?</a></li>
					<li><a href="#" class="menu_btn">?</a></li>
					<li><a href="#" class="menu_btn">?</a></li>

			</ul>
		</div>
	</div>
</body>
</html>