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
	margin-top: 200px;
}
#MJ_menu {
	width: 409px;
    height: 40px;
    margin: 0 auto;
    text-align: center;
}
.menu_box {
	width: 100px;
	height: 50px;
	border: 1px solid black;
	float: left;
	line-height: 3;
}
#MJ_menu_end{
	clear: both;
}






/* MomeberJoin_middle */
#MJ_title {
	padding: 0 auto;
	margin: 0 auto;
	width: 160px;
    height: 10px;
}

#MJ_title > span {
	text-align: left;
}


/* 입력창 */
#MJ_content {
	padding: 0 auto;
	margin: 0 auto;
	width: 800px;
	height: 500px;
	border: 1px solid black;
}
.mj_info {
	padding: 0 auto;
	margin: 0 auto;
	width: 500px;
	height: 50px;
	margin-top: 30px;
}

.label_singnin {
	width: 200px;
	height: 20px;
	float: left;
	line-height: 40px;
}
.input_signin {
    width: 256px;
    height: 36px;
    padding: 0 13px;
    border: 1px solid #cfcfcf;
    border-radius: 3px;
}

#login_btn {
	width: 100px;
    height: 46px;
    margin-top: 40px;
    border: 1px solid #d4d4d4;
    border-radius: 3px;
    font-size: 16px;
    line-height: 18px;
	background-color: #d4d4d4;
    color: #777;
    margin: 5% 45%;
}
#login_btn:hover {
	background-color: #ffcd00;
    color: #1e1e1e;
}
</style>
</head>
<body>
<div id="MJ">
<div id="MJ_header">
	<div id="MJ_menu">
			<div class="menu_box">이용약관</div>
			<div class="menu_box">정보입력</div>
			<div class="menu_box">가입인증</div>
			<div class="menu_box">가입완료</div>
	</div>
	<div id="MJ_menu_end"></div>
</div>

<article id="MJ_middle">
	<div id="MJ_title">
		<span>spoid slime 정보입력</span>
	</div>
		<hr class="mj_hr">
	<div id="MJ_content">
		<div class="mj_info">
			<label for="inputid" id="in_id" class="label_singnin">아이디</label>
			<input type="text" id="inputid" class="input_signin" name="inputid">
		</div> 
		<div class="mj_info">
			<label for="inputpw" id="in_pw" class="label_singnin">비밀번호</label>
			<input type="password" id="inputpw" class="input_signin" name="inputpw">
		</div> 
		<div class="mj_info">
			<label for="inputrpw" id="in_rpw" class="label_singnin">비밀번호 재입력</label>
			<input type="password" id="inputrpw" class="input_signin" name="inputrpw">
		</div> 
		<div class="mj_info">
			<label for="inputname" id="in_name" class="label_singnin">닉네임</label>
			<input type="text" id="inputname" class="input_signin" name="inputname">
		</div> 
		<div class="mj_info">
			<label for="inputemail" id="in_email" class="label_singnin">이메일</label>
			<input type="text" id="inputemail" class="input_signin" name="inputemail">
		</div> 
	
		<input type="button" value="다음" id="login_btn">
	</div>
</article>
</div>
</body>
</html>