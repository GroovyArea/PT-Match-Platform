<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}
</script>

<style type="text/css">
.error{
	color: red;
	position: relative;
	display: none;
}
</style>

<div class="tr-in-centent" >

	<%-- 트레이너 컨트롤러로 보내는 폼 --%>
	<form id="trainerReqestForm" enctype="multipart/form-data" action="<c:url value = "/trainer/request"/>" method = "post">
		<input type="hidden" name="memberNo" value="${loginUserinfo.memberNo }">
			<div class="tr-in-header">
				<div class="tr-in-header-title">
					<h2>트레이너 신청</h2>
					<hr>
				</div>
				<div class="tr-in-header-img">
					<div class="">
						<img alt="" src="" class="trainer-Profile-img">
						<input id ="trainer_profile_image" type="file" readonly="readonly" name="profileImage" placeholder="프로필 사진 첨부" accept="image/*">
						<div id="trainerProfileImgRegMsg" class="error">프로필 사진을 필히 첨부하시오.</div>
					</div>
				
					<div class="tr-in-header-info">
						<table>
							<tr>
								<td>이름</td>
								<td>${loginUserinfo.memberName }</td>
							</tr>
							<tr>
								<td>연락처</td>
								<td>${loginUserinfo.memberPhone }</td>
							</tr>
							<tr>
								<td>소속 센터 주소</td>
								<td>
									<input type="text" id="sample4_postcode" name = "trainerZip" placeholder="우편번호">
									<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
									<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
									<input type="text" id="sample4_jibunAddress" name = "trainerAddress" placeholder="지번주소">
									<span id="guide" style="color:#999;display:none"></span>
									<input type="text" id="sample4_detailAddress" name="trainerCentername" placeholder="센터명">
									<input type="text" id="sample4_extraAddress" placeholder="참고항목">
									
									<div id="addressRegMsg" class = "error">소속 센터 주소를 필히 입력하세요.</div>
									<div id="centernameRegMsg" class="error">소속 센터명을 필히 입력하세요.</div>
									<div id="centernameValidRegMsg" class = "error">등록된 센터명을 입력하세요.</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<div class="tr-in-header-award-title">
				<h3>수상경력 및 이력</h3>
				<i class="fa fa-plus-square" id="award-plus-btn"></i>
				<hr>
				<div class="tr-in-header-award-list">
					<ul class="tr-in-header-award-unit" style=" list-style:none;">
						<li class="tr-in-header-award-rego">
							
							<img alt="" src="" class="award-load-img">
							<input type="file" id="award_image" name = "aImage" placeholder="사진 첨부" accept="image/*"> 
							<input type="text" id="award_content" name= "aContent" placeholder="수상 경력 및 이력">
							<p id="awardContentRegMsg" class="error">수상 경력 설명을 필히 입력하세요.</p>
							<p id="awardImageRegMsg" class="error">수상 경력 사진을 필히 첨부하세요.</p>
						</li>
					</ul>

				</div>	
			</div>

			<div class="tr-in-payment">
				<div class="tr-in-payment-title">
					<h3>결제</h3>
					<hr>
					<div class="tr-in-payment-body">
						<div class="tr-in-payment-text">
							<p>결제는 30일 단위로 결제됩니다.</p>
							<p>결제 금액 : 15000</p>
						</div>
						<div>
							<h3>결제 비밀번호</h3>
							<input type="password" id="account_pw" name="account_pw">
							<p id="accountPwRegMsg" class="error">결제 비밀번호를 필히 입력하시오.</p>
						</div>
					</div>
				</div>
			</div>
		
			<div class="tr-in-footer">
				<button id="submitBtn" type="submit">확인</button>
				<button type="reset">다시쓰기</button>
			</div>
		</form>
	</div>

