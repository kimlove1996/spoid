<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style type="text/css">
#bw_body{
	margin-top: 110px;
}
ul,li{
	margin : 0px;
	padding : 0px;
}
#bw_wrapper{
	
	margin :10px auto;
	width : 70%;
}
.bw_header{
	
	height : 50px;
	border-bottom: 3px solid #186786;
}
.bw_header *{
	display: inline-block;

}
.bw_page *{
	display: inline-block;
	padding : 0;
	margin : 0;
	line-height: 50px;
}
.cate{border-right: 3px solid #ccc;}
.bw_path{
	float : right;
	
}
.bw_path a{
	color:black;
	line-height: 50px;	
}
.bw_title{
	text-align : center;
	margin : auto;
	margin-top : 10px;
	height: 40px;
	width : 90%;

}
.bw_title > select{
	padding-left : 10px;
	line-height : 50px;
	width : 80px;
	height: 30px;
	float : left;
}
.bw_title > input{
	width : 92%;
	height: 30px;
	float : right;
}
.board_title{
	width : 70%;
	height : 50px;
	margin : auto;
	padding-left : 10px;
	
}


.edit_box{
	background-color: rgb(249, 249, 247);
	height: 30px;
	border-bottom : 1px solid #ccc;
}
.edit_box * {line-height: 30px;}
.edit_box > span:nth-child(2){
	float : right;
}
.bw_wrapper{
	width : 100%;
	padding-top : 10px;

}
.bw_content{
	width : 90%;
	margin : auto;
	border : 1px solid #ccc;
	margin-bottom: 10px;
}
#content{
	width : 100%;
	min-height: 500px;
	resize: none;
	border : none;
}
.bw_article{
	min-height: 200px;
	margin-bottom : 10px;

}
.btm_board > div{display: inline-block;}
.btm_board > div:nth-child(2){
	float : right;
}
.btm_board > div > a{
	width : 80px;
	height: 30px;
	line-height: 30px;
	color : white;
	background-color: yellow;
	text-align:center;
	display: inline-block;
	background-color: #186786;
}
input[type="file"]{display: none;}
.btn-file{
	background-color: #186786;
	color : white;
	border:none;
}
#file_close_btn{display: inline-block;}
#file_close_btn:hover{color:red;}
.clr_both{clear:both;}
</style>
<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset = "utf-8"></script>

<script type="text/javascript">
	$(document).on("click","#bw_instert",function(elClickedObj){
		var title = $("#title").val();
		alert("게시글 이름 : "+title);
		alert($("#add_file").val());
		// 스마트 에디터로 content 부분 값을 넘겨받는 부분
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD",[]);
		if(title ==""){
			$("#title").focus();
			return false;
		}
		$("#bw_info").submit();
	}
	);
	$(document).on("click",".btn-file",function(){
		$("#add_file").click();
	});
	$(document).on("change","#add_file",function(){
		var filename = this.files[0].name;
		$("#file-name").text(filename);
		$("#file_close_btn").css("display","inline-block");
	});
	$(document).on("click","#file_close_btn",function(){
		$("#add_file").replaceWith($("#add_file").clone(true)); // input[type=file]의 값을 초기화해주는 함수
		$("#add_file").val("");
		$("#file-name").text("선택된 파일 없음");
		$("#file_close_btn").css("display","none");
		
	});
	
</script>

</head>
<body id="bw_body">
	<div id="bw_wrapper">
		<div class="bw_header">
			<div class="bw_page">
				<h2>게시글 작성</h2>
				<p>|게시글 작성 페이지입니다.</p>
			</div>
			<div class="bw_path">
			
					<a href="index.bizpoll">home</a>>
					<a href="boardList.bizpoll">게시판</a>>
					<a href="#">게시글 작성</a>			
	
			</div>
			<div class="clr_both"></div>
		</div>

		<form method="POST" action = "boardInsertPlay.bizpoll" id="bw_info" name="bw_info"   enctype="multipart/form-data">
			<div class="bw_title">
				<select id="bw_cate">
					<option selected="selected">질문</option>
					<option selected="selected">잡담</option>
					<option selected="selected">공지</option>
				</select>
				<input type="text" placeholder = "제목을 입력해주세요" id="title" name="title">
				<input type="hidden" value="${sessionScope.loginUser.id}" name="writer" id="writer">
				<div class="clr_both"></div>
			</div>

			<div class="bw_wrapper">
				<div class="bw_content">

					<textarea id = "content" name="content" placeholder = "입력하고 싶은 내용을 입력해주세요"></textarea>
					
					<div class="edit_box file_layout">
				
						     <input type="file" id="add_file" name="upload">
							 <input type="button" class="btn btn-file" value="파일선택">
							 <span class="files" id="file-name" style="height:29px;border:none;">선택된 파일 없음</span>
							 <span id="file_close_btn" style="display:none">&times;</span>
					</div>
				</div>

				<div class="btm_board">
					<div class="left_btm">
						<a href="#" id="list_go">목록</a>
					</div>
					<div class="right_btm">	
						<a href="#" id="bw_instert">등록하기</a>
						<a href="#" id="bw_cancel">취소하기</a>
					</div>
					<div class="clr_both"></div>
				</div>
		
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "content",
			sSkinURI : "<%=path%>/smarteditor/SmartEditor2Skin.html",
			fCreator : "createEditor2"
		});
	
	
	</script>
	
	
	

</body>
</html>
 <%@ include file="../include/footer.jsp" %>