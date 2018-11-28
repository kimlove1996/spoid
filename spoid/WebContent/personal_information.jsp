<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spoid personal Information</title>
<style type="text/css">
	#personal{
		margin: 0;
		padding: 0;
		outline: 0;
		text-decoration: none;
		list-style-type: none;
	}
	
	#title_text{
		font-size: 48px;
	    font-weight: bold;
	    color: #67a6b8;
	}
	
	#personal_text_all{
		margin: 0 auto;
  		width: 1000px;
		border: 1px solid lightgrey;
		border-radius: 100px;
	}
	
	#personal_text_top > span:nth-child(3) {
	    line-height: 92px;
	    color: #717171;
	}
	
	.text{
		margin-top: 50px;
	  	margin-left: 60px;
	}
	.text_li{
		list-style-type: disc;
		margin-top: 20px;
		margin-left: 40px;
		font-size: 14px;
	}
	
	.text_first{
		margin-top : 40px;
	}
	
	.text_hr{
		margin : 60px 0;
		width: 95%;
		margin-left : 0;
	}
</style>
<script type="text/javascript">

	$(document).ready(function() {
		
		
		var j =0;
		$("#detail_info").click(function(){
			if(j==0){
				$("#detail_content").css("display","block");
				$("#detail_span").text("▲");
				j=1;
			}else if(j==1){
				$("#detail_content").css("display","none");
				$("#detail_span").text("▼");
				j=0;
			}
		});
		
		
		
		var i = 0;
		$("#give_info").click(function(){
			if(i==0){
				$("#give_content").css("display","block");
				$("#give_span").text("▲");
				i=1;
			}else if(i==1){
				$("#give_content").css("display","none");
				$("#give_span").text("▼");
				i=0;
			}
		});
	});
</script>

