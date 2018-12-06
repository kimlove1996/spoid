<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieView</title>
<style type="text/css">

#MovieViewAll {
	width: 1920px;
	margin-top: 142px;
	background-color: #f0f0f0;
}

#movie_table {
	height: 150px;
	background-color: blue;
}


/* 영화상세정보 */
#mvtop_wrap{
	background-color: #a9a9a9ad;
}
#poster {
	width: 450px;
	display: inline-block;
}
#mv_info {
	border: 1px solid white;
	display: inline-block;
}
#info_table {
	border: 1px solid #d0d0d0;
	border-left: none;
	border-right: none;
	width: 94%;
	padding: 10px 6px;
	margin: 0 auto;
	border-collapse: collapse;
}

#info_table td{
	padding-right: 18px;
    border-bottom: 1px solid #d0d0d0;
    padding: 15px 200px;
}
#info_table  th{
	width: 100%;
    text-align: left;
    padding-left: 10px;
    border-bottom: 1px solid #d0d0d0;
}

/* 차트 */
#mvmid_wrap {
	height: 800px;
	background-color: #30a1c0;
}



/* 댓글 */
#mvbot_wrap {
	height: 800px;
	background-color: #eabe85;
	
}
</style>
</head>
<body id="MovieView">
<div id="MovieViewAll">
	<p>무비</p>
<div id="movie_table">
	
</div>
<article id="mvtop_wrap">
	<div class="wrap">
	<table id="info_table">
		<tbody>
			<tr>
				<td><img src="img/poster/movie_image (1).jpg" id="poster"></td>
				<th>
					<p>보헤미안 렙소디</p>
					<p>드라마 | 12세 관람가 | 2018.10.31 개봉 </p>
					<p>줄거리</p>
					<p>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”<br>
						공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ <br>
						 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. <br>
						 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 <br>
						 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 <br>
						 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. <br>
						 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 <br>
						 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… <br>
						 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, <br>
						 우리가 몰랐던 그들의 진짜 이야기가 시작된다!</p>
					<p></p>
				</th>
			</tr>
		</tbody>
	</table>
	</div>
</article>
<article id="mvmid_wrap">

</article>
<article id="mvbot_wrap">

</article>






</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>