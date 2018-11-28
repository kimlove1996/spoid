<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#team_introduce{
		margin: 0;
		padding: 0;
		outline: 0;
		text-decoration: none;
		list-style-type: none;
	}
	
	
	#team_introduce_all{margin: 124px auto 124px auto;}
	
	/* Who We Are? 텍스트*/
	#introduce_text_top{
		text-align: center;
	}
	
	#introduce_text_top > span:nth-child(3){
		line-height: 92px;
	    color: #717171;
	}
	#introduce_text{
		font-size: 48px;
	    font-weight: bold;
	    color: #67a6b8;
	}
	
	
	
	/* 소개 area */
	
	.each_l{
		width: 500px;
		clear: both;
	}
	.each_r{
		width: 500px;
		float: right;
	}
	
	.each_l .introduce_ment{
	    float: left;
	    margin-left: 182px;
	    margin-top: 68px;
	}
	.each_r .introduce_ment{
	    float: right;
	    margin-right: 182px;
	    margin-top: 68px;
	}
	
	
	
	
	
	
	
	#each_produce_in{
	    width: 1903px;
	    margin: 105px auto 0 auto;
	}
	
	#name_Bar{border: 4px solid lightgrey;}
	
	.each_l > p{
		font-size: 31px;
	    margin-bottom: 10px;
	    font-weight: bold;
	    color: #ffa951;
	    margin-right: 20px;
	    text-align: right;
	}
	.each_r > p{
		font-size: 31px;
	    margin-bottom: 10px;
	    font-weight: bold;
	    color: #ffa951;
	    margin-left: 20px;
	    text-align: left;
	}
	
	
	
	
	
	
	.produce_box{
		margin: 24px 39px;
		
	}
	
	
	/* 각각 소개 테두리 색 */
	#produce_box01{background-color: #ffe4e4;}
	#produce_box02{background-color: #e0dfff;}
	#produce_box03{background-color: #fffed9;}
	#produce_box04{background-color: #dafccf;}
	#produce_box05{background-color: #e0f2fc;}
	
	
	
	.box_l{
	    display: inline-block;
	    width: 790px;
	    border-radius: 5px 154px 154px 5px;
	    padding: 25px 41px 25px 0px;
	    background-color: gray;
	}
	
	.box_r{
	    display: inline-block;
	    width: 790px;
	    border-radius: 5px;
	    float: right;
	    border-radius: 145px 5px 5px 154px;
	    padding: 25px 0px 25px 41px;
	    background-color: gray;
	}
	
	/* 슬라임 이미지 관련 */
	.slime_car{
		display: inline-block;
		float: left;
	}
	
	.slime_car > img{
		width: 248px;
	    border-radius: 139px;
	    border: 4px double #ede0e0;
		background-color: white;
	}
	
	.introduce_ment{
		display: inline-block;
		text-align: center;
	}
	
	.introduce_ment > p:nth-child(1){
		font-weight: bold;
	    padding-bottom: 5px;
	    border-bottom: 3px solid gray;
	    margin: 8px auto;
	    width: 66px;
	}
	
	.introduce_ment > p:nth-child(1) {
	    font-weight: bold;
	    padding-bottom: 5px;
	    border-bottom: 3px solid gray;
	    margin: 8px auto;
	    width: 66px;
	}

	.introduce_ment > p:nth-child(4) {
	    display: inline-block;
	    margin-top: 36px;
	    font-weight: bold;
	    color: #ff4061;
	}
	
	.introduce_ment > span:nth-child(5){
		color: #6f7471;
	    font-weight: bold;
	    font-size: 14px;
	}
	
	
	.ment1{
		font-size: 14px;
	    color: #58585a;
	    font-weight: bold;
	}
	
	.car_r{float: right;}
	.car_l{float: left;}
	
</style>

</head>
<body id="team_introduce" onload="load()">
	<div id="team_introduce_all">
		<div id="introduce_text_top">
			<span id="introduce_text">Who We Are?</span><br>
			<span>: 영화의 흥행추이 및 관람/비관람객들이 현 영화의 현황 등을 더욱 투명하고 명확한 정보를 전달할 수 있도록 목표를 두고 있는 <strong>Spoid's Slime(spoid)팀</strong>입니다.</span>
		</div>
		
		<div id="each_produce_in">
			<div id="each_produce01" class="each_produce each_l">
				<p>정미혜</p>
				<hr id="name_Bar">
				
				<div id="produce_box01" class="produce_box box_l">
					<!-- 슬라임 이미지 -->
					<div id="slime_car01" class="slime_car car_r">
						<img src="img/slime/score4.png">
					</div>
					
					<div class="introduce_ment">
						<p>역할</p>
						<span class="ment1">슬라임 저작권자</span><br>
						<p>한마디  : </p>
						<span class="ment2">" 병가로 불참 "</span>
					</div>
				</div>
			</div>
			
			
			
			
			
			
			
			
			
			
			
			
			<div id="each_produce02" class="each_produce each_r">
				<p>장소희</p>
				<hr id="name_Bar">
			
				<div id="produce_box02"  class="produce_box box_r">
					<!-- 슬라임 이미지 -->
					<div id="slime_car02" class="slime_car car_l">
						<img src="img/slime/score1.png">
					</div>
					<div class="introduce_ment">
						<p>역할</p>
						<span class="ment1">디자인, 소스 관련 제작</span><br>
						<p>한마디  : </p>
						<span class="ment2">" 뚜쉬뚜쉬 "</span>
					</div>	
				</div>
			</div>
			
			
			
			
			
			
			
			
			
			<div id="each_produce03" class="each_produce each_l" >
				<p>정수아</p>
				<hr id="name_Bar">
			
				<div id="produce_box03" class="produce_box box_l">
					<!-- 슬라임 이미지 -->
					<div id="slime_car03" class="slime_car car_r">
						<img src="img/slime/score5.png">
					</div>
					<div class="introduce_ment">
						<p>역할</p>
						<span class="ment1">디자인, 소스 관련 제작</span><br>
						<p>한마디  : </p>
						<span class="ment2">" 킹리적갓심 "</span>
					</div>
				</div>
			</div>
			
			
			
			
			
			
			
			
			
			
			<div id="each_produce04" class="each_produce each_r" >
				<p>김성위</p>
				<hr id="name_Bar">
			
				<div id="produce_box04" class="produce_box box_r">
					<!-- 슬라임 이미지 -->
					<div id="slime_car04" class="slime_car car_l">
						<img src="img/slime/score3.png">
					</div>
					<div class="introduce_ment">
						<p>역할</p>
						<span class="ment1">디자인, 소스 관련 제작</span><br>
						<p>한마디  : </p>
						<span class="ment2">" 시*인생 "</span>
					</div>
				</div>
			</div>
			
			
			
			
			
			
			
			
			
			
			
			<div id="each_produce05" class="each_produce each_l">
				<p>최지원</p>
				<hr id="name_Bar">
			
				<div id="produce_box05" class="produce_box box_l">
					<!-- 슬라임 이미지 -->
					<div id="slime_car05" class="slime_car car_r">
						<img src="img/slime/score2.png">
					</div>
					<div class="introduce_ment">
						<p>역할</p>
						<span class="ment1">디자인, 소스 관련 제작</span><br>
						<p>한마디  : </p>
						<span class="ment2">" 취직런 "</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>    