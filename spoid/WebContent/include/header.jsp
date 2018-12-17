<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="include.jsp" %>
<%
	String path = request.getContextPath(); // 컨텍스트 
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/slime/favicon2.ico" type="image/x-icon">
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
		width : 1905px;
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
	#logo_anim > a{
		color:white;
	}
	.menu_ham{
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
		overflow : hidden;
		left : 0;
		top : 0;
		width : 0;
		height: 100%;
		background-color: #fff;
		z-index:1;
		transition : 0.5s;
		text-align: center;

	}
	#menu_section{
	    /* width: 73%; */
	    width:1344px;
	    margin: 5% auto;
	    display: inline-block;
	    height: 680px;
	    overflow: hidden;
	}
	#menu_section > div{

		margin: 5% auto;
		display: inline-block;
		float:left;
	}
	#menu_wrapper{
		width:70%;
	}
	#log_section{
		box-sizing:border-box;
		padding-top : 5%;
		width : 30%;
		background-color: #f1f1f1;
		height: 610px;
	}
	
	#log_section p:nth-child(2){
		height: 21px;
	    overflow: hidden;
	}
	#log_section p:nth-child(3){
		height: 20px;
	    box-sizing: border-box;
	    overflow: hidden;
	}


	#menu_ul > li{
		display: inline-block;
		width : 300px;
		height : 300px;
		background-color: #f1f1f1;
		margin-bottom: 10px;
		box-sizing: border-box;
		float : left;
		margin-left: 10px;
	}
	.menu_btn{
	    display: inline-block;
	    width: 100%;
	    height: 21px;
	    overflow: hidden;
	}
	.search-button{
		cursor:pointer;  	
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
	    background-color: white;
	    opacity: 0.8;
	}
	.search *{
		display: inline-block;
		line-height: 40px;
		
	}
	.search > input[type=text],.search >span{float:left;}
	.search > input[type=text].s_active {
	    width: 300px;
	 	border-bottom: 3px solid #0e4754;
		padding-left: 8px;
		outline-color: #a8c6cc;
		height: 39px;
		margin-top: 1px;
	}
	.search > span{
		display : inline-block;
		border-radius:4px;
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
	.menu_icon{
		width : 139px;
		height: 80%;
	}
	.menu_li_div{
		margin : 50px;
		color:#0e4754;
		font-weight: bold;
	}
	.white{
		background-color: white;
	}
	.img_log{
		margin : auto;
		width : 90%;
		height : 70%;
		
		background-repeat : no-repeat;
		background-size: cover;
		border : 3px solid white;
		box-sizing : border-box;
		border-radius: 90%;
		-moz-border-radius: 90%;
		-khtml-border-radius: 90%;
		-webkit-border-radius: 90%;
	}
	.mlog_btn{
		color:black;
		font-weight: bold;
	}
	
	#mlog_wrap{
		height: 21px;
	    overflow: hidden;
	}
	.changeCol{
		background : linear-gradient(to bottom,#a4a4a4, #dedede38 62%, #ffffff00 100%);
	}

	.logo > a > span{
		display : inline-block;
		margin-top :30px;
	}
	.logo > a > img{
		width: 80px;
		margin-top: 5px;
	}
	#menu_ul>li:hover,#log_section:hover{
		background-color: #cccccc;
	}
	#menu_ul>li{cursor: pointer;}
	
	
	
	
	/* 로그인 환영 텍스트 */
	#welcom_login{
		margin: 14px 0;
	}
	
	
	
	/* add class */
	.add-section{
   		background-color: black;
    }
</style>
<script type="text/javascript">
	$(document).ready(function(){

		$('.search-button').click(function(){
			$(".search-button").css("border-radius","0px 4px 4px 0px");
			$(".search-box").addClass("s_active");
			$(".search-box").focus();
			if($(".search-box").val() != ""){
				location.href = "searchmovie.spoid?keyword="+($(".search-box").val());
			}
			
		});
		$(window).on('scroll', function() {
			if($(window).scrollTop()){
				$('#header_body header').addClass('changeCol');
	
			}else{
				$('#header_body header').removeClass('changeCol');
			}	
		});
		
	});
	$(document).on("click",".menu_ham",function(){
		var menu_state = $.trim($(this).text()); // 메뉴 햄버거 버튼의 이름을 가지고 온다
 		$(this).css("display","none");
		if(menu_state == "MENU"){ // 같으면 menu modal 을 열어주고 버튼의 상태를 close로 바꿈
			$("#menu_modal").width("100%");
			$("#menu_close").css("display","block");
			$("#index_box").css("overflow","hidden");
			$("#menu_section").css("width","1344px");
			
		
		}else{
			$("#menu_section").css("width","73%");
			$("#menu_modal").width("0");
			$("#menu_open").css("display","block");
			$("#index_box").css("overflow","none");
		}
		
	});

	function load2(){
		  document.body.addEventListener("wheel", zoomShortcut); //add the event
	}

	function zoomShortcut(e){
		  if(e.ctrlKey){            //[ctrl] pressed?
		    event.preventDefault();  //prevent zoom
		    if(e.deltaY<0){        //scrolling up?
		                            //do something..
		      return false;
		    }
		    if(e.deltaY>0){        //scrolling down?
		                            //do something..
		      return false;
		    }
		  }
	}
