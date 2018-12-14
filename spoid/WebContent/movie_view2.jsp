<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieView</title>
<style type="text/css">
html {
     scroll-behavior: smooth;
}
body#header_body{
     background-color: #f7f9fa;
}
#header_wrap{
     background-color: white;
}
#Movie_bar {
     position: fixed;
     width: 100%;
     background-color: white;
     top: 0;
     margin-top: 100px;
}
#MovieViewAll {
     margin: 0;
     margin-top: 100px;
     /* background-color: #f0f0f0; */
}
#movie_table {
     height: 60px;
     background-color: #dedef1;
     margin-top: 48px;
}
#movie_table > ul >li {
     float: left;
    padding: 15px;
    padding-top: 10px;
    cursor: pointer;
}
#movie_table > ul >li:hover{
    text-decoration: underline;
}
#movie_table > ul > li > a {
     text-decoration: none;
     color: #4a4a4a;
     font-size: 25px;
     font-weight: bold;
}
/* 상단 영화명 */
#movie_name{
    text-align: center;
    font-size: 30px;
    font-weight: bold;
    color: #4a4a4a;
    margin: 0;
}
#movie_table > ul{
     width: 427px;
    margin: 0 auto;
    height: 60px;
}
#movie_name_underline{
     margin: 7px auto 11px auto;
    width: 20%;
    border: 3px solid #6db9ce;
}
/* 영화상세정보 */
#mvtop_wrap{
    background-color: #f7f9fa;
    /* height: 700px; */
    margin-top: 261px;
    /* margin-bottom: 51px; */
    padding-bottom: 10px;
}
#mvtop_wrap > h2 {
    padding: 0 0 0 20px;
    margin: 0;
    line-height: 2;
}
.wrap{
     padding-top: 50px;
}
#poster {
    width: 350px;
    display: inline-block;
    border-radius: 10px;
    padding: 4px;
    border: 2px solid #dedeef;
}
#mv_info {
     margin-top: 70px;
     border: 1px solid white;
     display: inline-block;
}
#info_table {
     width: 94%;
     padding: 10px 6px;
     margin: 0 auto;
     border-collapse: collapse;
}
#first_p{
    color: #137a96;
    font-size: 22px;
    border-top: 1px solid gray;
    border-bottom: 1px solid gray;
    padding: 5px 0 9px 0px;
    margin: 15px 0;
}
#info_table p:nth-child(2){
    padding-left: 3px;
    margin: 4px 0;
    color: #4c4c4c;
    font-size: 15px;
}
#info_table p:nth-child(3){
    padding-left: 3px;
    margin: 4px 0;
    color: #4c4c4c;
    font-size: 15px;
}
#info_table p:nth-child(4){
    padding-left: 3px;
    margin: 4px 0;
    color: #4c4c4c;
    font-size: 15px;
}
#info_table p:nth-child(5){
    padding-left: 0px;
    padding-bottom: 5px;
    margin: 31px 0 4px 0;
    color: #ff8337;
    font-size: 18px;
    text-align: left;
}
#info_table p:nth-child(6){
    padding-left: 3px;
    margin: 0;
    color: #2b2b2b;
    /* background-color: #636363; */
    font-size: 14px;
    padding: 9px;
    border: 1px dotted #d4d4d4;
    border-radius: 9px;
    line-height: 24px;
}
#info_table td{
     padding-left: 2%;
}
#info_table  th{
     width: 100%;
    text-align: left;
    padding-right: 2%;
    padding-left: 6%;
}
#mvtop_border {
    width: 1200px;
    margin: 0 auto;
    border: 2px solid #dedeef;
    border-radius: 50px;
    height: 600px;
    background-color: white;
     margin-top: 45px;
}
/* 차트 */
#mvmid_wrap {
     height: 800px;
     background-image: url("img/background_dott.PNG");
     background-color: #dfe5fb;
}
#mvmid_wrap > h2 {
    padding: 0;
    margin: 0;
    line-height: 2;
}
/* 댓글 */
#mvbot_wrap {
     height: 800px;
     background-color: #f7f9fa;
     margin: 0;
}
#mvbot_wrap > h2 {
    padding: 0;
    margin: 0;
    line-height: 2;
}
#spoid_score {
     width: 410px;
    height: 100px;
    margin: 0 auto;
    margin-top: 10%;
}
.spoid {
     width: 100px;
     height: 100px;
     border: 1px solid #dedef1;
     border-radius: 100%;
     margin: 0 50px;
     background-color: white;
}
#D_spoid {
     display: inline-block;
     background-image: url("img/slime/score5.svg");
     background-repeat: no-repeat;
     background-size: 100px;
}
#N_spoid {
     display: inline-block;
     background-image: url("img/slime/score3.svg");
     background-repeat: no-repeat;
     background-size: 100px;
}
#mvbot_border {
     width: 1200px;
    margin: 0 auto;
    margin-top: 70px;
    border: 2px solid #dedef1;
    border-radius: 50px;
    height: 600px;
}
#reply_table{
     padding-top: 2%;
    text-align: left;
    margin: 0 auto;
}
#google_trends {
     height: 366px;
    width: 600px;
    display: inline-block;
    padding: 25px;
}
#google_upload {
    width: 600px;
    display: inline-block;
    vertical-align: 5px;
    padding: 25px;
}
#google_chart{
    padding: 69px;
    width: 1460px;
    margin: 40px auto;
    border: 8px double #d6d6d6;
    background-color: gray;
    box-sizing: border-box;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
     $("#mvtop_cl").click(function(){
          $("#mvtop_cl").css("color","#6db9ce");
          $("#mvtop_wrap > h2").css("color","#6db9ce");
          $("#mvmid_cl").css("color","#4a4a4a");
          $("#mvmid_wrap > h2").css("color","#4a4a4a");
          $("#mvbot_cl").css("color","#4a4a4a");
          $("#mvbot_wrap > h2").css("color","#4a4a4a");
     });
     
     $("#mvmid_cl").click(function(){
          $("#mvmid_cl").css("color","#6db9ce");
          $("#mvmid_wrap > h2").css("color","#6db9ce");
          $("#mvtop_cl").css("color","#4a4a4a");
          $("#mvtop_wrap > h2").css("color","#4a4a4a");
          $("#mvbot_cl").css("color","#4a4a4a");
          $("#mvbot_wrap > h2").css("color","#4a4a4a");
          
     });
     
     $("#mvbot_cl").click(function(){
          $("#mvbot_cl").css("color","#6db9ce");
          $("#mvbot_wrap > h2").css("color","#6db9ce");
          $("#mvmid_cl").css("color","#4a4a4a");
          $("#mvmid_wrap > h2").css("color","#4a4a4a");
          $("#mvtop_cl").css("color","#4a4a4a");
          $("#mvtop_wrap > h2").css("color","#4a4a4a");
          
     });
     
     
});
</script>
</head>
<body id="MovieView">
<div id="MovieViewAll">
<div id="Movie_bar">
     <p id="movie_name">Detail information</p>
     <hr id="movie_name_underline">
