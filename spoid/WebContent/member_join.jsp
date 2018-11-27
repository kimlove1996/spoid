<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_join.jsp</title>
<style type="text/css">
/* MemberJoin_TOP */
#MJ {
    margin: 200px auto 0 auto;
}
*{
	outline: 0;
}


/* 선택 메뉴 바 */
#MJ_menu {
    height: 53px;
    text-align: center;
    display: block;
    margin: 0 auto;
    width: 800px;
}

#MJ_menu > li:nth-child(1){
	border-bottom :4px solid #f4c36a;
	color: #f8c465;
}




.menu_box {
	float: left;
    padding: 0 47px 32px 47px;
    font-size: 22px;
    border-bottom: 4px solid #b6b6b6;
    width: 106px;
    color: #b6b6b6;
    font-weight: bold;
}
#MJ_menu_end{
	clear: both;
}

.mj_hr{
    border: 6.5px double #f3f3f3;
    width: 37%;
    float: left;
    margin-bottom: 51px;
}


/* MomeberJoin_middle */
#MJ_title {
    margin: 108px 0 14px 0;
    width: 700px;
}

#MJ_title > span:first-child {
    text-align: left;
    font-size: 38px;
    padding-left: 34px;
    color: #373737;
    background-color: #ffffff;
    padding: 13px 26px 13px 34px;
    border-radius: 0 6px 58px 0;
    letter-spacing: 20px;
    font-weight: bold;
}

#MJ_title > span:last-child{
	font-weight: bold;
    font-size: 33px;
    color: #000000;
}




/* spoid slime 글씨 색 */
#MJ_title >span> i:nth-child(1){
	font-style: normal;
	color: #ff4f6e;
}
#MJ_title >span> i:nth-child(2){
	font-style: normal;
	color: #ffff03;
}
#MJ_title >span> i:nth-child(3){
	font-style: normal;
	color: #90ce90;
}
#MJ_title >span> i:nth-child(4){
	font-style: normal;
	color: #a328a3;
}
#MJ_title >span> i:nth-child(5){
	font-style: normal;
	color: #9393ff;
}











/* ================================================================== 이용약관 */
#constract_area{
	display: block;
}
/*container*/
#container {
	position: relative;
}
#join_content {
	width: 460px;
	margin: 0 auto;
}
.terms {
	margin-bottom: 20px;
	background-color: white;
	border: 1px solid #dadada;
}
.terms_p {
	position: relative;
	margin: 0px;
	padding: 15px;
	display: block;
}
.terms_span {
	position: relative;
	display: block;
	height: 58px;
}
.terms_span>input {
	position: absolute;
	right: 1px;
	top: 50%;
	width: 22px;
	height: 22px;
	margin-top: -11px;
	visibility: hidden;
}
.terms_span>input:checked +label {
	background-image: url("img/logo_check_on.png");
}
.terms_span>label {
	font-size: 14px;
	font-weight: 700;
	top: -1px;
	height: 58px;
	line-height: 20px;
	display: block;
	cursor: pointer;
	background: url(img/logo_check_off.gif) 100% 50% no-repeat;
}
#terms_ul {
	padding-bottom: 7px;
}
#terms_ul>li {
	display: block;
	padding: 13px 15px 7px;
}
#terms_ul_li1 {
	border-top: 1px solid #f0f0f0;
}
.ul_li_span {
	position: relative;
	display: block;
	height: 24px;
}
.ul_li_span>input {
	position: absolute;
	right: 1px;
	top: 50%;
	margin-top: -11px;
	width: 22px;
	visibility: hidden;
}
.ul_li_span>input:checked +label {
	background-image: url("img/logo_check_on.png");
}
.ul_li_span>label {
	background: url("img/logo_check_off.gif") 100% 50% no-repeat;
	display: block;
}
.label1 {
	height: 24px;
	font-size: 14px;
	font-weight: 700;
	line-height: 24px;
	position: absolute;
	color: #333;
	top: 0px;
	left: 0px;
	width: 100%;
}
.span_only {
	color: #f8c465;
	font-size: 12px;
	font-weight: 400;
	font-weight: bold;
}
.span_select {

	color: #ccc;

	font-size: 12px;

	font-weight: 400;

	font-weight: bold;

}

 

