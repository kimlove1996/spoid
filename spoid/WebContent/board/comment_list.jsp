<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css"></style>
<script type="text/javascript">


</script>

</head>
<body id="comment_body">
	<form action ="replyInsert.bizpoll" action="POST" name="frm_cmt" id="frm_cmt">
		<div class="comment_lay">
			<div class="comment_wrap">
				<div class="comment_header_bar">
					<span><i class="far fa-comment-dots"></i> 댓글 ${replyList.size()} 개</span>
				</div>
				<div class="comment_layout">
					
					<c:if test="${replyList.size() <= 0}">
						등록된 댓글이 없습니다. 댓글을 등록해주세요	
					</c:if>
					<ul>
						<c:forEach items="${replyList}" var = "replyview" varStatus="status">
							
							<li class="comment_li">
								<div class="comment">
									<div class="comment_header">
									
											<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
											<fmt:formatDate value="${replyview.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
											
											<span class="c_writer">
												${replyview.writer}
											</span>
											<c:if test="${sessionScope.loginUser.id == replyview.writer}">
												<div class="comment_btn" id="test">
													<input type="hidden" value="${replyview.content}" name="origin_cont" class="origin_cont">
													<a href="#" data_num = "${replyview.rno}" id="r_update"><i class="fas fa-pen-alt">수정</i></a>
													<a href="#" data_num = "${replyview.rno}" id="r_delete" ><i class="fas fa-trash-alt" >삭제</i></a>
			
												</div>
											</c:if>
										<div class="crl_both"></div>
									</div>
									<div class="comment_content">
										<span class="comment_txt">${replyview.content}</span>
										
									</div>
									<span class="c_date">
										<c:choose>
												<c:when test="${today2==regdate2}">
													<fmt:formatDate pattern="HH:mm:ss" value="${replyview.regdate}"/>
												</c:when>
												<c:otherwise>
													<fmt:formatDate pattern="yyyy-MM-dd" value="${replyview.regdate}"/>
												</c:otherwise>
										</c:choose>
									</span>	
								</div>
							</li>	

					
						</c:forEach>			
					</ul>
				</div>
			</div>
			<div class="write_comment">
					  <c:choose>
							<c:when test="${empty sessionScope.loginUser}">
								<a href="login.bizpoll" class="c_write_btn">회원만 댓글 쓰기가 가능합니다.</a>		
							</c:when>
							<c:otherwise>
								<textarea rows="" cols="" class="cmt_txt" placeholder="댓글을 입력해주세요." name="cmt_txt"></textarea>	
								<a href="#" class="c_write_btn">등록</a>						
								<input type="hidden" name="cmt_writer" value="${sessionScope.loginUser.id}">
								<input type="hidden" name="cmt_bno" id="cmt_bno">
								<input type="hidden" name="cmt_cnt" id="cmt_cnt" value="${replyList.size()}"> 
							</c:otherwise>
						</c:choose>	
			</div>
			<div class="update_comment" style="display:none" id="">
				<textarea rows="" cols="" class="cmt_txt2" placeholder="댓글을 입력해주세요." name="cmt_txt2"></textarea>	
				<a href="#" class="c_update_btn cu_btn">수정</a>
				<a href="#" class="cu_close_btn cu_btn">취소</a>						
			    <input type="hidden" name="cmt_writer2" value="${sessionScope.loginUser.id}">
				<input type="hidden" name="cmt_bno2" id="cmt_bno2">
				<input type="hidden" name="cmt_cnt2" id="cmt_cnt2" value="${replyList.size()}"> 
				<input type="hidden" name="cmt_rno2" id="cmt_rno2" >
												
			</div>



		</div>	
	</form>	
</body>
</html>