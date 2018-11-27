<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
		background-color: #e9e9e9;
	    height: 89px;
	    width: 71%;
	    margin: 0 auto;
	    padding-top: 52px;
	    border-radius: 5px;
	}
	
	#serch_input_in{
		margin: 0 auto 0 auto;
	    width: 510px;
	}
	
	#selectbox{
		width: 143px;
	    height: 31px;
	    margin-right: 16px;
	    outline: 0px;
	}
	
	#search_input_box{
		width: 331px;
	    height: 25px;
	    outline: 0px;
	    padding-left: 10px;
	    border-radius: 3px;
	}
	
	/* 안내 text area */
	#Guid_text{
		font-size: 31px;
	    padding: 30px 0;
	    width: 1312.08px;
	    margin: 0 auto;
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
	    margin-left: 46px;
	    color: #200909;
	    border-top: 3px solid #e2e2e2;
	    margin-bottom: 35px;
	}
	
	#movielist{
	    border-top: 1px dotted #c8c8c8;
	    border-bottom: 1px dotted #c8c8c8;
	    padding: 41px 17px;
	    border-left: 1px dotted #c8c8c8;
	    border-right: 1px dotted #c8c8c8;
	}
	
	#movielist p{
		margin: 10px 0;
	}
</style>
</head>
<body id="movie_search">
	<div id="movie_search_all">
		<div id="search_input">
		
			<!-- 서치area -->
			<div id="serch_input">
				<div id="serch_input_in">
					<select id="selectbox">
						<option value="1">
						<option value="2">
						<option value="3">
					</select>
					<input id="search_input_box">
				</div>
			</div>
			
			<!-- 안내 text area -->
			<div id="Guid_text">
				<span>"선물"</span><span>에 대한 검색 결과입니다.</span>
			</div>
			
			
			<!-- 영화 리스트 area -->
			<div id="movielist">
			
			<!-- 영화 개수 count area -->
			<div id="counting">
				<span>총</span>(<strong> 10 </strong>)<span>개의 영화가 검색되었습니다.</span>
			</div>
			<!-- 영화개수 count area 끝 -->
			
			
			
				<table>
					<tr>
						<td>
							<img src="img/movie_image(1).jpg">
						</td>
						<th>
							<p>새오새오새오</p>
							<p>새오새오새오</p>
							<p>새오새오새오</p>
							<p>새오새오새오</p>
							<p>새오새오새오</p>
						</th>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>