.terms_box {

	box-sizing: border-box;

	position: relative;

	height: 88px;

	margin-top: 11px;

	padding: 8px 10px;

	border: 1px solid #f0f0f0;

	background-color: #f7f7f7;

	overflow: auto;

}

 

.article {

	margin-top: 0px;

}

 

h3.article_title {

	font-size: 12px;

	font-weight: 700;

	line-height: 16px;

	color: #666;

	margin: 0;

	padding: 0;

	padding-bottom: 8px;

}

 

.article>p {

	display: block;

	font-size: 12px;

	line-height: 16px;

	color: #666;

}

 


 


#err_check_msg {
	display: inline-block;
	width: 428px;
	height: 24px;
	font-size: 11px;
	font-weight: 700;
	line-height: 24px;
	color: #f46665;
	padding: 0px 15px;
	text-align: center;
}
#err_check {
	display: none;
}

/* ================================================================== 정보입력*/

#write_info_area{
	display: none;
}
.error {
	font-size: 10px;
	color: red;
	display: none;
	padding-left: 25%;
}




/* 입력창 */
#MJ_content {
    margin: 28px auto;
    width: 800px;
    border: 3px solid #cddde1;
    border-radius: 5px;
    clear: both;
    padding-top: 50px;
}

#MJ_content > span{
    border-radius: 5px;
    clear: both;
    display: block;
    text-align: center;
    font-weight: bold;
    color: #f1b340;
}
.mj_info {
	padding: 0 auto;
	margin: 0 auto;
	width: 600px;
	height: 50px;
	margin-top: 34px;
}

.label_singnin {
    width: 142px;
    height: 20px;
    float: left;
    line-height: 40px;
    font-size: 14px;
    font-weight: bold;
    color: #383838;
}
.input_signin {
    width: 393px;
    height: 36px;
    padding: 0 13px;
    border: none;
    border-radius: 3px;
    border-bottom: 3px solid #cddde1;
    outline: 0;
}

.login_btn {
	width: 100px;
    height: 46px;
    margin-top: 40px;
    border: 1px solid #d4d4d4;
    border-radius: 3px;
    font-size: 16px;
    line-height: 18px;
    background-color: #d4d4d4;
    color: #777;
    margin: 2% 45% 4% 45%;
    cursor: pointer;
}
.login_btn:hover {
    background-color: #ffcd00;
    color: #474747;
    font-weight: bold;
}






/* ================================================================== 가입인증*/

#authentication_area{
	display: none;
}

/* 주의사항 text관련 */
.fa-exclamation{
    padding: 4px 5px 6px 20px;
    vertical-align: middle;
    color: #fd6e28;
}

#caution_text{
    padding: 20px 18px;
    font-size: 14px;
}

#caution_text span{
	color: gray;
}


/* 힌트텍스트와 박스 */
#hint_box{
    margin: 80px 0 35px 96px;
}
#hint_box select{
	height: 30px;
    width: 300px;
    margin-bottom: 28px;
    font-weight: bold;
    outline: 0;
}

#hint_box input{
	outline: 0px;
    width: 510px;
    height: 28px;
    border: none;
    border-bottom: 3px solid #338298;
    margin: 18px 0px 0px 26px;
    padding-left: 8px;
    font-size: 17px;
    border-radius: 5px;
}


.hint{
	font-size: 18px;
    color: #464646;
}
#error_hint{
	font-size: 10px;
    color: red;
    display: none;
    padding-left: 5%;
}









/* ================================================================== 가입완료*/
#complete_area{
	display: none;
}



	#all_welcom {
		margin: 0px;
    	padding: 0px;
    	font-family: 'Jeju Myeongjo', serif;
	}
	
	
	#welcom_logo{
		width: 226px;
	    margin: 0 auto;
	}
	
	#welcomtext01{
		font-size: 26px;
    	color: #ff9f5a;
	}
	#welcomtext02{
		font-size: 20px;
	    color: #718f96;
	}
	
	#rCnt{
		display: inline-block;
		font-weight: bold;
		font-style: normal;
	}
	#welcom_text_in{
	    padding: 11px 0 59px 0;
	    margin: 0px auto;
	    text-align: center;
	    border: 7px double #cddde1;
	    border-radius: 31px;
	    width: 812px;
	    margin-top: 57px;
	}
	#logo>img{
	    width: 218px;
	    height: 181px;
	}
