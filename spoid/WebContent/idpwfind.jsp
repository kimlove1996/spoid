<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%
	String referer = request.getHeader("referer");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spoid id/pw find</title>
<script type="text/javascript">
	$(document).ready(function(){
		
		$(".inputidpw").focus(function(){
			$(this).css("background-color","#e5f3ff").css("transition", "all 1s");
		});
		$(".inputidpw").blur(function(){
			$(this).css("background-color","white").css("transition", "all 1s");
		});
		
	});
</script>

<style type="text/css">
	
     
     #login_all{
	    margin: 0 auto;
	    width: 730px;
	    height: 500px;
	    border: 7px double #30a1c07d;
	    background-color: white;
	    border-radius: 30px;
	    margin-top: 190px;
	    padding: 25px 29px;
     }
     
     
     /* 로고 */
     #logo{
		width: 115px;
	    margin: 0 auto;
	    height: 54px;
     }
     
     #logo_img{
	    text-align: center;
	    font-size: 55px;
     }
     
     
     /* 아이디/비밀번호 인풋 */
     #insert_idpw{
     	display: block;
     	margin-top: 70px;
     	padding-left: 25px;
     	border-radius: 5px;
     }
     
     #insert_idpw > div:not(#login_err_check){
     	display: inline-block;
     }
     
     .insert_text{
		font-size: 32px;
	    padding-right: 10px;
	    font-weight: bold;
	    color: #8ac0ba;
     }
     #inputpw {
     	letter-spacing: 5px;
     }
     .inputidpw{
	    width: 350px;
	    height: 28px;
	    border: none;
	    border-bottom: 3px solid #bacbd1;
	    padding: 3px 10px 0px 11px;
	    outline: 0px;
	    border-radius: 5px;
     	font-size: 19px;
    	font-weight: bold;
    	vertical-align: 4px;
     }
     
     #insert_pw{
     	padding-top: 60px;
     }
     
    
	
	/* 힌트텍스트와 박스 */
	#hint_box{
	    margin: 20px 80px;
	}
	#hint_box select{
		height: 30px;
	    width: 300px;
	    margin-bottom: 28px;
	    font-weight: bold;
	    outline: 0;
	}
	
	#hint_box input{
		outline: 0px;
	    width: 450px;
	    height: 28px;
	    border: none;
	    border-bottom: 3px solid #338298;
	    padding-left: 8px;
	    font-size: 17px;
	    border-radius: 5px;
	}
	
	
	.hint{
		font-size: 18px;
	    color: #464646;
	}
	.error{
		font-size: 10px;
	    color: red;
	    display: none;
	}
	.login_btn {
		width: 100px;
	    height: 46px;
	    margin-top: 40px;
	    border: 1px solid #d4d4d4;
	    border-radius: 3px;
	    font-size: 16px;
	    line-height: 18px;
	    background-color: #d4d4d4;
	    color: #777;
	    margin: 7% 45% 4% 42%;
	    cursor: pointer;
	}
	.login_btn:hover {
		border: 1px solid #ffa84f;
	    background-color: #ffb263;
	    color: #474747;
	    font-weight: bold;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
	
	$("#inputid").blur(function(){
		var inputval = $(this).val();
		if(inputval == ""){
			$(this).next().css("display", "block");
		}else {
			$(this).next().css("display", "none");
		}
	});
	
	$("#input_answer").blur(function(){
		if($("#input_answer").val() == ""){
			$(this).next().css("display","block");
		}
	});
		 /* Ajax사용할 아이디 블러 */
		$("#inputid").blur(function(){
				/* id값 받아오기 */
			var idVal = $(this).val();
			var mid= $(inputid);
				
			/* 유효검사를 통해 아이가 null인 경우를 실행했으니, null이 아닌경오 Ajax를 실행하겠다는 코드 */
			if(idVal != ""){
				$.ajax({
					url: "idCheck.spoid",
					type: "POST",
					dateType: "json",
					data: "id="+ idVal,
					success: function(data) {
						if(data.message == "-1"){
						} else {
							$("#inputid").next().text("현재 없는 아이디입니다.").css("display", "block").css("color", "#F46665");
						}
							
					},
					error: function() {
						alert("SYSTEM ERROR");
					}
						
				});
			}
				
		});
	
	 $("#hint_next").click(function(){
		 alert("연결");
		 var id = $("#inputid").val();
		 var hint1 = $("#hint_flag").val();
		 var hint2 = $("#input_answer").val();
		 var pw = null;
		 /* 유효성 체크 */
		if(id != "" && hint2 !=""){
					$.ajax({
						url: "IdPwFind.spoid",
						type: "POST",
						dataType: "json",
						data: "id="+id+"&hint1="+hint1+"&hint2="+hint2,
						success: function(data) {
							if(data.message =="1"){
								alert("비밀번호는 "+data.pw+" 입니다.");
								alert("비밀번호를 수정해주십시오.");
								location.href="memberupdate.spoid";
							}else {
								$(".error").css("display","block");
								$(".error").text("ID와 Hint값이 일치하지않습니다.");
								return false;
							}
						},
						error:function(){
							$(".error").css("display","block");
							$(".error").text("ID와 Hint값이 일치하지않습니다.");
							return false;
						}
						
					});
			}else{
				$("#login_err_check").css("display","block");
				return false;
			}
	 });
	 
	 
	 
	});
</script>
</head>
<body onload="load()">
    
     <div id="login_all">
	     <div id="logo">
	     	<span id="logo_img">LOGO</span>
	     </div>
	     
	     <div id="insert_idpw">
		     <div id="insert_id">
		     	<span class="insert_text" style="padding-right: 27px">ID </span>
		     	<input type="text" name="inputid" id="inputid" class="inputidpw">
				<span class="error" style="padding-left: 18%">필수 정보입니다.</span>
		     </div>
		     	<span class="insert_text" style="margin-top: 20px;display: block">Hint </span>
		     <div id="hint_box">
				<div id="hint1" class="hint">
					<select id="hint_flag">
						<option value="1">내가 살던 동네 이름은?</option>
						<option value="2">내 부모님 성함은?</option>
						<option value="3">어렸을적 내 별명은?</option>
					</select>
				</div>
					<input id="input_answer" name="input_answer" placeholder="ex)오치동" class="input_color insert_answer" value="${sessionScope.loginUser.hint2}">
					<span class="error" style="padding-left: 2%">필수 정보입니다.</span>
			</div>	
				<input type="button" value="확인" class="login_btn" id="hint_next">
			
		 </div>
		     
	  </div>
	     
	     
     
<%-- <%@ include file="include/footer.jsp" %> --%>
</body>
</html>