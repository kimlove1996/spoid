<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		width: 115px;
	    margin: 0 auto;
	    height: 54px;
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
     
     #insert_idpw > div{
     	display: inline-block;
     }
     
     .insert_text{
		font-size: 32px;
	    padding-right: 10px;
	    font-weight: bold;
	    color: #6b9a95;
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
	    left: 90px;
	    bottom: 77px;
	    background-color: #ffb263;
	    letter-spacing: 6px;
	    box-shadow: 4px 1px 5px 0px rgba(42, 42, 42, 0.28);
	    cursor: pointer;
     }
     
     #login_text{
	    position: relative;
	    left: 16px;
	    top: 46px;
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
     }
	
</style>
</head>
<body>
    
     <div id="login_all">
	     <div id="logo">
	     	<span id="logo_img">LOGO</span>
	     </div>
	     
	     <div id="insert_idpw">
		     <div id="insert_id">
		     	<span class="insert_text">ID </span>
		     	<input type="text" name="inputid" id="inputid" class="inputidpw">
		     </div>
		     <div id="insert_pw">
		     	<span class="insert_text">PW </span>
		     	<input type="password" name="inputpw" id="inputpw" class="inputidpw">
		     </div>
		     
		     
	     	<div id="login_btn_in">
	     		<span id="login_text">LOGIN</span>
	     	</div>
	     </div>
	     
	     <!-- 계정찾기, 회원가입 -->
	     <div id="loginhelp">
	     	ID/PW를 잊어버리셨나요? <a href="#" id="find_idpw">ID/PW찾기</a> │
	     	아직 회원이 아니신가요? <a href="#" id="join_mem">회원가입</a>
	     </div>
	     
	     
     </div>

     
     
<%-- <%@ include file="include/footer.jsp" %> --%>
</body>
</html>