</style>
<script type="text/javascript">
$(document).ready(function(){
	
	$(".input_color").focus(function(){
		$(this).css("background-color","#e5f3ff").css("transition", "all 1s");
	});
	$(".input_color").blur(function(){
		$(this).css("background-color","white").css("transition", "all 1s");
	});
		// 정보입력 후 -> 힌트
	 	/* $("#info_next").click(function(){
			$("#write_info_area").css("display","none");
			$("#authentication_area").css("display","block");
			$("#write_info").css("border-bottom-color","#b6b6b6").css("color","#b6b6b6");
			$("#authentication").css("border-bottom-color","#f4c36a").css("color","#f8c465");
			
			
		});  */
	
		
	
	// 이용약관 동의
	$("#cbox").click(function(){
		var ckAll = $("#cbox").is(":checked");
		if(ckAll == true) {
			$(".ckboxs").prop("checked", true);
		} else {
			$(".ckboxs").prop("checked", false);
		}
	});

		/* 선택버튼 전부 다 클릭시 전체버튼 클릭 */
		$(document).on("click", ".ckboxs", function(){
			var ck1 = $("#li1box").is(":checked");
			var ck2 = $("#li2box").is(":checked");
			var ck3 = $("#li3box").is(":checked");
			var ck4 = $("#li4box").is(":checked");

			if(ck1 == true && ck2 == true && ck3 == true && ck4 == true) {
				$("#cbox").prop("checked", true);
			}else {
				$("#cbox").prop("checked", false);
			}
		});

		

		/* 다음버튼 클릭 시 */
		$("#constract_next").click(function(){
			var filsu1 = $("#li1box").is(":checked");
			var filsu2 = $("#li2box").is(":checked");

			if(filsu1 == true && filsu2 == true) {
				// 이용약관 후-> 정보입력
				$("#constract_area").css("display","none");
				$("#write_info_area").css("display","block");
				$("#constract").css("border-bottom-color","#b6b6b6").css("color","#b6b6b6");
				$("#write_info").css("border-bottom-color","#f4c36a").css("color","#f8c465");
			} else {
				$("#err_check").css("display", "block");
			}
		});

		
		
		
		// 회원가입 정보 입력
		
	 	$("#inputid").blur(function(){
			var inputval = $(this).val();
			if(inputval == ""){
				$(this).next().css("display", "block");
			}else {
				$(this).next().css("display", "none");
			}
		});
	 	$("#inputpw").blur(function(){
			var inputval2 = $(this).val();
			if(inputval2 == ""){
				$(this).next().css("display", "block");
			}else {
				$(this).next().css("display", "none");
			}
		});
		$("#inputrpw").blur(function(){
			var inputval3 = $(this).val();
			if(inputval3 == ""){
				$(this).next().css("display", "block");
			}else {
				$(this).next().css("display", "none");
			}
		}); 
	 	$("#inputnick").blur(function(){
			var inputval4 = $(this).val();
			if(inputval4 == ""){
				$(this).next().css("display", "block");
			}else {
				$(this).next().css("display", "none");
			}
		});
		$("#inputemail").blur(function(){
			var inputval5 = $(this).val();
			if(inputval5 == ""){
				$(this).next().css("display", "block");
			}else {
				$(this).next().css("display", "none");
			}
		});
		
		 
		/* Ajax사용할 아이디 블러 */
		$("#inputid").blur(function(){
			/* id값 받아오기 */
			var idVal = $(this).val();
			var mid= $(inputid);
			
			/* 유효성체크 */
			/* trim: 앞뒤 공백 제거 */
			var id=$.trim(mid.val());
			var regid = /^[a-zA-Z0-9]{4,12}$/; /* 4~12자 까지 영대소문자와 숫자만 입력가능 */		
			/* 유효검사를 통해 아이가 null인 경우를 실행했으니, null이 아닌경오 Ajax를 실행하겠다는 코드 */
			if(idVal != ""){
				if(!regid.test(id)){
					mid.focus();
					mid.next().text("4~12까지의 영문자와 숫자만 입력하세요.").css("display","block");
					mid.parent().css("margin-bottom","30px");
					return false; /* 이걸해야 submit이 안됨! 꼭 해야함 */				
				}
				$.ajax({
					url: "idCheck.bizpoll",
					type: "POST",
					dateType: "json",
					data: "id="+ idVal,
					success: function(data) {
						if(data.message == "-1"){
							$("#inputid").next().text("이미 사용중인 아이디입니다.").css("display", "block").css("color", "#F46665");
							$("#inputid").select();
							$("#inputid").parent().css("margin-bottom","30px");
						} else {
							$("#inputid").next().text("멋진 아이디네요!").css("display", "block").css("color", "#0000FF");
							$("#inputid").parent().css("margin-bottom","30px");
						}
						
					},
					error: function() {
						alert("SYSTEM ERROR");
					}
					
				});
			}
			
		});
		
		$("input:password").blur(function(){
			pwcheck();
		});
		
		$("#inputnick").blur(function(){
			var nickVal = $(this).val();
			var mnick= $(inputnick);
				
			nickcheck();
		});
		
		$("#info_next").click(function(){
		
	 	$.ajax({
			url: "memberplayaction.spoid",
			data:$("#memberinfo_fmt").serialize(),
			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success: function(data) {
				$("#write_info_area").css("display","none");
				$("#authentication_area").css("display","block");
				$("#write_info").css("border-bottom-color","#b6b6b6").css("color","#b6b6b6");
				$("#authentication").css("border-bottom-color","#f4c36a").css("color","#f8c465");
			},
			error: function() {
				alert("SYSTEM ERROR");
			}
		});
	 		$("#hint_id").val($("#inputid").val());
		});
	
	 	
	 	
	// 힌트 입력  후 -> 회원가입 성공
	 $("#hint_next").click(function(){
		var id = $("#hint_id").val();
		var hint1 = $("#hint_flag").val();
		var hint2 = $("#input_answer").val();
		alert("아이디"+id+"힌트"+hint1+hint2);
		if(hint2 == ""){
			$("#input_answer").focus();
			$("#input_answer").next().text("필수정보 입니다.").css("display","block");;
		}else{
		
		$.ajax({
			type:"post",
			url:"memberhintplay.spoid",
			data:"id="+id+"&hint1="+hint1+"&hint2="+hint2,
			success:function(data){
	 		$("#authentication_area").css("display","none");
			$("#complete_area").css("display","block");
			$("#authentication").css("border-bottom-color","#b6b6b6").css("color","#b6b6b6");
			$("#complete").css("border-bottom-color","#f4c36a").css("color","#f8c465");
			},
			error : function(){
				alert("System Error!!!");
			}
		});
		
		}
	});
	
	
	

});







