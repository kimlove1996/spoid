<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
/* ================================================================== */
#HI {
    margin: 200px auto 0 auto;
}
*{
	outline: 0;
}

#help_area{
	margin-top: 200px;
}
.HI_content {
    margin: 28px auto;
    width: 800px;
    border: 3px solid #cddde1;
    border-radius: 5px;
    clear: both;
    padding-top: 50px;
}
#qna_title {
	display: block;
    color: #1EC8BB;
    font-size: 25px;
    font-weight: bold;
}
.HI_content > span{
    border-radius: 5px;
    clear: both;
    display: block;
    text-align: center;
    font-weight: bold;
    color: #f1b340;
}
/* 주의사항 text관련 */
.fa-home{
    color: #1EC8BB;
}

#caution_text{
    padding: 20px 18px;
    font-size: 14px;
}

#qna_subtitle{
	color: gray;
}


#help_box{
    margin: 42px 32px;
}
#help_img {
	width: 320px;
}


.help{
	font-size: 18px;
    color: #464646;
    margin-bottom: 100px;
}
.hi_info {
    margin: 0 auto;
    height: 50px;
    margin-top: 34px;
}

.label_singnin {
    width: 65px;
    height: 20px;
    float: left;
    line-height: 40px;
    font-size: 14px;
    font-weight: bold;
    color: #6f6f6f;
}

#in_title{
	width: 90px;
    height: 20px;
    float: left;
    line-height: 40px;
    font-size: 14px;
    font-weight: bold;
    color: #6f6f6f;
}

.input_signin {
    width: 290px;
    height: 36px;
    border: none;
    border-radius: 3px;
    border-bottom: 3px solid #cddde1;
    outline: 0;
}

#inputQ{
	width: 393px;
    height: 36px;
    border: none;
    border-radius: 3px;
    border-bottom: 3px solid #cddde1;
    outline: 0;
    padding-left: 6px;
}
#input_a{
	margin: 0 auto;
    margin-top: 15px;
    height: 400px;
    width: 550px;
    border: 2px solid #cddde1;
    border-radius: 5px;
    padding: 25px;
}

#qna_textarea{
	margin: 0 auto;
    width: 605px;
    margin-top: 24px;
}


#error_help{
	font-size: 10px;
    color: red;
    display: none;
    padding-left: 5%;
}
#next_btn {
	width: 100px;
    height: 46px;
    border: 1px solid #d4d4d4;
    border-radius: 3px;
    font-size: 16px;
    line-height: 18px;
    background-color: #d4d4d4;
    color: #777;
    margin: 2% 45% 4% 45%;
    cursor: pointer;
}
#next_btn:hover {
    background-color: #ffcd00;
    color: #474747;
    font-weight: bold;
}



#help_img_wr{
	display: inline-block;
}

#hi_info_title{
    margin: 0 auto;
    width: 606px;
    height: 50px;
    margin-top: 34px;
}

#hi_info_area{
    display: inline-block;
    vertical-align: 66px;
    margin-left: 40px;
}


</style>
<title>QnA</title>
<script type="text/javascript">
$(document).ready(function(){
	$(".input_color").focus(function(){
		$(this).css("background-color","#e5f3ff").css("transition", "all 1s");
	});
	$(".input_color").blur(function(){
		$(this).css("background-color","white").css("transition", "all 1s");
	});
});
</script>
</head>
<body id="HI">
<!-- help_info area -->
<article id="help_area" class="area">
	<div class="HI_content">
		<div id="caution_text">
			<span id="qna_title">1:1문의하기</span>
			<i class="fa fa-home"></i><span id="qna_subtitle"> 운영진에게 묻거나 하고 싶은 이야기가 있으세요? 이 게시판은 운영진과의 독립적인 공간으로 다른 회원은 열람할 수 없고 오로지 작성자와 운영진만 열람 가능합니다.</span>
		</div>
	<div id="help_box">
		<div class="help">
		<div id="help_img_wr">
			<img alt="" src="img/contact.jpg" id="help_img">
		</div>
		
		<div id="hi_info_area">
			<div class="hi_info">
			<label for="inputid" id="in_id" class="label_singnin">아이디</label>
			<input type="text" id="inputid" class="input_color input_signin" name="inputid" class="input_in" value="${sessionScope.loginUser.id}" readonly="readonly">
			</div>
			<div class="hi_info">
			<label for="inputemail" id="in_email" class="label_singnin">이메일</label>
			<input type="text" id="inputemail" class="input_color input_signin" name="inputemail" class="input_in" value="${sessionScope.loginUser.email}" readonly="readonly">
			</div>
		</div>
			
		</div>
			<div id="hi_info_title">
			<label for="inputQ" id="in_title" >제목</label>
			<input type="text" id="inputQ" class="input_color" name="inputQ" class="input_in" placeholder="문의할 내용을 적어주세요.">
			</div>
			<span id="error_help">필수 정보입니다.</span>
			<div id="qna_textarea">
				<textarea rows="" cols="" placeholder="ex) 문의할 내용을 적어주세요." id="input_a" name="a" style="resize: none;"></textarea>
			</div>
			<span id="error_help">필수 정보입니다.</span>
	</div>	
		<input type="button" value="NEXT" id="next_btn">
	</div>
</article>
</body>
</html>
<%@ include file="include/footer.jsp" %>