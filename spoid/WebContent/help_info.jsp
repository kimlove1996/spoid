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
<title>QnA</title>
</head>
<body id="HI">
<!-- help_info area -->
<article id="help_area" class="area">
	<div class="HI_content">
		<div id="caution_text">
			<span id="qna_title">1:1문의하기</span>
			<i class="fa fa-home"></i><span id="qna_subtitle"> 운영진에게 묻거나 하고 싶은 이야기가 있으세요? 이 게시판은 운영진과의 독립적인 공간으로 다른 회원은 열람할 수 없고 오로지 작성자와 운영진만 열람 가능합니다.</span>
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
</body>
</html>
<%@ include file="include/footer.jsp" %>