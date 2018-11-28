<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spoid Use Information</title>
<style type="text/css">
	#use{
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
	
	#use_text_all{
		margin: 0 auto;
  		width: 1000px;
		border: 1px solid lightgrey;
		border-radius: 100px;
	}
	
	#use_text_top > span:nth-child(3) {
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
<body id="use" onload="load()">

	<div id="use_all" style="margin: 124px auto 124px auto;">
		<div id="use_text_top" style="text-align: center; margin-bottom: 70px;">
			<span id="title_text">이용약관</span><br>
			<span>회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다</span>
		</div>
		
		<div id="use_text_all">
			<div class="text">
				<h2 style="margin-bottom: 45px;">여러분을 환영합니다.</h2>
				<h3>다양한 네이버 서비스를 즐겨보세요.</h3>
				<ul>
					<li class="text_li text_first">기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다. 다만,'청소년보호법'등 관련 법령이나<br>
													기타 개별 서비스 제공에서의 특별한 필요에 의해서 연령 또는 일정한 등급을 기준으로 이용자를 구분하여<br>
													제공하는 서비스의 내용, 이용 시간, 이용 횟수 등을 다르게 하는 등 일부 이용을 제한하는 경우가 있습니다.<br>
													자세한 내용은 역시 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인하실 수 있습니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				
				<h3>회원으로 가입하시면 네이버 서비스를 보다 편리하게 이용할 수 있습니다.</h3>
				<ul>
					<li class="text_li text_first">회원은 자신의 계정을 통해 좀더 다양한 네이버 서비스를 보다 편리하게 이용할 수 있습니다. <br>
													이와 관련한 상세한 내용은 계정 운영정책 및 고객센터 내 네이버 회원가입 방법 등에서 확인해 주세요.</li>    
				</ul>
				<hr class="text_hr">
				
				
				<h3>여러분이 제공한 콘텐츠를 소중히 다룰 것입니다.</h3>
				<ul>
					<li class="text_li text_first">네이버는 여러분의 생각과 감정이 표현된 콘텐츠를 소중히 보호할 것을 약속 드립니다. <br>
													여러분이 제작하여 게재한 게시물에 대한 지식재산권 등의 권리는 당연히 여러분에게 있습니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				
				<h3>여러분의 개인정보를 소중히 보호합니다.</h3>
				<ul>
					<li class="text_li text_first">네이버는 여러분이 서비스를 이용하기 위해 일정 기간 동안 로그인 혹은 접속한 기록이 없는 경우, 전자메일, <br>
													서비스 내 알림 또는 기타 적절한 전자적 수단을 통해 사전에 안내해 드린 후 여러분의 정보를 파기하거나<br>
													분리 보관할 수 있으며, 만약 이로 인해 서비스 제공을 위해 필수적인 정보가 부족해질 경우 부득이 관련<br>
													서비스 이용계약을 해지할 수 있습니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				<h3>타인의 권리를 존중해 주세요.</h3>
				<ul>
					<li class="text_li text_first">타인의 콘텐츠를 이용한다고 하여 여러분이 해당 콘텐츠에 대한 지식재산권을 보유하게 되는 것은 아닙니다. <br>
													여러분이 해당 콘텐츠를 자유롭게 이용하기 위해서는 그 이용이 저작권법 등 관련 법률에 따라 허용되는 범위 내에 있거나, <br>
													해당 콘텐츠의 지식재산권자로부터 별도의 이용 허락을 받아야 하므로 각별한 주의가 필요합니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				<h3>네이버에서 제공하는 다양한 포인트를 요긴하게 활용해 보세요.</h3>
				<ul>
					<li class="text_li text_first">네이버는 여러분이 네이버 서비스를 효율적으로 이용할 수 있도록 포인트를 부여하고 있습니다. <br>
													포인트는 여러분의 일정한 네이버 서비스 이용과 연동하여 네이버가 임의로 책정하거나 조정하여 지급하는 일정한 계산 단위를 갖는 <br>
													서비스 상의 가상 데이터를 말합니다. 포인트는 재산적 가치가 없기 때문에 금전으로 환불 또는 전환할 수 없지만, 포인트의 많고 <br>
													적음에 따라 여러분의 네이버 서비스 이용에 영향을 주는 경우가 있으므로 경우에 따라 적절히 활용해 보세요.</li>    
				</ul>
				<hr class="text_hr">
				
				
				<h3>네이버 서비스 이용과 관련하여 몇 가지 주의사항이 있습니다.</h3>
				<ul>
					<li class="text_li text_first">회원 가입 시 이름, 생년월일, 휴대전화번호 등의 정보를 허위로 기재해서는 안 됩니다.</li>    
					<li class="text_li">타인에 대해 직접적이고 명백한 신체적 위협을 가하는 내용의 게시물, 타인의 자해 행위 또는 자살을 부추기거나 권장하는<br>
										내용의 게시물, 타인의 신상정보, 사생활 등 비공개 개인정보를 드러내는 내용의 게시물, 타인을 지속적으로 따돌리거나<br>
										괴롭히는 내용의 게시물, 성매매를 제안, 알선, 유인 또는 강요하는 <br>
										내용의 게시물, 공공 안전에 대해 직접적이고 심각한 위협을 가하는 내용의 게시물은 제한될 수 있습니다.</li>    
					<li class="text_li">자극적이고 노골적인 성행위를 묘사하는 등 타인에게 성적 수치심을 유발시키거나 왜곡된 성 의식 등을 야기할 수 있는<br>
										내용의 게시물, 타인에게 잔혹감 또는 혐오감을 일으킬 수 있는 폭력적이고 자극적인 내용의 게시물, <br>
										본인 이외의 자를 사칭하거나 허위사실을 주장하는 등 타인을 기만하는 내용의 게시물, 과도한 욕설, <br>
										비속어 등을 계속하여 반복적으로 사용하여 심한 혐오감 또는 불쾌감을 일으키는 내용의 게시물은 제한될 수 있습니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				<h3>부득이 서비스 이용을 제한할 경우 합리적인 절차를 준수합니다.</h3>
				<ul>
					<li class="text_li text_first">네이버는 다양한 정보와 의견이 담긴 여러분의 콘텐츠를 소중히 다룰 것을 약속 드립니다만, <br>
													여러분이 게재한 게시물이 관련 법령, 본 약관, 게시물 운영정책, 각 개별 서비스에서의 약관, <br>
													운영정책 등에 위배되는 경우, 부득이 이를 비공개 또는 삭제 처리하거나 게재를 거부할 수 있습니다. <br>
													다만, 이것이 네이버가 모든 콘텐츠를 검토할 의무가 있다는 것을 의미하지는 않습니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				
				<h3>네이버의 잘못은 네이버가 책임집니다.</h3>
				<ul>
					<li class="text_li text_first">네이버는 여러분이 네이버 서비스를 이용함에 있어 네이버의 고의 또는 과실로 인하여 <br>
													손해를 입게 될 경우 관련 법령에 따라 여러분의 손해를 배상합니다. 다만, 천재지변 <br>
													또는 이에 준하는 불가항력으로 인하여 네이버가 서비스를 제공할 수 없거나 이용자의 고의 <br>
													또는 과실로 인하여 서비스를 이용할 수 없어 발생한 손해에 대해서 네이버는 책임을 부담하지 않습니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				
				<h3>언제든지 네이버 서비스 이용계약을 해지하실 수 있습니다.</h3>
				<ul>
					<li class="text_li text_first">네이버에게는 참 안타까운 일입니다만, 회원은 언제든지 네이버 서비스 이용계약 해지를 신청하여 <br>
													회원에서 탈퇴할 수 있으며, 이 경우 네이버는 관련 법령 등이 정하는 바에 따라 이를 지체 없이 처리하겠습니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				
				<h3>일부 네이버 서비스에는 광고가 포함되어 있습니다.</h3>
				<ul>
					<li class="text_li text_first">여러분이 다양한 네이버 서비스를 이용하다 보면 간혹 일부 개별 서비스에 광고가<br>
													포함된 경우가 있습니다. 네이버 서비스를 이용하면서 발생할 수 있는 데이터 통신요금은 가입하신 <br>
													통신사업자와의 이용계약에 따라 여러분이 부담하며, <br>
													포함된 광고 열람으로 인해 추가적으로 발생하는 비용 역시 여러분이 부담합니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				<h3>서비스 중단 또는 변경 시 꼭 알려드리겠습니다.</h3>
				<ul>
					<li class="text_li text_first">네이버는 연중 무휴, 1일 24시간 안정적으로 서비스를 제공하기 위해 최선을 다하고 있습니다만,<br>
													컴퓨터, 서버 등 정보통신설비의 보수점검, 교체 또는 고장, 통신두절 등 운영상 상당한 이유가<br>
													있는 경우 부득이 서비스의 전부 또는 일부를 중단할 수 있습니다.</li>    
				</ul>
				<hr class="text_hr">
				
				<h3>주요 사항을 잘 안내하고 여러분의 소중한 의견에 귀 기울이겠습니다.</h3>
				<ul>
					<li class="text_li text_first">네이버는 여러분의 소중한 의견에 귀 기울이겠습니다. 여러분은 언제든지 고객센터를 <br>
													통해 서비스 이용과 관련된 의견이나 개선사항을 전달할 수 있으며, 네이버는 합리적 범위 내에서<br>
													가능한 그 처리과정 및 결과를 여러분께 전달할 수 있도록 하겠습니다.</li>    
				</ul>
				<hr class="text_hr">
				
				
				
				<h3>여러분이 쉽게 알 수 있도록 약관 및 운영정책을 게시하며 사전 공지 후 개정합니다.</h3>
				<ul>
					<li class="text_li text_first">네이버는 본 약관의 내용을 여러분이 쉽게 확인할 수 있도록 서비스 초기 화면에 게시하고 있습니다.</li>
					<li class="text_li" style="margin-bottom: 90px;">네이버 서비스에는 기본적으로 본 약관이 적용됩니다만, 부득이 각 개별 서비스의 고유한 특성을 반영하기<br>
										위해 본 약관 외 별도의 약관, 운영정책이 추가로 적용될 때가 있습니다. 따라서 별도의 약관, 운영정책에서<br>
										그 개별 서비스 제공에 관하여 본 약관, 계정 및 게시물 운영정책과 다르게 정한 경우에는 별도의 약관, <br>
										운영정책이 우선하여 적용됩니다. 이러한 내용은 각각의 개별 서비스 초기 화면에서 확인해 주시기 바랍니다.</li>    
				</ul>
				
				
			</div>
		</div>
		
	</div>

</body>
</html>
<%@ include file="include/footer.jsp" %>   