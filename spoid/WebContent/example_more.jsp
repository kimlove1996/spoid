<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

/* 

#loading {
 width: 100%;  
 height: 100%;  
 top: 0px;
 left: 0px;
 position: fixed;  
 display: block;  
 opacity: 0.7;  
 background-color: #fff;  
 z-index: 99;  
 text-align: center; } 
  
#loading-image {  
 position: absolute;  
 top: 50%;  
 left: 50%; 
 z-index: 100; }


 */







.js-load {
    display: none;
}
.js-load.active {
    display: block;
}
.is_comp.js-load:after {
    display: none;
}
.btn-wrap, .lists, .main {
    display: block;
}









.main {
    max-width: 640px;
    margin: 0 auto;
}
.lists {
    margin-bottom: 4rem;
}
.lists__item {
    padding: 20px;
    background: #EEE;
}
.lists__item:nth-child(2n) {
    background: #59b1eb;
    color: #fff;
}
.btn-wrap {
    text-align: center;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

/* $(window).load(function() {    
    $('#loading').hide();  
});
 */




$(window).on('load', function () { // window(화면)가 load(page를 읽어오는 것)를 시작할 경우
    load('#js-load', '10'); // #js-load (none의 상태)에서#js-load인 id를 5개를 출력시켜준다.
    alert("10개가나왔슴다.");
    $("#js-btn-wrap .button").on("click", function () { // 더보기버튼을 클릭 시
        load('#js-load', '10', '#js-btn-wrap'); //더보기 버튼을 누를 시 #js-load id가 해당하는 것을 5개 보이게 한다.
    })
});
 
function load(id, cnt, btn) { // == #js-load', '5', '#js-btn-wrap
    var girls_list = id + " .js-load:not(.active)"; //활동하지 않는 태그들을 제외한 .js-load
    var girls_length = $(girls_list).length; // 활동할 태그(.js-load)의 개수
    alert("girls_length = " + girls_length);//(-- 50)
    var girls_total_cnt; // 총 개수를 세는 것
    if (cnt < girls_length) { // 셀개수가 활동할 태그 개수보다 적을 경우
        girls_total_cnt = cnt; // 해당 셀 개수 값을 집어 넣습니다.
        alert("if문탔음" + girls_total_cnt);//(10)
    } else { //만약 셀 개수와 활동할 태그의 수가 같아질 경우에는
        girls_total_cnt = girls_length; // 아직 활동하지 않은 개수의 길이(나머지들)를 집어넣습니다.
        alert("if문 못탐 girls_total_cnt = " + girls_total_cnt);//(10)
        $('.button').hide() // 더보기 버튼이 사라지며 끝납니다.
    }
    $(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
    // girls_total_cnt보다 작은 (활동하지 않는 태그들을 제외한 #js-load)들의 요소를 선택하여 active라는 클래스를 부여합니다.
}
</script>
</head>
<body>
<header>
<!-- <div id="loading">Loading...<img id="loading-image" src="img/slime/slime.svg" alt="Loading..." /></div> -->




  <h1>더보기(MORE) 버튼을 눌러 일정갯수의 리스트 더 보기</h1>
</header>
<div id="contents">
  <div id="js-load" class="main">
    <ul class="lists">
      <li class="lists__item js-load">test1</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test2</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test3</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test4</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test5</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test6</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test7</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test8</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test9</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test10</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test11</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test12</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test13</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test14</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test15</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test16</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test17</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test18</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test19</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test20</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test21</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test22</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test23</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test24</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
      <li class="lists__item js-load">test25</li>
      <li class="lists__item js-load">txttxttxttxttxttxt</li>
    </ul>
    <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button">더보기</a> </div>
  </div>
  <footer>
    <p>(C) <a href="https://nanati.me/">nanati.me</a> by nanati</p>
  </footer>
</body>
</html>