<div id="movie_table">
     <ul>
          <li><a id="mvtop_cl" onclick="$('html, body').stop().animate({scrollTop : '0'});">상세내용</a></li>
          <li><a id="mvmid_cl" onclick="$('html, body').stop().animate({scrollTop : '700'});">차트그래프</a></li>
          <li><a id="mvbot_cl" onclick="$('html, body').stop().animate({scrollTop : '1500'});">댓글분석</a></li>
     </ul>
</div>
</div>
<article id="mvtop_wrap">
<h2>상세 내용</h2>
<hr style="border: 1px solid #dedeef;">
<div id="mvtop_border">
     <div class="wrap">
     <table id="info_table">
          <tbody>
              <tr>
                   <td><img src="img/poster/movie_image (10).jpg" id="poster"></td>
                   <th>
                        <p id="first_p">보헤미안 렙소디</p>
                        <p>드라마 | 미국 | 12세 관람가 | 2018.10.31 개봉 </p>
                        <p>감독 : 워렌버핏</p>
                        <p>출연자 : 조이안나 필렛 스머트 그린 왈드</p>
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
                   </th>
              </tr>
          </tbody>
     </table>
     </div>
</div>
</article>
<article id="mvmid_wrap">
     <h2>차트 그래프</h2><hr style="border: 1px solid #cccccc;">
     <div id="google_chart">
          <div id="google_trends">
              <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/1671_RC03/embed_loader.js"></script>
              <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"보헤미안","geo":"KR","time":"today 12-m"}],"category":0,"property":""}, {"exploreQuery":"geo=KR&q=%2Fg%2F11c5m5019b&date=today 12-m","guestPath":"https://trends.google.co.kr:443/trends/embed/"}); </script>
          </div>
          <div id="google_upload">
              <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/1671_RC03/embed_loader.js"></script>
              <script type="text/javascript"> trends.embed.renderExploreWidget("RELATED_TOPICS", {"comparisonItem":[{"keyword":"보헤미안","geo":"KR","time":"today 12-m"}],"category":0,"property":""}, {"exploreQuery":"geo=KR&q=%2Fg%2F11cp7f65yr&date=today 12-m","guestPath":"https://trends.google.co.kr:443/trends/embed/"}); </script>
     </div>
     </div>
</article>
<article id="mvbot_wrap">
<h2>댓글 분석</h2><hr style="border: 1px solid #dedef1;">
<div id="mvbot_border">
     <div id="spoid_score">
     <div id="N_spoid" class="spoid"></div>
     <div id="D_spoid" class="spoid"></div>
     </div>
     <table id="reply_table">
          <tbody>
              <tr>
                   <th>네이버</th>
                   <th>다음</th>
              </tr>
              <tr>
                   <td>"최곤가?"</td>
                   <td>"재밌었다"</td>
              </tr>
          </tbody>
     </table>
</div>
</article>
</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>