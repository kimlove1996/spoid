<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../include/header.jsp" %>
 <%
	String referer = request.getHeader("referer"); // 이전의 url 을 가져옴
 %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#b_body{
	margin-top: 110px;
}
ul,li{
	margin : 0px;
	padding : 0px;
}
#b_wrapper{
	
	margin :10px auto;
	width : 70%;
}
.b_header{
	
	height : 50px;
	border-bottom: 3px solid #186786;
}
.b_header *{
	display: inline-block;

}
.b_page *{
	display: inline-block;
	padding : 0;
	margin : 0;
	line-height: 50px;
}
.cate{border-right: 3px solid #ccc;}
.b_path{
	float : right;
	
}
.b_path a{
	color:black;
	line-height: 50px;	
}
.b_title{
	margin-top : 10px;
	height: 40px;
	border-bottom :  3px solid #cccccc;
}
.b_title > div{
	display: inline-block;
	line-height: 40px;
}
.board_title{
	width : 70%;
	height : 50px;
	margin : auto;
	padding-left : 10px;
	
}

.board_title > a{color:black;}
.count_container{
	float : right;
	margin-right : 10px;
	max-width : 20%;
}
.board_info{
	background-color: rgb(249, 249, 247);
	height: 30px;
	padding : 0 10px;
}
.board_info * {line-height: 30px;}

.board_content{
	padding : 10px;
}
.b_article{
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
.like_article{
	margin-bottom : 10px;
	box-sizing : border-box;
	text-align: center;
	font-size : 30px;
}
.like_artice i {
	background-color:#186786;
	color :white;
	border-radius: 50%;
}
.like_article > button {
	background: none;
	border : none;
	font-size: 30px;
}
.file_layout{
	margin-bottom : 10px;
	border-bottom :  3px solid #cccccc;
}
.comment_header_bar{
	margin : 10px;
	padding-bottom: 10px;
	border-bottom : 3px solid #cccccc;
}
.c_writer{
	display : inline-block;
}
.comment_btn{
	display: inline-block;
	float : right;		
}
.comment_btn a{color:#333;}
.comment_layout,.comment_content{padding : 10px;}

.comment_li{
	border-bottom : 1px solid #cccccc;
}
.write_comment,.update_comment{
	margin : 10px;
	border : 1px solid #cccccc;
	box-sizing: border-box;
}
.write_comment > textarea,.update_comment > textarea{
	resize: none;
	width : 100%;
	min-height: 80px;
	border: none;
}
.c_write_btn{
	display :inline-block;
	width : 100%;
	height: 30px;
	line-height: 30px;
	background-color: rgb(249, 249, 247);
	text-align: center;

	box-sizing: border-box;
	color : #333;
}

.cu_btn{
	display :inline-block;
	width :100%;
	height: 30px;
	line-height: 30px;
	text-align: center;
	
	box-sizing: border-box;

}
.c_update_btn{
	background-color: rgb(249, 249, 247);
	color : #333;
}

.cu_close_btn{
	
	background-color: white;
	color : #333;
}
#b_date{float:right;}

.clr_both{clear:both;}
	.modal{
		display: none;
		position : fixed;
		z-index : 10;
		padding-top :3%;
		top : 0;
		width : 100%;
		height: 100%;
		background-color: rgba(0,0,0,0.4);
	}
	#dmodal_content{
		margin: auto;
		display: block;
		width : 300px;
		height : 200px;
		border-radius : 10px;
		background-color: white;
		text-align: center;    
	    -webkit-animation-name: zoom;
	    -webkit-animation-duration: 0.6s;
	    animation-name: zoom;
	    animation-duration: 0.6s;
		top : 50%;
		left: 50%;
		position : relative;
		margin : -150px 0 0 -150px;

	}
	#dmodal_content > span > button{
		background-color: #186786;
		color:white;
		border : none;
		width : 50px;
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
	#dm_header{
		height: 50px;
		border-radius: 10px 10px 0px 0px;
		background-color: rgba(244,221,71,0.92);
		border-bottom: 5px solid #186786;
		
	}
	.bdel_modal_close{
		position : absolute;
		top : -5px;
		right : 10px;
	    font-size: 40px;
	    font-weight: bold;
	    transition: 0.3s;
	    color: #186786;
	   
	}
	.bdel_modal_close:hover{
		color : orange;
		cursor: pointer;
	}
	#dmodal_content > span > a{
		width : 50px;
		height : 30px;
		line-height : 30px;
		border-radius : 5px;
		display : inline-block;
		background-color: #186786;
		color : rgba(244,221,71,0.92);
	}
	#dmodal_content > span > a:hover{
		color: #186786;
		background-color : rgba(244,221,71,0.92);
	}
	/* 100% Image Width on Smaller Screens */
	@media only screen and (max-width: 400px){
	    .modal-content {
	        width: 100%;
	    }
	}
	.replylist_textarea{
		border : none;
		resize: none;
		width : 100%;
		text-align: left;
		overflow-y:hidden;
	}
	#filename > a{
		color:black;
	}
	#filename > a:hover{
		text-decoration: underline;
	}
	.empty_content::placeholder{color:red;}
	.empty_content:-ms-input-placeholder { /* Internet Explorer 10-11 */
  		 color: red;
	}

	.empty_content::-ms-input-placeholder { /* Microsoft Edge */
  		 color: red;
	}
