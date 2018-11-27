<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_update.jsp</title>
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










/* ================================================================== 정보입력*/

#write_info_area{
}
.error {
	font-size: 10px;
	color: red;
	display: none;
	padding-left: 25%;
}




/* 입력창 */
.MJ_content {
    margin: 28px auto;
    width: 800px;
    border: 3px solid #cddde1;
    border-radius: 5px;
    clear: both;
    padding-top: 50px;
}

.MJ_content > span{
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


</style>
<script type="text/javascript">
$(document).ready(function(){
		
		// 회원가입 정보 입력
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
		
		
		$("input:password").blur(function(){
			pwcheck();
		});
		
		$("#inputnick").blur(function(){
			var nickVal = $(this).val();
			var mnick= $(inputnick);
				
			nickcheck();
		});
		
		$("#hint_next").click(function(){
			var id = $("#hint_id").val();
			var hint1 = $("#hint_flag").val();
			var hint2 = $("#input_answer").val();
			alert("아이디"+id+"힌트"+hint1+hint2);
			if(hint2 == ""){
				$("#input_answer").focus();
				$("#input_answer").next().text("필수정보 입니다.").css("display","block");;
			}else {
				$.ajax({
					url: "memberupdateplay.spoid",
					data:$("#memberup_fmt").serialize(),
					contentType:'application/x-www-form-urlencoded; charset=UTF-8',
					success: function(data) {
					},
					error: function() {
						alert("SYSTEM ERROR");
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

<!-- 정보입력 area -->
<article id="write_info_area" class="area">
		<form method="" action="" name="memberup_fmt" id="memberup_fmt">
	<div class="MJ_content">
		<i class="fa fa-exclamation"></i><span> 다음과 같이 회원정보가 수정됩니다. 바른 작성 부탁드립니다.</span>
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
		
		
		<input type="button" value="NEXT" class="login_btn" id="info_next">
	</div>

<input type="hidden" id="hint_id" value="">

<!-- 가입인증 area -->
	<div class="MJ_content">
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
		</form>
</article>




</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>