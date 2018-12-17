<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.js-load {
    display: none;
}
.js-load.active {
    display: block;
}
.is_comp.js-load:after {
    display: none;
}







	#movie_search_all{
		width: 1920px;
		margin : 145px auto 145px auto;
	}
	
	
	/* 검색창 area */
	#search_input{
		border-top: 4px solid #89c0cf;
	    padding: 27px 36px 0 36px;
	    width: 1500px;
	    margin: 0 auto;
	}
	
	#serch_input{
		background-color: #92d1e2;
	    height: 89px;
	    width: 71%;
	    margin: 0 auto;
	    padding-top: 52px;
	    border-radius: 5px;
	}
	
	#serch_input_in{
		margin: 0 auto 0 auto;
	    width: 464px;
	}
	
	#selectbox{
	    width: 97px;
	    height: 31px;
	    margin-right: 16px;
	    outline: 0px;
	    vertical-align: middle;
	    padding: 0 0 3px 5px;
	}
	
	#search_input_box{
		width: 331px;
	    height: 25px;
	    outline: 0px;
	    padding-left: 10px;
	    border-radius: 0px;
	}
	
	/* 안내 text area */
	#Guid_text{
	    font-size: 31px;
	    padding: 74px 0 7px 0;
	    width: 1312.08px;
	}
	
	#Guid_text > span:nth-child(1) {
		font-size: 31px;
	    padding: 30px 0;
	    width: 1312.08px;
	    margin: 0 auto;
	    font-weight: bold;
    	color: #ff547b;
	}
	
	
	/* 영화 개수 count area */
	#counting{
    display: inline-block;
    margin-left: 7px;
    color: #5f5f5f;
    margin-bottom: 35px;
    padding: 7px 0 0 0;
    width: 290px;
    font-size: 13px;
	}
	
	.main{
	    border: 1px dotted #c8c8c8;
	    padding: 41px 17px;
	    border-radius: 5px;
	    background-color: #fafafa;
	}
	
	#search_table_ri a{
		display: block;	
	}
	
	#search_table_ri a:nth-child(1){
		color: #3a3a3a;
		margin: 8px 0px 0px 0;
		font-size: 14px;
		font-weight: bold;
	}
	#search_table_ri > a:nth-child(2),#search_table_ri > a:nth-child(3),#search_table_ri > a:nth-child(4){
	    font-weight: 100;
	    font-size: 12px;
	    color: #8c8c8c;
	    margin: 4px 0;
	    padding-left: 4px;
	}
	#search_table_ri a:nth-child(5){
	    margin: 15px 0px 5px 0px;
	    color: #e02828;
	    font-size: 14px;
		font-weight: bold;
	}
	#search_table_ri a:nth-child(6){
	    overflow: hidden;
	    height: 82px;
	    -webkit-line-clamp: 5;
	    display: -webkit-box;
	    -webkit-box-orient: vertical;
	    font-size: 12px;
	    color: #717171;
	    margin-top: 2px;
	    padding-left: 4px;
		font-weight: bold;
	}
	
	
	
	
	
	
	
	
	
	
	
	#search_table{
	    border: 1px solid #d0d0d0;
	    border-left: none;
	    border-right: none;
	    width: 94%;
	    padding: 10px 6px;
	    margin: 0 auto;
	    border-collapse: collapse;
	}
	#search_table img{
		background-color: #d2d2d2;
	    padding: 20px 13px;
	}
	
	
	#search_table td{
		padding-right: 18px;
	    border-bottom: 1px solid #d0d0d0;
	    padding: 15px 7px;
	}
	
	#search_table th{
	    width: 100%;
	    text-align: left;
	    padding-left: 10px;
	    border-bottom: 1px solid #d0d0d0;
	}
	
	
	
	
	
 	
		/* 페이지네이션 */ 
	#paging ul{
		display: inline-block;
	}
	
	#paging li{
	    border: 1px solid #d7d5d5;
	    font-size: 12px;
	    color: #757575;
	    line-height: 59px;
	    width: 34px;
	    height: 34px;
	}
	
	
	.pagenation{
		text-align: center;
		clear: both;
		height: 35px;
		margin-top: 26px;
	}
	
	.pagenation a{
	    padding: 4px 8px;
	    border: 3px solid #d4d4d4;
	    background-color: #ffffff;
	    border-radius: 6px;
	    color: #111111;
	    border-top: 0.5px solid #d5ced8;
	    border-left: none;
	}
	
	.pagenation .active{
	    font-weight: bold;
	    padding: 4px 8px;
	    border: 3px solid #9b9b9b;
	    background-color: #ffffff;
	    border-radius: 6px;
	    color: #111111;
	    border-top: 0.5px solid #9b9b9b;
	    border-left: none;
	}
	 
	
	
	
	
	
	
	
	
	
	
	
	
	#search_table_le{
		display: inline-block;
	    vertical-align: 21px;
	    padding: 18px 14px 15px 14px;
	    background-color: #d2d2d2;
	    margin: 14px 0px 24px 0px;
	}
	#search_table_ri{
	    display: inline-block;
	    padding-left: 14px;
	    vertical-align: 11px;
	}
	
	#search_table2{
	    border-left: none;
	    border-right: none;
	    width: 94%;
	    padding: 10px 6px;
	    margin: 0 auto;
	    border-collapse: collapse;
	}
	
	#movie_list_box{
		border-top: 1px solid #bfbfbf;
	    padding-top: 10px;
	    padding-left: 11px;
	}


	#js-btn-wrap{
		text-align: right;
	}





	/* 영화, 영화인 선택 버튼 */
	#select_form{
	    padding-bottom: 9px;
	    display: inline-block;
	    float: right;
	}
	
	#actor_info{
		padding-left: 20px;
	    border-top: 1px solid #b0b0b0;
	    padding: 15px 0 1px 20px;
	    margin: 13px 0 0 0;
	    color: gray;
	}
	
	#actor_info > span:first-child{
	    display: block;
	    font-weight: bold;
	    color: blue;
	    padding-bottom: 6px;
	}
	#actor{padding: 15px 17px; margin-top: 16px;}
	
	#actor_info a:nth-child(3),#actor_info a:nth-child(4) {color: gray;}
	
	#actor_info a:nth-child(3):hover,#actor_info a:nth-child(4):hover{text-decoration-line: underline;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(window).on('load', function () {
	
    load('#movielist', '4');
    $("#js-btn-wrap .button").on("click", function () {
        load('#movielist', '10', '#js-btn-wrap');
    })
});
 
