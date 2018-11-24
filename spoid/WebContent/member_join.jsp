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


/* 선택 메뉴 바 */
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

.mj_hr{
	border: 0.5px solid #d4d4d4;
}



/* ================================================================== 이용약관 */
#constract_area{
	display: none;
}

/* ================================================================== 정보입력*/

#write_info_area{
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
    margin: 0 auto;
    width: 800px;
    height: 500px;
    border: 2px solid #30a1c0;
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






/* ================================================================== 가입인증*/

#authentication_area{
	display: none;
}

/* 주의사항 text관련 */
.fa-exclamation{
	border: 2px solid #fff810;
    border-radius: 15px;
    padding: 4px 9px 4px 9px;
    vertical-align: middle;
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
    margin: 141px 0 35px 96px;
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
    margin: 18px 0px 34px 26px;
    padding-left: 8px;
    font-size: 17px;
    border-radius: 5px;
}


.hint{
	font-size: 18px;
    color: #464646;
}










/* ================================================================== 가입완료*/
#complete_area{
	display: none;
}

</style>
<script type="text/javascript">
$(document).ready(function(){
	
	$(".insert_answer").focus(function(){
		$(this).css("background-color","#e5f3ff").css("transition", "all 1s");
	});
	$(".insert_answer").blur(function(){
		$(this).css("background-color","white").css("transition", "all 1s");
	});
	
});
</script>
</head>
<body>
<div id="MJ">
<div id="MJ_header">
	<div id="MJ_menu">
			<div class="menu_box" id="constract">이용약관</div>
			<div class="menu_box" id="write_info">정보입력</div>
			<div class="menu_box" id="authentication">가입인증</div>
			<div class="menu_box" id="complete">가입완료</div>
	</div>
	<div id="MJ_menu_end"></div>
</div>










<!-- 이용약관 area -->
<article id="constract_area">

</article>









<!-- 정보입력 area -->
<article id="write_info_area">
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










<!-- 가입인증 area -->
<article id="authentication_area">
		<div id="MJ_title">
		<span>spoid slime 가입인증</span>
	</div>
		<hr class="mj_hr">
	<div id="MJ_content">
		<div id="caution_text">
			<i class="fa fa-exclamation"></i><span> PW 찾기를 이용하실 시 하단 힌트의 설정한 답을 입력하게 됩니다. 바른 작성 부탁드립니다.</span>
		</div>



	<div id="hint_box">
		<div id="hint1" class="hint">
			<select>
				<option value="1">내가 살던 동네 이름은?</option>
				<option value="2">내 부모님 성함은?</option>
				<option value="3">어렸을적 내 별명은?</option>
			</select>
		</div>
			<input id="village" name="village" placeholder="오치동" class="insert_answer">
			
			
			
		

	</div>	
	
		<input type="button" value="다음" id="login_btn">
	</div>
</article>









<!-- 가입완료 -->
<article id="complete_area">

</article>
</div>
</body>
</html>