</script>


</head>
<body id="header_body">
	<header id="header_wrap">
		<div class="header_line">
			<div class="header_inner">
				<div class="logo" id="logo_anim">
					<a href = "index.spoid">
						<span>Spoid's Slime</span>
						<img src="<%=path%>/img/slime/slime.svg">
					</a>
				</div>
				<div class="search">
  					<input type="text" class="search-box" placeholder="영화 검색 키워드 입력"/>
  					<span class="search-button">
    					<span class="search-icon"><i class="fas fa-search"></i></span>
  					</span>
				</div>

				<a class="menu_ham" id="menu_open" href="#">
           			 <span class="stext"><i class="fas fa-bars"></i> MENU</span>
          		</a>
          		<a class="menu_ham" id="menu_close" href="#" style="display:none;">
          			 <span class="text"><i class="fas fa-times"></i> CLOSE</span>
          		</a>
          		<div class="clr_both"></div>
          	</div>
		
		</div>
	
	</header>
	<div id="menu_modal">

		<div id="menu_section" >	
			<div id="log_section">
				
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
						<div id="login_circle" class="img_log" style="background-image: url(<%=path%>/img/menu/login_no.svg);"></div>
						<p>로그인을 하지 않으셨어요~~</p>
						<div id="mlog_wrap">
							<a href="<%=path%>/login.spoid" class="mlog_btn">로그인</a>
							<a href="<%=path%>/memberpage.spoid" class="mlog_btn" >회원가입</a>			
						</div>			
					</c:when>
					<c:otherwise>
						<div id="login_circle" class="img_log" style="background-image: url(<%=path%>/img/menu/login_yes.svg);">	</div>
						
						<div id="welcom_login">
							<strong>${sessionScope.loginUser.nick}(${sessionScope.loginUser.id})</strong><span>님 환영합니다</span>
						</div>
						<div id="mlog_wrap">
							<a href="<%=path%>/loginOut.spoid">로그아웃</a>
							<a href="<%=path%>/memberupdate.spoid">계정관리</a>
						</div>
					</c:otherwise>
				</c:choose>
								

			</div>
			<div id="menu_wrapper">
				<ul id="menu_ul">
						
						<li>
							<div class="menu_li_div" data-li="boxoffice"  onclick="location.href='boxoffice.spoid'">
								<!-- onclick="location.href=''" 클릭 이벤트 시 해당 주소로 가라> -->
								<img src="<%=path%>/img/menu/movie_box.png" class="menu_icon">
								<span class="menu_btn">박스오피스</span>
							</div>
						</li>
						<li>
							<div class="menu_li_div" onclick="location.href='nowmovie.spoid'">
								<img src="<%=path%>/img/menu/movie_now.png" class="menu_icon" >
								<span class="menu_btn">현재 상영작</span>
							</div>
						</li>
						<li>
							<div class="menu_li_div" onclick="location.href='allmovie.spoid'">
								<img src="<%=path%>/img/menu/movie_all.png" class="menu_icon" >
								<span class="menu_btn">모든 영화</span>
							</div>
						</li>
						<li onclick="location.href='teaminfo.spoid'">
							<div class="menu_li_div">
								<img src="<%=path%>/img/menu/about-us-1.gif" class="menu_icon">
								<span class="menu_btn">About us</span>
							</div>
						</li>
						<li>
							<div class="menu_li_div"  onclick="location.href='boardList.spoid'">
								<img src="<%=path%>/img/menu/board.gif" class="menu_icon">
								<span class="menu_btn">게시판</span>
							</div>
						<li>
							<div class="menu_li_div"  onclick="location.href='qnapage.spoid'">
								<img src="<%=path%>/img/menu/as.gif" class="menu_icon">
								<span class="menu_btn">고객센터</span>
							</div>
						</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>