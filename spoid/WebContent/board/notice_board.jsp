<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">


<title>Insert title here</title>
<style type="text/css">
	p,h2{margin : 0;}
	th,td{height: 30px;}
	#board_body{
		margin-top: 150px;
	}
	#board_wrapper{
		width : 80%;
		margin:auto;

	}
	.board_header{
		height : 50px;
		border-bottom: 3px solid #186786;
	}
	.board_header > div{ display: inline-block;}
	.board_title{
		float:left;
		
	}
	.board_title *{
		line-height: 50px;
	}
	.board_title *,.b_bottom *{ display: inline-block;}
	.b_category{
		float : right;
	}
	.b_category > ul > li{
		display: inline-block;
	}
	.b_category > ul > li >a{
		color : black;
		line-height: 50px;
	}
	.b_tab{
		width : 100%;
		border-collapse: collapse;
		
	}

	.b_tab > thead th{
		
		background-color: rgb(249, 249, 247);
	}
	.b_tab > tbody{
		text-align: left;
	}
	.b_tab  th,.b_tab td{
    	border-bottom: 1px solid #cccccc;
    	padding : 10px;
    	height: 30px;
    	overflow: hiddent;

  	}
  	.b_tab td:not(.b_title_td){
  		text-align: center;
  	}
  	.comments_num{
  		color : red;
  	}
	.clr_both{clear:both;}
	.b_search_area{
		margin-top : 10px;
		float : right;
		display: inline-block;
		height: 30px;
		
	}
	.search_sel{
		position : relative;
		height : 30px;
		line-height:30px;
		border :3px solid #186786;
		box-sizing: border-box;
		top : -1px;
		
	}
	#b_search{
		position : relative;
		border : 3px solid #186786;
		width : 300px;
		height: 30px;
		line-height: 30px;
		box-sizing: border-box;
	}
	#b_search_btn{
		background-color : #186786;
		height: 30px;
		line-height: 30px;
		color:white;
		border: none;
		width : 50px;
		position: relative;
		right : 50px;
		top : 1px;
		
	}
	.order_area{
		text-align: right;
	}
	#order_sel{
		margin : 10px;
		width : 80px;
		height: 30px;
		line-height: 30px;
		
	}
	#write_btn{
		display: inline-block;
		float : left;
		color : white;
		background-color : #186786;
		width : 80px;
		height: 30px;
		text-align: center;
		line-height: 30px;
		margin-top: 10px;
		
	}
	.pagination_area{text-align: center;}
	.pagination {
 		display:inline-block;
   	 	margin: auto;
 
	}
	.pagination a {
	    color: black;
	    float: left;
	    padding: 8px 16px;
	    text-decoration: none;
	    transition: background-color .3s;
	    border-radius:10px;
	}
	
	.pagination a.active {
	    background-color:  #186786;
	    color: white;
	}
	.pagination a:hover:not(.active) {background-color: #ddd;}
	.b_title{color:black;}

	
	.b_title_td{text-align: left;}

</style>
</head>
<body id="board_body">
	<div id="board_wrapper">
		<form class="board_frm">
		<div class="board_header">
			<div class="board_title">
				<h2>공지사항</h2>
				<p>|공지사항입니다.</p>
				
			</div>
			<div class="b_category">
				<ul>
					<li><a href= "#">QnA</a></li>
					<li><a href= "#">잡담</a></li>
					<li><a href= "#">공지</a></li>
				</ul>
				
			</div>
			<div class="clr_both"></div>
		</div>
		
		<div class="order_area">
				<select id="order_sel">
					<option selected="selected">최신순</option>
					<option>댓글순</option>
					<option>좋아요순</option>
					<option>조회순</option>		
				</select>
	   </div>
				
		<div class="b_contents">
			<table class="b_tab">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">카테고리</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">날짜</th>
						<th scope="col">조회</th>
						<th scope="col">좋아요</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td width ="100" class="b_num_td">1</td>
						<td width = "150" class="b_cate_td">잡담</td>
						<td width = "600" class="b_title_td"><a href=# class="b_title">집에 가고싶어요오오오오</a>
							<i class="far fa-image"></i><a href="#" class="comments_num">4</a>
						</td>
						<td width = "150" class="b_writer_td">잉여잉여잉여킹</td>
						<td width = "150" class="b_date_td">2018.11.01</td>
						<td class="b_view_td">12</td>
						<td class="b_like_td">1</td>
					</tr>					
				
				</tbody>
			
			</table>
		
		</div>
		<div class="b_bottom">
			<div class="b_write_area">
				<a href="#" id="write_btn"><i class="fas fa-pen"></i> 글쓰기</a>		
			</div>

			<div class="b_search_area">
				<select class="search_sel">
					<option selected="selected">전체</option>
					<option selected="selected">내용만</option>
					<option selected="selected">제목만</option>
				</select>
				<input type="text" id="b_search">
				<input type="submit" value="검색" id="b_search_btn">
			</div>
			<div class="clr_both"></div>
		</div>
		<div class="pagination_area">
			<div class="pagination">
			  <a href="#">&laquo;</a>
			  <a href="#" class="active">1</a>
			  <a href="#">2</a>
			  <a href="#">3</a>
			  <a href="#">4</a>
			  <a href="#">5</a>
			  <a href="#">&raquo;</a>
			  <div class="clr_both"></div>
			</div>
		</div>
		</form>
	</div>
</body>
</html>
<%@ include file="../include/footer.jsp" %>