function pwcheck(){
	var mpw= $(inputpw);
	var mpw2= $(inputrpw);
	var pw = $.trim(mpw.val());
 	var pw2 = $.trim(mpw2.val());
	
	var regPass = /^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;/* 영문자, 숫자 포함 특수문자 사용가능 8~20자리 */
	if (pw == ""){
		mpw.focus();
		mpw.next().text("필수정보 입니다.").css("display","block");
		mpw.parent().css("margin-bottom","30px");
		return false;
	} else if(!regPass.test(pw)){
		mpw.focus();
		mpw.next().text("8~20자 이내 영문자와 숫자 특수문자만 입력하세요.").css("display","block");
		mpw.parent().css("margin-bottom","30px");
		return false;
	} else if(pw2 == ""){
		mpw2.focus();
		mpw2.next().text("필수정보 입니다.").css("display","block");
		mpw2.parent().css("margin-bottom","30px");
		return false;
	} else if(pw != pw2){
		mpw2.select();
		mpw2.next().text("비밀번호가 일치하지않습니다.").css("display","block");
		mpw2.parent().css("margin-bottom","30px");
		return false;
	}
}


function nickcheck(){
	var mnick = $(inputnick);
	var nick = $.trim(mnick.val());
	if(nick = "") {
		mnick.focus();
		mnick.next().text("필수정보 입니다.").css("display","block");
		mnick.parent().css("margin-bottom","30px");
		return false;
	}
}





