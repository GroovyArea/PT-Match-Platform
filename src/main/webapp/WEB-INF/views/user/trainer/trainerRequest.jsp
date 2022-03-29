<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>엄마 나는 커서 트레이너가 될거에요</title>
</head>
<body>

<div class="tr-in-centent" >
	<div class="tr-in-header">
		<div class="tr-in-header-title">
			<h2>트레이너 신청</h2>
			<hr>
		</div>
		<div class="tr-in-header-img">
			<div class="">
				<img alt="" src="">
				<input type="text" readonly="readonly" placeholder="프로필 사진 첨부">
				<button>첨부</button>
			</div>
		
			<div class="tr-in-header-info">
				<table>
					<tr>
						<td>이름</td>
						<td>김남영</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>01011112222</td>
					</tr>
					<tr>
						<td>소속 센터 주소</td>
						<td>여긴 API 넣어야하는데 일단 귀찮ㅇ아아니 바뻐서 패쓰</td>
					</tr>
				</table>
			</div>

		</div>
		<div class="tr-in-header-award-title">
			<h3>수상경력 및 이력</h3>
			<img alt="" src="">
			<hr>
			<div class="tr-in-header-award-list">
				<div class="tr-in-header-award-unit">
					<div class="tr-in-header-award-rego">
						<img alt="" src="">
						<input>
					</div>
					<div class="tr-in-header-award-rego">
						<input>
						<button></button>
					</div>
				</div>
			</div>	
		</div>
	</div>
	<div class="tr-in-body">
		<form action="">
		<div class="tr-in-body-myprofile">
			<div class="tr-in-body-myprofile-top">
				<h3>자기 소개</h3>
				<textarea rows="" cols=""></textarea>
			</div>
			<div class="tr-in-body-myprofile-body">
				<h5>뭐야 이거 어케 해요 ㅠㅠ</h5>
				<button type="button">첨부</button>
			</div>
		</div>
		<div class="tr-in-body-profile">
			
		</div>
		<div class="tr-in-body-pt-schedule">
		
			
		</div>
		<div class="tr-in-body-pt-price">
			
			
		</div>
	</form>
	</div>
	<div class="tr-in-footer">
		<button type="submit">확인</button>
		<button type="reset">다시쓰기</button>
	</div>
</div>

</body>
</html>