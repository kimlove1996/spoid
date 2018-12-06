<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spoid Member Manager</title>
<style type="text/css">

/* Modal */
	.modal{
		/* display: none; */
		position : fixed;
		z-index : 1000;
		padding-top :3%;
		top : 0;
		width : 100%;
		height: 100%;
		background-color: rgba(0,0,0,0.4);
	}
	#modal_content{
		margin: auto;
	    display: block;
	    width: 300px;
	    height: 200px;
	    border-radius: 10px;
	    background-color: white;
	    text-align: center;
	    -webkit-animation-name: zoom;
	    -webkit-animation-duration: 0.6s;
	    animation-name: zoom;
	    animation-duration: 0.6s;
	    top: 30%;
	    position: relative;

	}
	#m_modal{
		width : 100%;
		background-color: rgba(244,221,71,0.92);
    	border-bottom: 3px solid #186786;
	}
	@-webkit-keyframes zoom {
	    from {-webkit-transdiv:scale(0)} 
	    to {-webkit-transdiv:scale(1)}
	}
	
	@keyframes zoom {
	    from {transdiv:scale(0)} 
	    to {transdiv:scale(1)}
	}
	#m_header{
		height: 32px;
		border-radius: 10px 10px 0px 0px;
		background-color:  #8cc8da;
		border-bottom: 5px solid #186786;
		margin-bottom: 36px;
		
	}
	#m_header > p {
		font-size: 14px;
	    text-align: left;
	    padding-left: 16px;
	    padding-top: 10px;
	    color: white;
	}
	.del_modal_close{
		position : absolute;
		top : -16px;
		right : 10px;
	    font-size: 40px;
	    font-weight: bold;
	    transition: 0.3s;
	    color: #186786;
	   
	}
	.del_modal_close:hover{
		color: #ec4c6a;
		cursor: pointer;
	}
	#yn_btn{
		width: 174px;
	    margin: 0 auto;
	}
	#yn_btn > span > a{
	    width: 66px;
	    height: 30px;
	    line-height: 30px;
	    border-radius: 5px;
	    display: inline-block;
	    background-color: #376f86;
	    color: rgba(255, 252, 228, 0.92);
	    font-size: 15px;
	}
	#yn_btn > span > a:hover{
		color: #186786;
		background-color :  #8cc8da;
	}
	
	#inputpw_cl {
		margin-bottom: 10px;
	    width: 138px;
	    height: 36px;
	    padding: 0 13px;
	    border: none;
	    border-radius: 3px;
	    border-bottom: 3px solid #cddde1;
	    outline: 0;
	}
	#pw_error {
		margin-bottom: 10px;
		font-size: 10px;
		color: red;
		display: none;
	}





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
    width: 400px;
}

#MJ_menu >li > a {
	text-decoration: none;
	color: gray;
}
#MJ_menu > li:nth-child(1){
	border-bottom :4px solid #f4c36a;
	color: #f8c465;
}
#MJ_menu > li:nth-child(1) > a{
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



#authentication_area {
	display: none;
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
.MJ_content {
    margin: 28px auto;
    width: 800px;
    border: 3px solid #cddde1;
    border-radius: 5px;
    clear: both;
    padding-top: 50px;
}
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

