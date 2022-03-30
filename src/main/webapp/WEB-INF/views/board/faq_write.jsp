<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<div class="col-md-12">
    <div class="panel panel-default">
        <div class="panel-heading">
           <h3 class="panel-title">FAQ 작성</h3>
        </div>
        <div class="panel-body">
            <form action="<c:url value = "/faq/write"/>" method="post" name="faqForm" class="form-horizontal" role="form">
            	<input type="hidden" name="noticeServiceSortation" value="2">
                <div class="form-group" >
                    <label class="col-sm-2 control-label" id="subject">제목</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="noticeServiceTitle" value="${noticeServiceTitle}" placeholder="제목">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">카테고리</label>
                    <div class="col-sm-10">
                        
                       <div class="form-group" style="width: 400px; " >
                           <select class="form-control input-lg" id="noticeServiceCategory" name="noticeServiceCategory" >
                               <option value="1" selected="selected">결제관련문의</option>
                               <option value="2">트레이너관련문의</option>
                               <option value="3">기타문의</option>
                           </select>
                       </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">내용</label>
                    <div class="col-sm-10">
                    <textarea class="form-control" id="contentCss" name="noticeServiceContent" value=${notice.noticeServiceContent } placeholder="내용"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary">확인</button>
                        <button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/faq/list';">목록</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>
    
    <!--Page Level JS-->
    <script src="<c:url value ="/plugins/bootstrap-wysihtml5/js/wysihtml5-0.3.0.js"/>"></script>
    <script src="<c:url value ="/plugins/bootstrap-wysihtml5/js/bootstrap3-wysihtml5.js"/>"></script>
    <script src="<c:url value ="/plugins/ckeditor/ckeditor.js"/>"></script>

</body>
</html>