</style>


<script type="text/javascript">
	$(document).ready(function(){
		/*문서가 준비되면 댓글 목록을 조회하는 ajax실행*/
		var cnt = ${boardView.goodcnt};
		comment_list();
		$(document).on("click","#btn_like",function(){
		  	//serialize()=> form의 하위 태그들을 한꺼번에 서브스트링 형태로 보내주도록 해줌
		  	
			$.ajax({
				url:"updateGoodcnt.spoid",
				data:"bno=${boardView.bno}",
				success:function(data){
					if(data.result == "1"){
						cnt = cnt+1;
						$("#btn_like").html(cnt);
					}
				},
				error:function(){
					alert("SYSTEM ERROR!!!");
				}
				
			});
		
		});
	});
	function comment_list(){
		$.ajax({
			type:"post",
			url:"commentlist.spoid",
			data:"bno=${boardView.bno}",
			success:function(result){
				// 성공하면 commentlist값을 result에 담아 있음
				$("#commentList").html(result);
			}
		});
	}


	$(document).on("click","#b_bdelete_btn",function(){
		$("#bdelModal").css("display","block");
	});
	$(document).on("click","#bdyes_btn",function(){
		location.href="boarddeleteplay.spoid?bno=${boardView.bno}&filename=${boardView.filename}";
		
	});	
	$(document).on("click",".bdno_btn",function(){
		$("#bdelModal").css("display","none");
	});
	//댓글 삭제 코드
	$(document).on("click","#r_delete",function(){
		var rno = $(this).attr("data_num");
		alert(rno);
		$.ajax({
			type:"post",
			url:"commentdeleteplay.spoid",
			data:"bno=${boardView.bno}&rno="+rno,
			success:function(result){
				// 성공하면 commentlist값을 result에 담아 있음
				comment_list();
			},
			error : function(){
				alert("System Error!!!");
			}
		});
	});
	$(document).on("click",".c_write_btn",function(){
		var cmt_txt = $(".cmt_txt").val();
		alert("글 내용 : "+cmt_txt);
		//유효성 검사
		if(cmt_txt == ""){
			$(".cmt_txt").addClass("empty_content");
			$(".cmt_txt").attr("placeholder","댓글 등록을 위해 내용 입력은 필수입니다.!");
			return false;
		}else{
			$(".cmt_txt").removeClass("empty_content");
			$(".cmt_tx2").attr("placeholder","댓글을 입력해주세요.");
			var bno = ${boardView.bno};
			$("#cmt_bno").val(bno);
		}
	
		//serialize()=> form의 하위 태그들을 한꺼번에 서브스트링 형태로 보내주도록 해줌
		$.ajax({
			url:"commentInsert.spoid",
			data:$("#frm_cmt").serialize(),
			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success:function(){
				comment_list();
				$(".cmt_txt").val("");
			},
			error:function(){
				alert("댓글 등록 실패!");
			}
			
		});
	});
	$(document).on("click","#r_update",function(){
		
		var rcontent = $(this).prev(".origin_cont").val();
		var rindx = $(this).attr("data_num");
		alert(rcontent);
		$(".write_comment").css("display","none");
		$(".update_comment").css("display","block");
		$(".cmt_txt2").val(rcontent);
		$("#cmt_rno2").val(rindx);

		
	});
	$(document).on("click",".c_update_btn",function(){
		var cmt_rno = $("#cmt_rno2").val();
		
		var cmt_txt = $(".cmt_txt2").val();
		alert("글 내용 : "+cmt_txt+cmt_rno);
		
		//유효성 검사
		if(cmt_txt == ""){
			$(".cmt_txt2").addClass("empty_content");
			$(".cmt_txt2").attr("placeholder","댓글 수정을 위해 내용 입력은 필수입니다.!");
			return false;
		}else{
			$(".cmt_txt2").removeClass("empty_content");
			$(".cmt_txt2").attr("placeholder","댓글을 입력해주세요.");
			var bno = ${boardView.bno};
			$("#cmt_bno2").val(bno);
		}
		//serialize()=> form의 하위 태그들을 한꺼번에 서브스트링 형태로 보내주도록 해줌
		$.ajax({
			url:"commentUpdate.spoid",
			data:$("#frm_cmt").serialize(),
			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success:function(){
				comment_list(); 
	
				$(".write_comment").css("display","block");
				$(".update_comment").css("display","none");
			},
			error:function(){
				alert("SYSTEM ERROR!!!");
			}
			
		});
	});
	$(document).on("click",".cu_close_btn",function(){
		$(".cmt_txt2").val(""); 

		$(".write_comment").css("display","block");
		$(".update_comment").css("display","none");		
	});