#outpage_go {
	color: gray;
    font-size: 14px;
    text-align: center;
    padding: 5px
}
#outpage_go > a {
	padding-left: 15px;
    text-decoration: none;
    color: #16839c;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#hint_flag").val("${sessionScope.loginUser.hint1}");	
	
	$("#authentication").click(function(){
		$("#write_info_area").css("display","none");
		$("#authentication_area").css("display","block");
		$("#write_info").css("border-bottom-color","#b6b6b6").css("color","#b6b6b6");
		$("#writer_info_A").css("color","gray");
		$("#authentication").css("border-bottom-color","#f4c36a").css("color","#f8c465");
		$("#authentication_A").css("color","#f8c465");
	});
	$("#write_info").click(function(){
		$("#write_info_area").css("display","block");
		$("#authentication_area").css("display","none");
		$("#write_info").css("border-bottom-color","#f4c36a").css("color","#f8c465");
		$("#writer_info_A").css("color","f8c465");
		$("#authentication").css("border-bottom-color","#b6b6b6").css("color","#b6b6b6");
		$("#authentication_A").css("color","gray");
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
				url: "idCheck.spoid",
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
		var id = $("#inputid").val();
		var pw = $("#inputpw").val();
		var nick = $("#inputnick").val();
		var email = $("#inputemail").val();
			
		if(id == "" || pw =="" || nick == "" || email == ""){
			$(".error").css("display","block");
			alert("필수 항목입니다. 입력해주세요.");
			return false;
		}else {
 	$.ajax({
		url: "memberupdateplay.spoid",
		data:$("#memberup_fmt").serialize(),
		contentType:'application/x-www-form-urlencoded; charset=UTF-8',
		success: function(data) {
			alert("수정되었습니다.");
			$(".error").css("display","none");
		},
		error: function() {
			alert("SYSTEM ERROR");
		}
	});
		}
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
			$("#input_answer").next().text("필수정보 입니다.").css("display","block");
			return false;
		}else{
		
		$.ajax({
			type:"post",
			url:"memberhintplay.spoid",
			data:"id="+id+"&hint1="+hint1+"&hint2="+hint2,
			success:function(data){
	 			alert("수정되었습니다.");
	 			$("#error_hint").css("display","none");
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
		mpw.next().text("필수정보 입니다.").css("display","block");
		mpw.parent().css("margin-bottom","30px");
		return false;
	} else if(!regPass.test(pw)){
		mpw.next().text("8~20자 이내 영문자와 숫자 특수문자만 입력하세요.").css("display","block");
		mpw.parent().css("margin-bottom","30px");
		return false;
	} else if(pw2 == ""){
		mpw2.next().text("필수정보 입니다.").css("display","block");
		mpw2.parent().css("margin-bottom","30px");
		return false;
	} else if(pw != pw2){
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


//모달창 닫기
$(document).on("click",".del_modal_close",function(){
	location.href = "index.spoid";
});
$(document).on("click","#yes_btn",function(){
	var pw = $("#inputpw_cl").val();
	var id = $("#inputid_cl").val();
	
	if(pw != ""){
		$.ajax({
			url : "pwdCheck.spoid",
			type : "POST",
			dataType : "json",
			data : "id="+id+"&pw="+pw, //쿼리스트링 공백 넣지 말것!
			success : function(data){
				if(data.message == "-1"){
					//현재 비밀번호가 있는 경우
					$("#delModal").css("display","none");
				}else{
					$("#inputpw_cl").select();
					$("#inputpw_cl").next().text("비밀번호가 일치하지 않습니다.").css("display","block").css("color","red");
					$("#inputpw_cl").css("border-color","red");
					return false;
				}
			},
			error : function(){
				alert("System Error!!!");
			}
			
			
		});
	}
});
$(document).on("blur","#inputpw_cl",function(){
	var pw = $("#inputpw_cl").val();
	if(pw == ""){
		$("#inputpw_cl").select();
		$("#inputpw_cl").next().css("display","block").css("color","red");
		$("#inputpw_cl").css("border-color","red");
	}
});


</script>
</head>
<body onload="load()">
<div id="MJ">
<div id="MJ_header">
	<ul id="MJ_menu">
			<li class="menu_box" id="write_info"><a href="#" id="writer_info_A">정보입력</a></li>
			<li class="menu_box" id="authentication"><a href="#" id="authentication_A">힌트입력</a></li>
	</ul>
	<div id="MJ_menu_end"></div>
</div>
<!-- 정보입력 area -->
<article id="write_info_area" class="area">
<form method="" action="" name="memberup_fmt" id="memberup_fmt">
	<div class="MJ_content">
<!-- 		<i class="fa fa-exclamation"></i><span> 다음과 같이 회원정보가 수정됩니다. 바른 작성 부탁드립니다.</span>-->		
		<div class="mj_info">
			<label for="inputid" id="in_id" class="label_singnin">아이디</label>
			<input type="text" id="inputid" class="input_color input_signin" name="inputid" class="input_in" readonly="readonly" value="${sessionScope.loginUser.id}">
		</div> 
		<div class="mj_info">
			<label for="inputpw" id="in_pw" class="label_singnin">비밀번호</label>
			<input type="password" id="inputpw" class="input_color input_signin" name="inputpw" class="input_in" value="${sessionScope.loginUser.pw}">
			<span class="error">필수 정보입니다.</span>
		</div> 
		<div class="mj_info">
			<label for="inputrpw" id="in_rpw" class="label_singnin">비밀번호 재입력</label>
			<input type="password" id="inputrpw" class="input_color input_signin" name="inputrpw" class="input_in" value="${sessionScope.loginUser.rpw}">
			<span class="error">필수 정보입니다.</span>
		</div> 
		<div class="mj_info">
			<label for="inputname" id="in_name" class="label_singnin">닉네임</label>
			<input type="text" id="inputnick" class="input_color input_signin" name="inputnick" class="input_in" value="${sessionScope.loginUser.nick}">
			<span class="error">필수 정보입니다.</span>
		</div> 
		<div class="mj_info">
			<label for="inputemail" id="in_email" class="label_singnin">이메일</label>
			<input type="text" id="inputemail" class="input_color input_signin" name="inputemail" class="input_in" value="${sessionScope.loginUser.email}">
			<span class="error">필수 정보입니다.</span>
		</div> 
		
<input type="hidden" id="hint1" name="hint1" value="${sessionScope.loginUser.hint1}">
<input type="hidden" id="hint2" name="hint2" value="${sessionScope.loginUser.hint2}">
		
		<input type="button" value="확인" class="login_btn" id="info_next">
	</div>
		</form>
</article>
<input type="hidden" id="hint_id" value="${sessionScope.loginUser.id}">
<!-- 가입인증 area -->
<article id="authentication_area">
<form id="" name="">
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
			<input id="input_answer" name="input_answer" placeholder="ex)오치동" class="input_color insert_answer" value="${sessionScope.loginUser.hint2}">
			<span id="error_hint">필수 정보입니다.</span>
	</div>	
		<input type="button" value="확인" class="login_btn" id="hint_next">
	</div>
</form>
</article>

<div id="outpage_go">
	<span id="outpage_text">회원 탈퇴하시겠습니까?</span><a href="memberDelete.spoid">회원탈퇴</a>
</div>

<div id="delModal" class="modal">
		<div id="modal_content">
		 <div id="m_header">
		 <p>비밀번호를 입력해주세요</p>
			<span class="del_modal_close">&times;</span>		 
		 </div>
		 	<input id="inputid_cl" type="hidden" value="${sessionScope.loginUser.id}">
			<input id="inputpw_cl" type="password" placeholder="PASSWORD">
			<span id="pw_error">필수 정보입니다.</span>
			<div id="yn_btn">
				<span id="yes_btn"><a href="#">확인</a></span> 
			</div>
		</div>
</div>


</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>