</head>
<body id="personal" onload="load()">

	<div id="personal_all" style="margin: 124px auto 124px auto;">
		<div id="personal_text_top" style="text-align: center; margin-bottom: 70px;">
			<span id="title_text">개인정보약관</span><br>
			<span>개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리지침을 수립․공개합니다.</span>
		</div>
		
		<div id="personal_text_all">
			<div class="text">
				<h2>1. 개인정보처리방침의 의의</h2>
				<ul>
					<li class="text_li text_first"><strong>spoid</strong>가 어떤 정보를 수집하고, 수집한 정보를 어떻게 사용하며, 필요에 따라 누구와 이를 공유(‘위탁 또는 제공’)하며,<br>
													이용목적을 달성한 정보를 언제·어떻게 파기하는지 등 ‘개인정보의 한살이’와 관련한 정보를 투명하게 제공합니다.</li>    
					<li class="text_li">정보주체로서 이용자는 자신의 개인정보에 대해 어떤 권리를 가지고 있으며,<br>
										이를 어떤 방법과 절차로 행사할 수 있는지를 알려드립니다.</li>    
					<li class="text_li">개인정보 침해사고가 발생하는 경우, 추가적인 피해를 예방하고 이미 발생한 피해를 복구하기 위해<br>
										누구에게 연락하여 어떤 도움을 받을 수 있는지 알려드립니다.</li>    
					<li class="text_li">그 무엇보다도, 개인정보와 관련하여 <strong>spoid</strong>와 이용자간의 권리 및 의무 관계를 규정하여 <br>
										이용자의 ‘개인정보자기결정권’을 보장하는 수단이 됩니다.</li>    
				</ul>
				<hr class="text_hr">
				
				<h2>2. 수집하는 개인정보</h2>
				<h5 class="text_li">회원가입 시점에 <strong>spoid</strong>가 이용자로부터 수집하는 개인정보는 아래와 같습니다.</h5>
				<ul>
					<li class="text_li text_first">회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대폰번호’를 필수항목으로 수집합니다.<br>
										그리고 선택항목으로 이메일 주소를 수집합니다.</li>    
					<li class="text_li" id="detail"><div id="detail_info">회원 가입 시 수집하는 개인정보에 대한 추가 설명<span id="detail_span" style="margin-left: 10px;">▼</span></div></li>
				</ul>
				<div id="detail_content" style="margin: 20px 50px; padding: 10px 10px;border: 1px solid lightgrey; display: none;">
					<h4 style="margin: 0">(1) 필수항목과 선택항목의 차이</h4>
					<ul>
						<li class="text_li">필수항목이란 서비스의 본질적 기능을 수행하기 위해 필요한 정보이며, 선택항목이란 서비스 이용 자체에 <br>
											영향을 미치지는 않으나 이용자에게 부가적인 가치를 제공하기 위해 추가로 수집하는 정보입니다.<br>
											회원가입 시에 수집하는 아이디, 비밀번호는 로그인을 위하여 필요한 정보이며 이름, 생년월일은 회원제 서비스<br>
											운영에 따르는 이용자 구분을 위하여 사용됩니다.가입인증 휴대폰번호는 불법 광고 게시 등 부정한 목적으로 <br>
											회원가입을 시도하는 경우,이용제한 조치 등을 적용하기 위하여 수집합니다. <br>
											선택항목은 입력을 하지 않아도 회원 가입이나 서비스 이용에 제한이 없으며,<br>
											필요할 경우 ‘<strong>spoid</strong> 내정보 > 회원정보 > 연락처’에서 사후에 언제든지 직접 입력하실 수 있습니다.</li>    
					</ul>
				</div>
				<hr class="text_hr">
				
				<h2>3. 수집한 개인정보의 이용</h2>
				<h5 class="text_li">회원관리, 서비스 개발·제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.</h5>
				<ul>
					<li class="text_li text_first">회원 가입 의사의 확인, 연령 확인, 이용자 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 <br>
												     회원관리를 위하여 개인정보를 이용합니다.</li>    
					<li class="text_li">유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.</li>    
					<li class="text_li">이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.</li>    
					<li class="text_li">보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				<h2>4. 개인정보의 제공 및 위탁</h2>
				<h5 class="text_li"><strong>spoid</strong>는 원칙적으로 이용자 동의 없이 개인정보를 외부에 제공하지 않습니다.</h5>
				<ul>
					<li class="text_li text_first"><strong>spoid</strong>는 이용자의 사전 동의 없이 개인정보를 외부에 제공하지 않습니다. <br>
													단, 이용자가 외부 제휴사의 서비스를 이용하기 위하여 개인정보 제공에 직접 동의를 한 경우, 그리고 관련 법령에 의거해 <br>
													<strong>spoid</strong>에 개인정보 제출 의무가 발생한 경우, 이용자의 생명이나 안전에 급박한 위험이 확인되어<br>
													이를 해소하기 위한 경우에 한하여 개인정보를 제공하고 있습니다.</li>    
													
					<li class="text_li" id="give"><div id="give_info">개인정보 제공 및 위탁에 대한 추가 설명<span id="give_span" style="margin-left: 10px;">▼</span></div></li>
				</ul>
				
				<div id="give_content" style="margin: 20px 50px; padding: 10px 10px;border: 1px solid lightgrey; display: none;">
					<h4 style=" margin: 0; margin-top: 15px; ">(1) 개인정보 제공과 위탁의 차이</h4>
					<ul>
						<li class="text_li">개인정보의 제3자 제공은 제공받는 자의 업무 처리와 이익을 위하여 개인정보가 제공되는 것을 의미합니다. <br>
											개인정보가 제공된 이후에는 제공받는 자의 책임 하에 개인정보가 처리됩니다. <br>
											이런 이유로 개인정보의 제3자 제공을 위해서는 이용자에게 사전에 ‘개인정보를 제공받는 자, <br>
											개인정보를 제공받는 자의 개인정보 이용 목적, 제공하는 개인정보의 항목, 개인정보를 제공받는 자의 <br>
											개인정보 보유 및 이용 기간’에 대해 고지하고 동의를 받습니다. 개인정보의 처리위탁은 제공하는 자의 <br>
											업무 처리를 위하여 개인정보를 외부에 위탁하는 것을 의미합니다. <br>
											개인정보가 제공된 이후에도 개인정보를 제공한 자, <br>
											즉 위탁자에게 수탁 업체에 대한 관리/감독 책임이 발생합니다.</li>    
					</ul>
					
					<h4 style=" margin-top: 50px;">(2) 이용자 동의가 필요한 위탁업무와 공개/통지로 동의를 갈음할 수 있는 위탁업무</h4>
					<ul>
						<li class="text_li" style=" margin-bottom: 15px;">서비스 제공에 관한 계약을 이행하고 이용자 편의 증진 등을 위해 필요한 개인정보 처리위탁은 메일 등을 통해 <br>
											이용자에게 통지하거나 개인정보처리방침에 공개하는 것으로 동의를 갈음할 수 있습니다. <br>
											그 외에 개인정보 처리위탁에 대해서는 ‘수탁 업체, 위탁업무 내용’을 이용자에게 고지하고 <br>
											사전에 동의를 받아야만 합니다. <strong>spoid</strong>는 인프라 운영, 서비스 개발 및 테스트, 서비스 운영, 고객상담, <br>
											결제처리, 본인인증 등을 위한 개인정보 처리위탁을 개인정보처리방침에 공개하는 것으로 동의를 갈음합니다. <br>
											단, 서비스 프로모션 등을 위해 외부에 개인정보를 위탁하는 경우에는 사전에 이용자 동의를 받습니다.</li>    
					</ul>
					
				</div>
				
				
				<hr class="text_hr">
				
				
				<h2>5. 개인정보의 파기</h2>
				<h5 class="text_li">회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.</h5>
				<h6 class="text_li" style="margin-bottom: 90px;">참고로 <strong>spoid</strong>는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다.</h6>
				
				
				
				
			</div>
		</div>
		
	</div>

</body>
</html>
<%@ include file="include/footer.jsp" %>   