</script>

</head>
<body id="b_body">
	<div id="b_wrapper">

		
		<div class="b_header">
			<div class="b_page">
				<h2>QnA</h2>
				<p>|글번호:${boardView.bno}</p>
		
									
				<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today"/>
				<fmt:formatDate value="${replyview.regdate}" pattern="yyyy-MM-dd" var="regdate"/>				 
			</div>
			<div class="b_path">
			
					<a href="index.spoid">home</a>>
					<a href="boardList.spoid">게시판</a>>
					<a href="#">QnA</a>			
	
			</div>
			<div class="clr_both"></div>
		</div>

		<div class="boardinfo_wrap">
			<div class="b_title">
				<div class="board_title">
					<span>${boardView.title}</span>
				</div>
				<div class="count_container">
					<span><i class="far fa-eye">${boardView.viewcnt}</i></span>
					<span><i class="far fa-comment-dots">${boardView.replycnt}</i></span>
				</div>
			</div>
			<div class="board_info">
				<span id="b_writer">${boardView.writer}</span>
				<span id="b_date">
					<c:choose>
						<c:when test="${today==regdate}">
							<fmt:formatDate pattern="HH:mm:ss" value="${bDto.regdate}"/>
						</c:when>
						<c:otherwise>
							 <fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdate}"/>
						</c:otherwise>
					</c:choose>
				
				</span>
				<div class="clr_both"></div>
			</div>
	
			<div class="board_content">
				<div class="b_article">
					${boardView.content}			
				</div>
				<c:if test="${not empty sessionScope.loginUser.id}">
				<div class="like_article">
					
					<label for = "btn_like">
						<i class="fas fa-heart"></i>
					</label>
					<button id = "btn_like" name="btn_like">
						${boardView.goodcnt}	
					</button>
				</div>
				</c:if>
				<div class="board_info file_layout">
					<span>첨부파일</span>
					<span id="filename"><a href="boarddownload.spoid?filename=${boardView.filename}">${boardView.filename}</a></span>
					
				</div>
				<div class="btm_board">
					<div class="left_btm">
						<a href="boardList.spoid" id="list_go">목록</a>
					</div>
				
					<c:if test="${sessionScope.loginUser.id == boardView.writer}">
						<div class="right_btm">	
							<a href="boardUpdate.spoid?bno=${boardView.bno}" id="b_bdelaet_btn">수정하기</a>
							<a href="#" id="b_bdelete_btn">삭제하기</a>
						</div>
					</c:if>
				</div>
			</div>
		
		
		</div>
			<div id="commentList"></div>
	</div>
	<div id="bdelModal" class="modal">
			<div id="dmodal_content">
			 <div id="dm_header">
				<span class="bdel_modal_close bdno_btn">&times;</span>		 
			 </div>
	
				<p>해당 게시글을 삭제하시겠습니까?</p>
				<span><button id="bdyes_btn">예</button></span> 
				<span><button class="bdno_btn">아니오</button></span>
			</div>
	</div>


</body>
</html>
 <%@ include file="../include/footer.jsp" %>