function load(id, cnt, btn) {
    var girls_list = id + " .js-load:not(.active)";
    var girls_length = $(girls_list).length;
    var girls_total_cnt;
    if (cnt < girls_length) {
        girls_total_cnt = cnt;
    } else {
        girls_total_cnt = girls_length;
        $('.button').hide()
    }
    $(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
}



$(document).ready(function(){
	$("#search_input_box").val("${keyword}");
	
	/* 영화 라디오박스 클릭시 */
	$("#movie").click(function(){
		$("#actor").css("display","none");
		$("#movielist").css("display","block");
	});
	/* 영화인 라디오박스 클릭시 */
	$("#movie_actor").click(function(){
		$("#actor").css("display","block");
		$("#movielist").css("display","none");
	});
	
	/* 전체 라디오박스 클릭시 */
	$("#movienactor").click(function(){
		$("#actor").css("display","block");
		$("#movielist").css("display","block");
	});
});
</script>
</head>
<body id="movie_search">
	<div id="movie_search_all">
		<div id="search_input">
		
			<!-- 서치area -->
			<div id="serch_input">
				<div id="serch_input_in">
					<select id="selectbox">
						<option value="1">전체
						<option value="2">제목별
						<option value="3">줄거리별
						<option value="4">장르별
						<option value="5">국가별
						<option value="6">배우별
					</select>
					<input id="search_input_box" placeholder="보헤미안 렙소디">
				</div>
			</div>
			
			<!-- 안내 text area -->
			<div id="Guid_text">
				<span>${keyword}</span><span>에 대한 검색 결과입니다.</span>
			</div>
			<c:forEach items="slist" var="slist">
			
			
			</c:forEach>
			<!-- 영화 개수 count area -->
			<div id="counting">
				<span>총</span>(<strong> ${slist.size()}</strong>)<span>개의 영화가 검색되었습니다.</span>
			</div>

			
		<!-- 영화 리스트 area -->
		  <div id="movielist" class="main">
		  
		    <ul class="lists" id="search_table2">
		      <c:forEach items="${slist}" var="slists">
			       <li class="lists__item js-load" id="movie_list_box">
					   		<div id="search_table_le">
								<a href="detailmovie.spoid?movieCd=${slists.movieCd}"><img src="${slists.poster}"></a>
							</div>
							<div id="search_table_ri">
						 		<a href="detailmovie.spoid?movieCd=${slists.movieCd}">${slists.kor_tit}</a>
						 		<fmt:parseDate var="open" value="${slists.openDt}" pattern="yyyy-MM-dd HH:mm:ss" />
								<fmt:formatDate var="openQuery" value="${open}" pattern="yyyy-MM-dd"/>
								<fmt:formatDate var="openDt" value="${open}" pattern="yyyy.MM.dd"/>
								<fmt:parseDate var="first" value="${slists.firstOpen}" pattern="yyyy-MM-dd HH:mm:ss" />
								<fmt:formatDate var="firstDt" value="${first}" pattern="yyyy.MM.dd"/>
			                        <p id="first_p">${slists.kor_tit}</p>
			                        <p>${slists.eng_tit}</p>
			                        <p>${slists.genre} | ${slists.grade} | ${openDt} 개봉
				                        <c:if test="${slists.firstOpen} != ${slists.openDt}">
											| ${firstDt} 재개봉
										</c:if>
			                        </p>
			                        <p>줄거리</p>
	                        		<p>${slists.story}</p>
                        	</div>
                        	
		      	  </li>
		      </c:forEach>
		      
		<%--       			<!-- 페이지넘기기 -->
					<div class="pagenation">
						<c:if test="${pageMaker.prev}">  
								<a href="★★★★★★★★★★★★?page=${pageMaker.startPage - 1}">&laquo;</a>
						</c:if>																
					
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							
							
								<a href="★★★★★★★★★★★★?page=${idx}&flag=${flag}&keyword=${keyword}&key=${code}" 
								<c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>${idx}</a> 
							
						</c:forEach>
						
						<c:if test="${pageMaker.next}">
								<a href="★★★★★★★★★★★★?page=${pageMaker.endPage + 1}">&raquo;</a>
						</c:if>															
					</div> --%>
		      
		      
		    </ul>
		    <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button">더보기</a> </div>
		  </div>
		  
		  
		  	
		  	
		  	<!-- 페이지넘기기 -->
			<div class="pagenation">
				<c:if test="${pageMaker.prev}">  
						<a href="★★★★★★★★★★★★?page=${pageMaker.startPage - 1}">&laquo;</a>
				</c:if>																
			
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					
					
						<a href="★★★★★★★★★★★★?page=${idx}&flag=${flag}&keyword=${keyword}&key=${code}" 
						<c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>${idx}</a> 
					
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
						<a href="★★★★★★★★★★★★?page=${pageMaker.endPage + 1}">&raquo;</a>
				</c:if>															
			</div>
		  </div>
	</div>

</body>
</html>
<%@ include file="include/footer.jsp" %>