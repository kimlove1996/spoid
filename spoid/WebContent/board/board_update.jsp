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
#bu_body{
	margin-top: 110px;
}
ul,li{
	margin : 0px;
	padding : 0px;
}
#bu_wrapper{
	
	margin :10px auto;
	width : 70%;
}
.bu_header{
	
	height : 50px;
	border-bottom: 3px solid #186786;
}
.bu_header *{
	display: inline-block;

}
.bu_page *{
	display: inline-block;
	padding : 0;
	margin : 0;
	line-height: 50px;
}
.cate{border-right: 3px solid #ccc;}
.bu_path{
	float : right;
	
}
.bu_path a{
	color:black;
	line-height: 50px;	
}
.bu_title{
	text-align : center;
	margin : auto;
	margin-top : 10px;
	height: 40px;
	width : 90%;

}
.bu_title > select{
	padding-left : 10px;
	line-height : 50px;
	width : 80px;
	height: 30px;
	float : left;
}
.bu_title > input{
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
.bu_wrapper{
	width : 100%;
	padding-top : 10px;

}
.bu_content{
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
.bu_article{
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
.file_layout > span{
	padding-left : 10px;
}
#file_btn{
	height : auto;
	width : auto;
	border : none;

}
.file_input label {
    position:relative;
    cursor:pointer;
    display:inline-block;
    vertical-align:middle;
    overflow:hidden;
    width:100px;
    height:30px;
	color : #333;
	background-color : #ccc;
    text-align:center;
    line-height:30px;
}
.file_input label:hover{
	background-color: #333;
	color:white;
}
.file_input label input {
    position:absolute;
    width:0;
    height:0;
    overflow:hidden;
}
.file_input input[type=text] {
    vertical-align:middle;
    display:inline-block;
    width:90%;
    height:26px;
    line-height:26px;
    font-size:11px;
    padding:0;
    border:0;
    background-color :rgb(249, 249, 247);
    margin-bottom: 5px;
}



input[type="file"]{display: none;}
.btn-file{
	background-color: #186786;
	color : white;
	border:none;
}

#file_close_btn:hover{color:red;}
.clr_both{clear:both;}
</style>
<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset = "utf-8"></script>

<script type="text/javascript">
	$(document).ready(function(){
		
		if("${boardView.filename}" == "-"){
			$("#file-name").text("선택된 파일이 없습니다.");
			$("#file_close_btn").css("display","none");
		}
	});
	$(document).on("click","#bu_update",function(elClickedObj){
		var title = $("#title").val();
		alert("게시글 이름 : "+title);
		alert($("#add_file").val());
		// 스마트 에디터로 content 부분 값을 넘겨받는 부분
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD",[]);
		if(title ==""){
			$("#title").focus();
			return false;
		}
		$("#bu_info").submit();
	}
);
	$(document).on("click",".btn-file",function(){
		$("#add_file").click();
	});
	$(document).on("change","#add_file",function(){
		//$(this)[0]이라고 표현하는 이유는 Files가 return Filelist로 값을 반환하기 때문 
		var filesize = $(this)[0].files; /* Files들을 첨부할 수 있음*/
		if(filesize.length < 1){ //첨부 파일이 없다면
			$("#file-name").text("선택된 파일 없음");
			$("#file_close_btn").css("display","none");
		}else{
			/* 첨부파일이 있다면 첨부파일의 이름과 사이즈를 불러옴*/
			var filename = this.files[0].name;
			var filesize = this.files[0].size;
			
			var size = this.files[0].size;
			var maxSize = 10*1024*1024; /*10mb 용량 제한*/
			alert("size : "+size);
			if(size > maxSize){/*용량제한걸림*/
				alert("첨부 파일 사이즈는 10MB 이내로 등록 가능합니다.");
				$("#file-name").text("선택된 파일이 없음");
				/*화면단에서는 input type="file" 용량 제한하는 코드 없음
				 그래서 경고창은 뜨지만 실제 10mb가 넘는 파일이 들어가 있음
				 반드시 초기화를 시켜서 지워줄 것! 안 그러면 action단에서 erroer 발생
				*/
				$("#add_file").val("");
				$("#now-file-size").val(0); //file들을 초기화 시킨다

			}else{ /*첨부가능*/
				$("#now-file-size").val(filesize);
				$("#file-name").text(filename);
				$("#file_close_btn").css("display","inline-block");
			}

		}

		
	});
	$(document).on("click","#file_close_btn",function(){
		$("#add_file").replaceWith($("#add_file").clone(true)); // input[type=file]의 값을 초기화해주는 함수
		$("#add_file").val("");
		$("#file-name").text("선택된 파일 없음");
		$("#file_close_btn").css("display","none");
		
	});
	$(document).on("click","#bu_update",function(){
		var nowfile = $("#file-name").text();
		$("#now-file-name").val(nowfile);
		$("#bu_info").submit();
	});
</script>

</head>
<body id="bu_body">
	<div id="bu_wrapper">
		<div class="bu_header">
			<div class="bu_page">
				<h2>게시글 수정</h2>
				<p>|게시글 수정 페이지입니다.</p>
			</div>
			<div class="bu_path">
			
					<a href="index.bizpoll">home</a>>
					<a href="boardList.bizpoll">게시판</a>>
					<a href="#">게시글 수정</a>			
	
			</div>
			<div class="clr_both"></div>
		</div>

		<form method="POST" action = "boardupdateplay.bizpoll" id="bu_info" name="bu_info"   enctype="multipart/form-data">
			<div class="bu_title">
				<select id="bu_cate">
					<option selected="selected">질문</option>
					<option selected="selected">잡담</option>
					<option selected="selected">공지</option>
				</select>
				<input type="hidden" name="bno" id="bno" value="${boardView.bno}">
				<input type="text" placeholder = "제목을 입력해주세요" id="title" name="title" value="${boardView.title}"> 
				<input type="hidden"  name="writer" id="writer" value="${boardView.writer}">
				<div class="clr_both"></div>
			</div>

			<div class="bu_wrapper">
				<div class="bu_content">

					<textarea id = "content" name="content" placeholder = "입력하고 싶은 내용을 입력해주세요">
						${boardView.content}
					
					</textarea>
					
					<div class="edit_box file_layout">
				
						     <input type="file" id="add_file" name="upload">
							 <input type="button" class="btn btn-file" value="파일선택" name="upload">
							 <span class="files" id="file-name" name="file-name" style="height:29px;border:none;" >${boardView.filename}</span>
							 <span id="file_close_btn" style="display:inline-block">&times;</span>
							 <input type="hidden" id="now-file-name" name="now-file-name">
							 <input type="hidden" id="now-file-size" name="now-file-size" >
							 
						     

					</div>
				</div>

				<div class="btm_board">
					<div class="left_btm">
						<a href="#" id="list_go">목록</a>
					</div>
					<div class="right_btm">	
						<a href="#" id="bu_update">수정하기</a>
						<a href="#" id="bu_cancel">취소하기</a>
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