/* 가입환영인사 및 메인으로 */
/* 	var cnt=2;
	function countdown(){// 함수 생성한것 뿐임. 호출 전까진 동작을 하지 않는다.
		if(cnt == 0){// cnt == 0 이라면 
			clearInterval(s);	// setinterval 함수를 종료하고 
			// location.href="index.bizpoll"; // index.bizpoll로 이동하라! 
		}// 아니라면, 
		document.getElementById("rCnt").innerHTML=cnt;// rCnt에 cnt(3)을 넣고, cnt를 한번씩 --하라.
		cnt --;
	}
	var s = setInterval(countdown, 1000);  // Start!!! 1000=천 밀리세컨드, 즉 1초단위로 countdown()을 실행합니다. */
</script>
</head>
<body>
<div id="MJ">
<div id="MJ_header">
	<ul id="MJ_menu">
			<li class="menu_box" id="constract">이용약관</li>
			<li class="menu_box" id="write_info">정보입력</li>
			<li class="menu_box" id="authentication">가입인증</li>
			<li class="menu_box" id="complete">가입완료</li>
	</ul>
	<div id="MJ_menu_end"></div>
</div>



<!-- 이용약관 area -->
<article id="constract_area" class="area">
	<div id="MJ_content">
		<div id="container" class="divsize">
			<form id="join_content">
				<div class="terms">
					<p class="terms_p">
						<span class="terms_span"> <input type="checkbox" id="cbox">
							<label for="cbox"> 이용약관, 개인정보 수집 및 이용, <br> 위치정보
								이용약관(선택), 프로모션 안내<br> 메일 수신(선택)에 모두 동의합니다.
						</label>
						</span>
					</p>
					<ul id="terms_ul">
						<li id="terms_ul_li1"><span class="ul_li_span">
						 <input type="checkbox" id="li1box" class="ckboxs">
						  <label for="li1box" class="label1"> spoid's slime 이용약관 동의<span class="span_only">(필수)</span>
							</label>
						</span>
							<div class="terms_box">
								<div class="article">
									<h3 class="article_title">여러분을 환영합니다.</h3>
									<p>
										spoid's slime 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 <br>다양한spoid's slime
										서비스의 이용과 관련하여 spoid's slime 서비스를 제공하는spoid's slime 주식회사(이하 ‘spoid's slime’)와 이를 이용하는 spoid's slime
										서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, <br> 아울러 여러분의 spoid's slime 서비스
										이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
									</p>
									<br>
									<h3 class="article_title">제 2 조 (목적)</h3>
									<p></p>
									<br>
								</div>
							</div>
						</li>
						<li id="terms_ul_li2">
						 <span class="ul_li_span">
						 <input type="checkbox" id="li2box" class="ckboxs">
						  <label for="li2box" class="label1"> 개인정보 수집 및 이용에 대한 안내
						  	<span class="span_only">(필수)</span>
						  </label>
						</span>
							<div class="terms_box">
								<div class="article">
									<p>
										정보통신망법 규정에 따라spoid's slime에 회원가입 신청하시는 분께 수집하는 개인<br> 정보의 항목,
										개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 <br> 안내 드리오니 자세히 읽은 후
										동의하여 주시기 바랍니다.
									</p>
									<br>
									<h3 class="article_title">1. 수집하는 개인정보</h3>
									<p>
										이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의spoid's slime <br>서비스를 회원과
										동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, <br>블로그 등과 같이 개인화 혹은
										회원제 서비스를 이용하기 위해 회원가입을 할<br> 경우,spoid's slime는 서비스 이용을 위해 필요한 최소한의
										개인정보를 수집합니다.
									</p>
								</div>
							</div>
						</li>
						<li id="terms_ul_li3">
						 <span class="ul_li_span"> 
							<input type="checkbox" id="li3box" class="ckboxs"> 
								<label for="li3box" class="label1"> 위치정보 이용약관 동의
								<span class="span_select">(선택)</span>
							</label>
						</span>
							<div class="terms_box">
								<div class="article">
									<p>위치정보 이용약관에 동의하시면, <strong>위치를 활용한 광고 정보 수신</strong> 등을 포함하<br>는spoid's slime 위치기반 서비스를 이용할 수 있습니다.</p>
									<br>
									<h3 class="article_title">제 1 조 (목적)</h3>
									<p>이 약관은spoid's slime 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치<br> 기반서비스사업과관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임
									<br> 사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
									</p>
								</div>
							</div></li>
						<li id="terms_ul_li4">
						 <span class="ul_li_span">
							<input type="checkbox" id="li4box" class="ckboxs">
							<label for="li4box" class="label1">이벤트 등 프로모션 알림 메일 수신
							<span class="span_select">(선택)</span>
							</label>
						 </span>
					   </li>
					</ul>
				</div>
				<div id="err_check">
					<span id="err_check_msg">spoid's slime 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.</span>
				</div>
			</form>
		</div>
	
		<input type="button" value="NEXT" class="login_btn" id="constract_next">

	</div>
</article>








<!-- 정보입력 area -->
<article id="write_info_area" class="area">
	<div id="MJ_content">
		<span>[ JOIN ]</span>
		<form method="" action="" name="memberinfo_fmt" id="memberinfo_fmt">
		<div class="mj_info">
			<label for="inputid" id="in_id" class="label_singnin">아이디</label>
			<input type="text" id="inputid" class="input_color input_signin" name="inputid" class="input_in">
			<span class="error">필수 정보입니다.</span>
		</div> 
		<div class="mj_info">
			<label for="inputpw" id="in_pw" class="label_singnin">비밀번호</label>
			<input type="password" id="inputpw" class="input_color input_signin" name="inputpw" class="input_in">
			<span class="error">필수 정보입니다.</span>
		</div> 
		<div class="mj_info">
			<label for="inputrpw" id="in_rpw" class="label_singnin">비밀번호 재입력</label>
			<input type="password" id="inputrpw" class="input_color input_signin" name="inputrpw" class="input_in">
			<span class="error">필수 정보입니다.</span>
		</div> 
		<div class="mj_info">
			<label for="inputname" id="in_name" class="label_singnin">닉네임</label>
			<input type="text" id="inputnick" class="input_color input_signin" name="inputnick" class="input_in">
			<span class="error">필수 정보입니다.</span>
		</div> 
		<div class="mj_info">
			<label for="inputemail" id="in_email" class="label_singnin">이메일</label>
			<input type="text" id="inputemail" class="input_color input_signin" name="inputemail" class="input_in">
			<span class="error">필수 정보입니다.</span>
		</div> 
		
		</form>
		
		<input type="button" value="NEXT" class="login_btn" id="info_next">
	</div>
</article>




<input type="hidden" id="hint_id" value="">



<!-- 가입인증 area -->
<article id="authentication_area" class="area">
	<div id="MJ_content">
		<div id="caution_text">
			<i class="fa fa-exclamation"></i><span> PW 찾기를 이용하실 시 하단 힌트의 설정한 답을 입력하게 됩니다. 바른 작성 부탁드립니다.</span>
		</div>
	<div id="hint_box">
		<div id="hint1" class="hint">
			<select id="hint_flag">
				<option value="1">내가 살던 동네 이름은?</option>
				<option value="2">내 부모님 성함은?</option>
				<option value="3">어렸을적 내 별명은?</option>
			</select>
		</div>
			<input id="input_answer" name="input_answer" placeholder="ex)오치동" class="input_color insert_answer">
			<span id="error_hint">필수 정보입니다.</span>
	</div>	
		<input type="button" value="NEXT" class="login_btn" id="hint_next">
	</div>
</article>







<!-- 가입완료 -->
<article id="complete_area" class="area">
	<div id="welcom_text_in">
		<div id="welcom_logo">
			<div id="logo">
				<img alt="" src="img/slime/score5.png">
			</div>
		</div>
		<p id="welcomtext01">회원님의 가입을 진심으로 환영합니다.</p>
		<p id="welcomtext02"><i id="rCnt">3</i>초 후 메인화면으로 이동됩니다.</p>
	</div>
</article>




</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>