<script>

	$("#submitBtn").click(function(){
		
		var submitResult = true;
		$(".error").css("display","none");
		
		
		//프로필 이미지 유효성 검사
		if($("#trainer_profile_image").val() == ""){
			$("#trainerProfileImgRegMsg").css("display","block");
			submitResult = false;
		}
		
		// 주소 유효성 검사
		if($("#sample4_roadAddress").val() == ""){
			$("#addressRegMsg").css("display","block");
			submitResult = false;
		}
		
		// 등록 센터명 배열
		var centerNameArr = ['테스트1','테스트2'];
		
		// 센터명 유효성 검사
		if($("#sample4_detailAddress").val()==""){
			$("#centernameRegMsg").css("display","block");
			submitResult=false;	
		}  
		
		//centerNameArr 배열에 센터명이 포함되어 있는지 확인
		if((centerNameArr.includes($("#sample4_detailAddress").val()))==false){
			$("#centernameValidRegMsg").css("display","block");
			submitResult=false;	
		}
		
		// 수상 경력 세부 내용 유효성 검사
		if($("#award_content").val() == ""){
			$("#awardContentRegMsg").css("display","block");
			submitResult=false;	
		}
		
		// 수상 이미지 파일 첨부 여부 유효성 검사
		if($("#award_image").val() == ""){
			$("#awardImageRegMsg").css("display","block");
			submitResult = false;
		}
		
		// 결제 비밀번호 유효성 검사
		if($("#account_pw").val() == ""){
			$("#accountPwRegMsg").css("display","block");
			submitResult = false;
		}
		
		return submitResult;
	});                                
	
	//동적 태그 생성을 위한 변수 선언
	var html2 = "<li class='tr-in-header-award-rego'>";
	html2 += "<i class='fa fa-minus-square' id='award-remove-btn'></i>";
	html2 += "<img alt='' src='' class='award-load-img'>";
	html2 += "<input type='file' id='award_image' name='aImage' accept='image/*'> ";
	html2 += "<input type='text' id='award_content' name='aContent' placeholder='수상 경력 및 이력'>";
	html2 += "<p id='awardContentRegMsg' class='error'>수상 경력 설명을 필히 입력하세요.</p>";
	html2 += "<p id='awardImageRegMsg' class='error'>수상 경력 사진을 필히 첨부하세요.</p>";
	html2 += "</li>";
	
	
	//동적 태그 생성(수상경력 추가시)
	$(document).on("click", "#award-plus-btn", function() {
		
	    $(".tr-in-header-award-unit").append(html2);
	});
	
	//동적 태그 삭제(수상경력 삭제시)
	$(document).on("click", "#award-remove-btn", function() {
		
	    $(this).parent().remove();
	});
	
	
/* 	$(document).ready(function (e){
    $("input[type='file']").change(function(e){

      //div 내용 비워주기
      $('#preview').empty();

      var files = e.target.files;
      var arr =Array.prototype.slice.call(files);
      
      //업로드 가능 파일인지 체크
      for(var i=0;i<files.length;i++){
        if(!checkExtension(files[i].name,files[i].size)){
          return false;
        }
      }
      
      preview(arr);
      
      
    });//file change
    
    function checkExtension(fileName,fileSize){

      var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
      var maxSize = 20971520;  //20MB
      
      if(fileSize >= maxSize){
        alert('파일 사이즈 초과');
        $("input[type='file']").val("");  //파일 초기화
        return false;
      }
      
      if(regex.test(fileName)){
        alert('업로드 불가능한 파일이 있습니다.');
        $("input[type='file']").val("");  //파일 초기화
        return false;
      }
      return true;
    }
    
    function preview(arr){
      arr.forEach(function(f){
        
        //파일명이 길면 파일명...으로 처리
        var fileName = f.name;
        if(fileName.length > 10){
          fileName = fileName.substring(0,7)+"...";
        }
        
         */
         
    //수상경력 이미지 미리보기
	$(document).on("change", "#award_image", function() {
	    setImageFromFile(this);

	});

	function setImageFromFile(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $(input).prev().attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	//프로필 이미지 미리보기
	$(document).on("change", "#trainer_profile_image", function() {
	    setImageFromFile(this);

	});

	function setImageFromFile(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $(input).prev().attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
</script>
