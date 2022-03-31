<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<div class="notice-list-print">
		<div class="notice-list-title">
			<div>
				<span>${faq.noticeServiceTitle}</span>
			</div>
		</div>
		
		<%--게시글 내용 출력 --%>
		<div class="panel panel-default">
		    <div class="panel-body" id="restNoticeListDiv" style="height: 400px;">
		    	${faq.noticeServiceContent}
		    </div>
		</div>
		
		<div style="text-align: right;">
			<c:if test="${loginUserinfo.memberStatus==9}">
				<button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/faq/modify"/>';">수정</button>
				<button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/faq/remove"/>/${faq.noticeServiceNo }';">삭제</button>
			</c:if>
		</div>
		
	</div>
</div>
<script language="JavaScript">
	function noticeRemove(num) {
		if (confirm("정말로 삭제 하시겠습니까?")) {
			location.href = '<c:url value="/faq/remove/"/>${faq.noticeServiceNo}';
		}
	}
</script>
	