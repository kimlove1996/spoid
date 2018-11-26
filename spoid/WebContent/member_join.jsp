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

/* ================================================================== 정보입력*/

#write_info_area{
	display: none;
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
    margin: 2% 45% 4% 45%;
    cursor: pointer;
}
#login_btn:hover {
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
	
	
	
	
});





















/* 가입환영인사 및 메인으로 */
	var cnt=2;
	function countdown(){/* 함수 생성한것 뿐임. 호출 전까진 동작을 하지 않는다. */
		if(cnt == 0){/* cnt == 0 이라면 */
			clearInterval(s);	/* setinterval 함수를 종료하고 */
			/* location.href="index.bizpoll"; */ /* index.bizpoll로 이동하라! */
		}/* 아니라면, */
		document.getElementById("rCnt").innerHTML=cnt;/* rCnt에 cnt(3)을 넣고, cnt를 한번씩 --하라. */
		cnt --;
	}
	var s = setInterval(countdown, 1000); // Start!!! 1000=천 밀리세컨드, 즉 1초단위로 countdown()을 실행합니다.
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
	<div id="MJ_title">
		<span><i>S</i>p<i>o</i>i<i>d</i>S<i>l</i>i<i>m</i>e</span><span>이용약관</span>
	</div>
		<hr class="mj_hr">
	<div id="MJ_content">
	
		<input type="button" value="NEXT" id="login_btn">
	</div>
</article>









<!-- 정보입력 area -->
<article id="write_info_area" class="area">
	<div id="MJ_title">
		<span><i>S</i>p<i>o</i>i<i>d</i>S<i>l</i>i<i>m</i>e</span><span>정보입력</span>
	</div>
		<hr class="mj_hr">
	<div id="MJ_content">
		<span>[ JOIN ]</span>
	
		<div class="mj_info">
			<label for="inputid" id="in_id" class="label_singnin">아이디</label>
			<input type="text" id="inputid" class="input_color input_signin" name="inputid">
		</div> 
		<div class="mj_info">
			<label for="inputpw" id="in_pw" class="label_singnin">비밀번호</label>
			<input type="password" id="inputpw" class="input_color input_signin" name="inputpw">
		</div> 
		<div class="mj_info">
			<label for="inputrpw" id="in_rpw" class="label_singnin">비밀번호 재입력</label>
			<input type="password" id="inputrpw" class="input_color input_signin" name="inputrpw">
		</div> 
		<div class="mj_info">
			<label for="inputname" id="in_name" class="label_singnin">닉네임</label>
			<input type="text" id="inputname" class="input_color input_signin" name="inputname">
		</div> 
		<div class="mj_info">
			<label for="inputemail" id="in_email" class="label_singnin">이메일</label>
			<input type="text" id="inputemail" class="input_color input_signin" name="inputemail">
		</div> 
	
		<input type="button" value="NEXT" id="login_btn">
	</div>
</article>










<!-- 가입인증 area -->
<article id="authentication_area" class="area">
		<div id="MJ_title">
		<span><i>S</i>p<i>o</i>i<i>d</i>S<i>l</i>i<i>m</i>e</span><span>가입인증</span>
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
			<input id="input_answer" name="input_answer" placeholder="오치동" class="input_color insert_answer">
			
			
			
		

	</div>	
	
		<input type="button" value="NEXT" id="login_btn">
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
					
					
					<!-- 카운트다운 방법 -->
					<!-- 1. meta 태그 활용 -->
					<!-- 2. javaScript의 setInterval() 활용-->
					
				</div>
</article>




</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>