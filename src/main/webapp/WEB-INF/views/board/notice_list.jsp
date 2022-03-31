<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- handlebars 라이브러리 : JSON 형식으로 표현된 JavaScrit 객체를 전달받아 HTML 태그로 변환하는
기능을 제공하는 자바스크립트 템플릿 라이브러리 --%>
<%-- => https://cdnjs.com 사이트에서 handlebars 라이브러리를 검색하여 JSP 문서에 포함 --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<style type="text/css">
.notice-list-print {
	width: 100%;
}


.notice-list-title {
    font-weight: 400;
    text-transform: uppercase;
    padding: 14px 10px;
}

.notice-list-title {
    color: #fff;
    background-color: #556b8d;
    border-color: #556b8d;
}

.notice-list-title {
    padding: 10px 15px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
}

</style>

<div class="container">
	<div style="text-align: right;">
		<c:if test="${loginUserinfo.memberStatus==9}">
				<button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/notice/write"/>';">작성</button>
		</c:if>
	</div>
	<div class="notice-list-print">
		<div class="notice-list-title">
			<h3 class="panel-title"><strong>공지사항</strong></h3>
		</div>
		
		<%--게시글 목록 출력 --%>
		<div class="panel panel-default">
		    <div class="panel-body" id="restNoticeListDiv"></div>
		</div>
		<%-- 페이지 번호 출력 --%>
		<div class="panel panel-default">
		    <div class="panel-body"id="pageNumDiv">
		    </div>
		</div>
	</div>
</div>
<%-- handlebars 템플릿 코드 작성 >> HTML --%>
<%-- => {{#each}} 표현식을 사용하여 Array 객체에 대한 반복 처리 --%>
<%-- => {{propertyName}} 표현식을 사용하여 Object 객체의 속성값 표현 --%>
<script id="template" type="text/x-handlebars-template">
	<div class="panel-body" style="display: block;">
        <table class="table table-hover">
			<thead>			
				<tr>
					<th align="center" width="2px" style=" text-align: -webkit-center;">번호</th>
					<th align="center" width="150px" style=" text-align: -webkit-center;">제목</th>
					<th align="center" width="20px" style=" text-align: -webkit-center;">작성일</th>
					<th align="center" width="15px" style=" text-align: -webkit-center;">관리자</th>
					<th align="center" width="8px" style=" text-align: -webkit-center;">조회수</th>
				</tr>
 			</thead>
		{{#each .}}
			<tbody>
				<tr>
					<td align="center" id="">{{noticeServiceNo}}</td>
					<td align="center" id="title"><a href="<c:url value='/notice/view/'/>{{noticeServiceNo}}">{{noticeServiceTitle}}</a></td>
					<td align="center">{{noticeServiceDate}}</td>
					<td align="center">{{memberName}}</td>
					<td align="center">{{noticeServiceHits}}</td>
				<tr>	
			</tbody>		
		{{/each}}	
		</table>
	</script>

<script type="text/javascript">
	var page = 1; //현재 요청 페이지 번호를 저장하기 위한 전역 변수
	boardDisplay(page);

	/* 게시글 목록을 검색하여 JSON 텍스트로 응답하는 웹프로그램을 AJAX로 요청하여 처리하는 함수 */
	function boardDisplay(pageNum) {
		page = pageNum;
		$.ajax({
			type : "get",
			url : "list?pageNum=" + pageNum,
			dataType : "json",
			success : function(json) {
				if (json.restNoticeList.length == 0) {
					$("#restNoticeListDiv").html("검색된 게시글이 존재하지 않습니다.");
					return;
				}

				//응답된 게시글 목록을 HTML로 변환하도록 Handlebars 자바스크립트 라이브러리 이용
				var source = $("#template").html();//템플릿 코드를 반환받아 저장

				//템플릿 코드를 전달받아 템플릿 객체로 생성하여 저장
				var template = Handlebars.compile(source);

				//템플릿 객체에 JavaScript 객체(게시글 목록)를 전달하여 HTML 태그로 변환하여 출력
				$("#restNoticeListDiv").html(template(json.restNoticeList));

				//페이지 번호를 출력하는 함수 호출
				pagerDisplay(json.pager);

			},
			error : function(xhr) {
				alert("에러코드 = " + xhr.status);
			}
		});
	}

	/* 페이지 번호를 출력하는 함수 */
	function pagerDisplay(pager) {
		var html = "";

		if (pager.startPage > pager.blockSize) {
			html += "<a href='javascript:boardDisplay(1);'>[처음]</a>";
			html += "<a href='javascript:boardDisplay(" + pager.prevPage
					+ ");'>[이전]</a>";
		} else {
			html += "[처음][이전]";
		}

		for (i = pager.startPage; i <= pager.endPage; i++) {
			if (pager.pageNum != i) {
				html += "<a href='javascript:boardDisplay(" + i + ");'>[" + i
						+ "]</a>";
			} else {
				html += "[" + i + "]";
			}
		}

		if (pager.endPage != pager.totalPage) {
			html += "<a href='javascript:boardDisplay(" + pager.nextPage
					+ ");'>[다음]</a>";
			html += "<a href='javascript:boardDisplay(" + pager.totalPage
					+ ");'>[마지막]</a>";
		} else {
			html += "[다음][마지막]";
		}

		$("#pageNumDiv").html(html);
	}
</script>

