<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%
	String referer = request.getHeader("referer");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spoid Login</title>
<script type="text/javascript">
	$(document).ready(function(){
		
		$(".inputidpw").focus(function(){
			$(this).css("background-color","#e5f3ff").css("transition", "all 1s");
		});
		$(".inputidpw").blur(function(){
			$(this).css("background-color","white").css("transition", "all 1s");
		});
		
	});
</script>

<style type="text/css">
	
     
     /* 로그인 전체 라인 */
     #login_all{
		margin: 0 auto;
	    width: 730px;
	    height: 400px;
	    border: 7px double #30a1c07d;
	    background-color: white;
	    border-radius: 30px;
	    margin-top: 190px;
	    padding: 25px 29px;
     }
     
     
     /* 로고 */
     #logo{
	    width: 335px;
	    margin: 0 auto;
	    height: 54px;
	    color: #76c0d4;
     }
     
     #logo_img{
	    text-align: center;
	    font-size: 55px;
     }
     
     
     /* 아이디/비밀번호 인풋 */
     #insert_idpw{
     	display: block;
     	margin-top: 70px;
     	padding-left: 25px;
     	border-radius: 5px;
     }
     
     #insert_idpw > div:not(#login_err_check){
     	display: inline-block;
     }
     
     .insert_text{
		font-size: 32px;
	    padding-right: 10px;
	    font-weight: bold;
	    color: #8ac0ba;
     }
     #inputpw {
     	letter-spacing: 5px;
     }
     .inputidpw{
	    width: 350px;
	    height: 28px;
	    border: none;
	    border-bottom: 3px solid #bacbd1;
	    padding: 3px 10px 0px 11px;
	    outline: 0px;
	    border-radius: 5px;
     	font-size: 19px;
    	font-weight: bold;
    	vertical-align: 4px;
     }
     
     #insert_pw{
     	padding-top: 60px;
     }
     
    
     
     /* 로그인 버튼 */
     #login_btn_in{
	   	border: 1px solid #ffa84f;
   		border-radius: 63px;
    	width: 115px;
    	height: 115px;
    	position: relative;
    	left: -50px;
   	 	bottom: 30px;
    	background-color: #ffb263;
    	letter-spacing: 4px;
    	cursor: pointer;
    	float: right;
    	top: -9px;
     }
     
     #login_text{
	    position: relative;
	    left: 13px;
	    top: 43px;
	    font-weight: bold;
	    font-size: 24px;
     }
     
     #login_btn_in:hover{
	    transition: all 2.4s;
	    transform: rotate(1080deg);
     }
     
     /* 계정 관련 */
     #loginhelp{
	    color: gray;
	    font-size: 13px;
	    padding-left: 34px;
	  	padding-top: 50px;
     }
	
	
	/* 로그인error 체크 */
	#login_err_check{
		display: none;
	}
	#login_err_check_msg {
		display: inline-block;
		width: 428px;
		height: 24px;
		font-size: 11px;
		font-weight: 700;
		line-height: 24px;
		color: #E71D36;
		padding: 0px 15px;
		text-align: center;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		
	
	 $("#login_btn_in").click(function(){
		 alert("연결");
		 var id = $("#inputid").val();
		 var pw = $("#inputpw").val();
		 /* 유효성 체크 */
			/* id와 pw중 하나라도 값이 없으면 경고문 출력 */
			if(id != "" && pw !=""){
				
					$.ajax({
						url: "LoginPlay.spoid",
						type: "POST",
						dataType: "json",
						data: "id="+id+"&pw="+pw,
						success: function(data) {
							if(data.message =="1"){
								location.href="<%=referer%>";
							} else {
								$("#login_err_check").css("display","block");
								$("#login_err_check_msg").text("ID와 PW가 일치하지 않습니다.");
								return false;
							}
						},
						error:function(){
							alert("SYSTEM ERROR!!");
						}
						
					});
			}else{
				$("#login_err_check").css("display","block");
				return false;
			}
	 });
	 
	 
	 
	});
</script>
</head>
<body onload="load()">
    
     <div id="login_all">
	     <div id="logo">
	     	<span id="logo_img">Spoid's Slime</span>
	     </div>
	     
	     <div id="insert_idpw">
		     <div id="insert_id">
		     	<span class="insert_text" style="padding-right: 27px">ID </span>
		     	<input type="text" name="inputid" id="inputid" class="inputidpw">
		     </div>
		     <div id="insert_pw">
		     	<span class="insert_text">PW </span>
		     	<input type="password" name="inputpw" id="inputpw" class="inputidpw">
		     </div>
	     	<div id="login_btn_in">
	     		<span id="login_text">LOGIN</span>
	     	</div>
		     <div id="login_err_check">
				<span id="login_err_check_msg">아이디와 비밀번호를 입력해주세요.</span>
			 </div>
		     
	     </div>
	     
	     <!-- 계정찾기, 회원가입 -->
	     <div id="loginhelp">
	     	ID/PW를 잊어버리셨나요? <a href="IdPwFindPage.spoid" id="find_idpw">ID/PW찾기</a> │
	     	아직 회원이 아니신가요? <a href="memberpage.spoid" id="join_mem">회원가입</a>
	     </div>
	     
	     
     </div>

     
     
</body>
</html>
<%@ include file="include/footer.jsp" %>