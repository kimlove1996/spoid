<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
     
     /* 로그인 전체 라인 */
     #login_all{
	    margin: 0 auto;
	    width: 730px;
	    height: 400px;
	    border: thin solid #EAEAEA;
	    background-color: white;
	    border-radius: 72px;
	    position: relative;
	    top: 190px;
	    padding: 25px 29px;
     }
     
     
     /* 로고 */
     #logo{
	    width: 142px;
	    margin: 0 auto;
	    height: 54px;
	    border: 1px solid #9e9e9e;
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
     }
     
     #insert_idpw > div{
     	display: inline-block;
     }
     
     .insert_text{
	    font-size: 32px;
	    padding-right: 10px;
     }
     
     .inputidpw{
	    width: 350px;
	    height: 28px;
	    border: none;
	    border-bottom: 3px solid gray;
	    padding: 3px 10px 0px 11px;
     }
     
     #insert_pw{
     	padding-top: 60px;
     }
     
    
     
     /* 로그인 버튼 */
     #login_btn_in{
		border: 1px solid gray;
	    border-radius: 63px;
	    width: 115px;
	    height: 115px;
	    margin-left: 60px;
     }
     
     
     
	
</style>
</head>
<body>
    
     <div id="login_all">
	     <div id="logo">
	     	<span id="logo_img">SPOID</span>
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
	     		<span id="login_text">login</span>
	     	</div>
	     </div>
	     
     </div>

     
     
</body>
</html>