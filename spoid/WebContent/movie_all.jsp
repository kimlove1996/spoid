<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#boxoffice_all{
	   /*  margin: 195px auto 120px auto; */
	    width: 85%;
	    padding: 142px;
	    background-color: #f0f0f0;
	}
	
	#js-load{
	    padding: 34px;
	    border: 1px dashed #c5c5c5;
	    box-shadow: #bfbfbf 7px 6px 5px -1px;
	    box-sizing: border-box;
	    width: 1617.55px;
	    /* height: 1200px; */
	    background-color: white;
	}
	
	/* 영화종류 자리*/
	#movie_text_top{
	    text-align: center;
	    margin: 0 auto 63px auto;
	    width: 313px;
	    font-size: 27px;
	    font-weight: bold;
	    color: #3d3d3d;
	}
	
	
	#movie_text_top > hr{
		border-color: #ff4363;
		transition: all 1s;
		width: 0px;
	}
	#boxoffice_line{
		width: 1547px;
	}
	
	
	#boxoffice_card{
		width: 256px;
		height: 373px;
		box-shadow: grey 5px 4px 6px 0px;
		display: inline-block;
		margin: 24px;
		transition: all 1.5s;
		transform:rotateY(180deg);
		vertical-align: middle;
	}
	
	#boxoffice_card_wrap:hover #boxoffice_card{background-color: #ff510e;}
	#boxoffice_card_wrap:hover img{padding: 9px;}
	#boxoffice_card_wrap:hover #boxoffice_card_label{display: block;}
	
	
	
	
	#boxoffice_card > img{
	    width: 256px;
	    height: 373px;
		box-sizing: border-box;
		transition: all 0.5s;
	}
	
	
	#boxoffice_card_label{
	    height: 120px;
	    width: 98%;
	    position: relative;
	    bottom: 129px;
	    background: linear-gradient(to bottom,#ffffff, #ffffffeb -10%, #ffffffbd 78%);
	    box-sizing: border-box;
	    padding: 5px;
	    border: 1px dotted #dedede;
	    margin: 0 auto;
	    display: none;
	    text-align: center;
	}
	
	#boxoffice_card_label > p{
	    margin: 0 0;
	    font-size: 12px;
	    text-align: center;
	    line-height: 22px;
	    color: #353535;
	    font-weight: bold;
	}
	#boxoffice_card_label > strong{
		color: #000000;
	    font-size: 80%;
	}











	/* 더보기 기능 관련 */
	.js-load {
	    display: none;
	}
	.js-load.active {
	    display: inline-block;
	}
	.btn-wrap, .lists, .main {
	    display: inline-block;
	}










</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">



$(window).on('load', function () { // window(화면)가 load(page를 읽어오는 것)를 시작할 경우
    load('#js-load', '10'); // #js-load (none의 상태)에서#js-load인 id의 5개를 출력시켜준다.
    /* alert("10개가나왔슴다."); */
    $("#js-btn-wrap .button").on("click", function () { // 더보기버튼을 클릭 시
        load('#js-load', '10', '#js-btn-wrap'); //더보기 버튼을 누를 시 #js-load id가 해당하는 것을 5개 보이게 한다.
    })
});
 
function load(id, cnt, btn) { // == #js-load', '5', '#js-btn-wrap
    var girls_list = id + " .js-load:not(.active)"; //활동하지 않는 태그들을 제외한 .js-load
    var girls_length = $(girls_list).length; // 활동할 태그(.js-load)의 개수
   /*  alert("girls_length = " + girls_length);//(-- 50) */
    var girls_total_cnt; // 총 개수를 세는 것
    if (cnt < girls_length) { // 셀개수가 활동할 태그 개수보다 적을 경우
        girls_total_cnt = cnt; // 해당 셀 개수 값을 집어 넣습니다.
       /*  alert("if문탔음" + girls_total_cnt);//(10) */
    } else { //만약 셀 개수와 활동할 태그의 수가 같아질 경우에는
        girls_total_cnt = girls_length; // 아직 활동하지 않은 개수의 길이(나머지들)를 집어넣습니다.
       /*  alert("if문 못탐 girls_total_cnt = " + girls_total_cnt);//(10) */
        $('.button').hide() // 더보기 버튼이 사라지며 끝납니다.
    }
    $(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
    // girls_total_cnt보다 작은 (활동하지 않는 태그들을 제외한 #js-load)들의 요소를 선택하여 active라는 클래스를 부여합니다.
}







 $(document).ready(function(){

	$(".mv_load").css("transform","rotateY(360deg)");
	$("#movie_text_top > hr").css("width","100%");
}); 
</script>
</head>
<body id="boxoffice">
<div id="boxoffice_all">

  <div id="js-load" class="main">
  			<div id="movie_text_top">
				<span>전체 영화</span>
				<hr>
			</div>
    <ul id="boxoffice_line" class="lists">
      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (1).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>
            <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (2).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (3).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (4).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (5).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (6).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (7).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (8).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (9).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (10).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>
           <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (1).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>
            <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (2).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (3).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (4).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (5).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (6).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (7).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (8).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (9).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>      <a href="#" id="boxoffice_card_wrap" class="lists__item js-load">
      				<div id="boxoffice_card" class="mv_load"> 
					<img src="img/poster/movie_image (10).jpg">
					<div id="boxoffice_card_label">
						<strong>신비한 동물사전 : 그린델왈드의 범죄</strong>
						<hr>
						<p>드라마, 모험 | 2012.07.05  개봉</p>
						<p>109분 | 한국 15세 | 관람가</p>
					</div>
				</div>
      </a>
    </ul>
    <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button">더보기</a> </div>
  </div>
</div>  
</body>
</html>
<%@ include file="include/footer.jsp" %>