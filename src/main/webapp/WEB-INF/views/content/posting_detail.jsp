<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
.tab-wrapper .tab-content {
    border: 0;
    border-top: 0;
    padding: 0;
}

.trainer-sidemenu {
	margin-left: 2%;
	margin-right: 2%;
	
}
</style>
<div class="posting-box">
	<div class="panel-body">
		<div class="tab-wrapper tab-primary">
			<ul class="nav nav-tabs">
				<li class="active"  style="width: 50%; text-align: center;"><a href="#trainer-posting" data-toggle="tab">트레이너</a></li>
				<li style="width: 50%; text-align: center;"><a href="#review-posting" data-toggle="tab">후기</a></li>
			</ul>
			
			<div class="tab-content">
				<div class="tab-pane active" id="trainer-posting">
					<div  style="text-align: center;">
					<ul class="nav nav-tabs" style="margin-bottom: 20px; display: inline-block; width: 100%;">
						<li class="trainer-sidemenu"><a href="#posting-detail-frofile">소개</a></li>
						<li class="trainer-sidemenu"><a href="#posting-detail-award">자격사항</a></li>
						<li class="trainer-sidemenu"><a href="#posting-detail-schedule">스케줄</a></li>
						<li class="trainer-sidemenu"><a href="#posting-detail-program">프로그램</a></li>
						<li class="trainer-sidemenu"><a href="#posting-detail-price">이용가격</a></li>
						<li class="trainer-sidemenu"><a href="#posting-detail-shop">위치</a></li>
					</ul>
					</div>
					<div class="posting-detail-frofile-top posting-detail-content-panel pdm">
						<div class="trainer-profile">
							<div class="panel-body profile-wrapper">
								<div class="col-md-3">
									<div class="profile-pic text-center">
										<img src="<spring:url value="/img/avatar2.png"/>" alt=""
											class="img-circle">
									</div>
								</div>
								<div class="col-md-9">
									<div class="profile-info">
										<h1>김성훈 트레이너</h1>
										<span class="text-muted">아이티윌 센터</span>
										<p>자기소개입니다~ 자기소개입니다~ 자기소개입니다~ 자기소개입니다~ 자기소개입니다~ 자기소개입니다~</p>
										<button type="button" data-toggle="modal"
											data-target="#pt-application" class="btn btn-primary">1회 PT
											신청</button>
										<button type="button" data-toggle="modal"
											data-target="#pt-ask" class="btn btn-primary">문의</button>
									</div>

								</div>
							</div>
							
							<!-- 트레이너 소개 -->
							<div class="col-md-12" id="posting-detail-frofile">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">트레이너 소개</h3>
									</div>
									<div class="frofile-content-body posting-detail-content-panel">
									<div class="frofile-content-body-imglist">
										<img alt="" src="">
									</div>
									<div class="frofile-content-body-text">
										<p>ㄴ;ㅣ알ㄴ;ㅣㅏㄹ;니ㅏㅅ;ㅣㅏㄴ;ㅇ하나어리ㅏ넝리ㅏ너이ㅏ넝라ㅣㅓㄴㅇ라ㅣㅓㄴㅇ라ㅣㅓㄴ아ㅣ러니ㅏㅇ러나ㅣ어리ㅏㄴ어라ㅣ너이ㅏ</p>
										<p>ㄴ;ㅣ알ㄴ;ㅣㅏㄹ;니ㅏㅅ;ㅣㅏㄴ;ㅇ하나어리ㅏ넝리ㅏ너이ㅏ넝라ㅣㅓㄴㅇ라ㅣㅓㄴㅇ라ㅣㅓㄴ아ㅣ러니ㅏㅇ러나ㅣ어리ㅏㄴ어라ㅣ너이ㅏ</p>
										<p>ㄴ;ㅣ알ㄴ;ㅣㅏㄹ;니ㅏㅅ;ㅣㅏㄴ;ㅇ하나어리ㅏ넝리ㅏ너이ㅏ넝라ㅣㅓㄴㅇ라ㅣㅓㄴㅇ라ㅣㅓㄴ아ㅣ러니ㅏㅇ러나ㅣ어리ㅏㄴ어라ㅣ너이ㅏ</p>
										<p>ㄴ;ㅣ알ㄴ;ㅣㅏㄹ;니ㅏㅅ;ㅣㅏㄴ;ㅇ하나어리ㅏ넝리ㅏ너이ㅏ넝라ㅣㅓㄴㅇ라ㅣㅓㄴㅇ라ㅣㅓㄴ아ㅣ러니ㅏㅇ러나ㅣ어리ㅏㄴ어라ㅣ너이ㅏ</p>
									</div>
								</div>
								</div>
							</div>
							
							<!-- 자격사항 -->
							<div class="col-md-12" id="posting-detail-award">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">자격 사항</h3>
									</div>
									<div class="frofile-content-body posting-detail-content-panel">
									<div class="frofile-award-content-body">
										<div class="frofile-award-content-body-img">
											<img alt="" src=""> 
										</div>
										<div class="frofile-award-content-body-title">
											<h5>기타 등등 자격사항</h4>
										</div>
										<hr>
									</div>
									<div class="frofile-award-content-body">
										<div class="frofile-award-content-body-img">
											<img alt="" src=""> 
										</div>
										<div class="frofile-award-content-body-title">
											<h5>기타 등등 자격사항</h4>
										</div>
										<hr>
									</div>
									<div class="frofile-award-content-body">
										<div class="frofile-award-content-body-img">
											<img alt="" src=""> 
										</div>
										<div class="frofile-award-content-body-title">
											<h5>기타 등등 자격사항</h4>
										</div>
										<hr>
									</div>
									<div class="frofile-award-content-body">
										<div class="frofile-award-content-body-img">
											<img alt="" src=""> 
										</div>
										<div class="frofile-award-content-body-title">
											<h5>기타 등등 자격사항</h4>
										</div>
										<hr>
									</div>
								</div>
								</div>
							</div>

							<!-- PT 스케쥴 -->
							<div class="col-md-12" id="posting-detail-schedule">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">PT 스케줄</h3>
									</div>
									<div class="frofile-content-body posting-detail-content-panel">
										<div class="frofile-schedule-content-body">
											<table>
												<tr>
													<td>평일</td>
													<td>시간</td>
												</tr>
												<tr>
													<td>평일</td>
													<td>시간</td>
												</tr>
												<tr>
													<td>평일</td>
													<td>시간</td>
												</tr>
												<tr>
													<td>평일</td>
													<td>시간</td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>

							<!-- 프로그램 -->
							<div class="col-md-12" id="posting-detail-program">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">프로그램</h3>
									</div>
									<div class="frofile-content-body posting-detail-content-panel">
										<div class="frofile-program-content-body">
											<p>이것도 테스트다아아아아ㅏㅏ아아아아아</p>
											<p>이것도 테스트다아아아아ㅏㅏ아아아아아</p>
											<p>이것도 테스트다아아아아ㅏㅏ아아아아아</p>
											<p>이것도 테스트다아아아아ㅏㅏ아아아아아</p>
											<p>이것도 테스트다아아아아ㅏㅏ아아아아아</p>
											<p>이것도 테스트다아아아아ㅏㅏ아아아아아</p>
											<p>이것도 테스트다아아아아ㅏㅏ아아아아아</p>
										</div>
									</div>
								</div>
							</div>

							<!-- PT 이용가격 -->
							<div class="col-md-12" id="posting-detail-price">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">이용가격</h3>
									</div>
									<div class="frofile-content-body posting-detail-content-panel">
										<div class="posting-price-content-body">
											<div class="fposting-price-content-body-num">
												<p>회차다!!!!!</p>
											</div>
											<div class="posting-price-content-body-text">
												<div class="posting-price-content-body-top">
													<p>
														<span>회당</span>얼마임ㅇ<span>원</span>
													</p>
												</div>
												<div class="posting-price-content-body-low">
													<p>
														총 그래서 얼마임ㅇ<span>원</span>
													</p>
												</div>
											</div>
											<hr>
										</div>
										<div class="posting-price-content-body">
											<div class="fposting-price-content-body-num">
												<p>회차다!!!!!</p>
											</div>
											<div class="posting-price-content-body-text">
												<div class="posting-price-content-body-top">
													<p>
														<span>회당</span>얼마임ㅇ<span>원</span>
													</p>
												</div>
												<div class="posting-price-content-body-low">
													<p>
														총 그래서 얼마임ㅇ<span>원</span>
													</p>
												</div>
											</div>
											<hr>
										</div>
										<div class="posting-price-content-body">
											<div class="fposting-price-content-body-num">
												<p>회차다!!!!!</p>
											</div>
											<div class="posting-price-content-body-text">
												<div class="posting-price-content-body-top">
													<p>
														<span>회당</span>얼마임ㅇ<span>원</span>
													</p>
												</div>
												<div class="posting-price-content-body-low">
													<p>
														총 그래서 얼마임ㅇ<span>원</span>
													</p>
												</div>
											</div>
											<hr>
										</div>
										<div class="posting-price-content-body">
											<div class="fposting-price-content-body-num">
												<p>회차다!!!!!</p>
											</div>
											<div class="posting-price-content-body-text">
												<div class="posting-price-content-body-top">
													<p>
														<span>회당</span>얼마임ㅇ<span>원</span>
													</p>
												</div>
												<div class="posting-price-content-body-low">
													<p>
														총 그래서 얼마임ㅇ<span>원</span>
													</p>
												</div>
											</div>
											<hr>
										</div>
									</div>
								</div>
							</div>

							<!-- 위치 -->
							<div class="col-md-12" id="posting-detail-shop">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">이용가격</h3>
									</div>
									<div class="frofile-content-body posting-detail-content-panel">
										<div class="posting-shop-content-body">모르겠다 이건 아직</div>
									</div>
								</div>
							</div>
							<!-- 위치 끝 -->
						</div>
					</div>
				</div>
				<!-- 트레이너 끝 -->
				
				<!-- 후기 -->
				<div class="tab-pane" id="review-posting">
					<div class="search-review-panel panel-unit">
						<div class="search-review-panel-top">
							<h4>제목</h4>
							<div class="search-review-panel-score">
								<i class="fa fa-heart"></i> <label>566</label>
							</div>
							<hr>
						</div>
						<div class="search-review-panel-profile">
							<img alt="" src="">
							<table>
								<tr>
									<td>이름</td>
									<td>날짜</td>
									<td><i class="fa fa-star"></i> <i
										class="fa fa-star-half-o"></i> <i class="fa fa-star-o"></i></td>
								</tr>
								<tr>
									<td>1회 체험</td>
								</tr>
							</table>
							<br>
						</div>
						<div class="search-review-panel-text">
							<p>아수라 발발타 아아아아아아아아앙내가 미쳐간다으림나디ㅏ펌닝ㄹㅈ디맨ㅇ래맨ㅇ러ㅐ</p>
						</div>
						<div class="search-review-panel-re">
							<div class="search-review-panel-re-text">
								<textarea class="review-review review-textInsert1" rows=""
									cols=""></textarea>
							</div>
							<div class="search-review-panel-re-btn">
								<button type="button" class="review-btn1">댓글달기</button>
							</div>
						</div>

					</div>
				</div>
				<!-- 후기 끝 -->
				
				
			</div>
		</div>
	</div>
</div>

<!-- 1회 PT 신청 모달창 -->
<div class="modal fade" id="pt-application" role="dialog">
	<div class="modal-dialog" id="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			</div>
			<div class="modal-body">
				<div id="login-wrapper">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">1회 PT 신청</h3>
						</div>
						<div class="panel-body">
							<form role="form" action="" method="post"
								style="text-align: -webkit-center;">
								<table>
									<tr>
										<td>회원정보</td>
									</tr>
									<tr>
										<td>성별</td>
										<td><input name="ptOnceGender" type="radio"
											class="iradio_flat-grey checked" value=""> <label>남자</label>
											<input name="ptOnceGender" type="radio"
											class="iradio_flat-grey checked" value=""> <label>여자</label>
										</td>
									</tr>
									<tr>
										<td>연령대</td>
										<td><select class="btn btn-primary dropdown-toggle">
												<option value="10">&nbsp;10대&nbsp;</option>
												<option value="20" selected="selected">&nbsp;20대&nbsp;</option>
												<option value="30">&nbsp;30대&nbsp;</option>
												<option value="40">&nbsp;40대&nbsp;</option>
												<option value="50">&nbsp;50대&nbsp;</option>
												<option value="60">&nbsp;60대&nbsp;</option>
										</select></td>
									</tr>
									<tr>
										<td>운동 목적</td>
										<td><select class="btn btn-primary dropdown-toggle">
												<option value="10">몰라요</option>
												<option value="20" selected="selected">다이어트</option>
												<option value="30">뭐</option>
												<option value="40">눈이</option>
												<option value="50">멍하다</option>
												<option value="60">멍</option>
										</select></td>
									</tr>
									<tr>
										<td>운동 경험 여부</td>
										<td><select class="btn btn-primary dropdown-toggle">
												<option value="10">예</option>
												<option value="20" selected="selected">아니요</option>
										</select></td>
									</tr>

									<tr>
										<td>특이사항</td>
										<td>
											<div class="panel-body">
												<textarea id="nestable-output" class="form-control"
													style="resize: none;"></textarea>
											</div>
										</td>
									</tr>
								</table>
								<table>
									<tr>
										<td>결제정보</td>
									</tr>
									<tr>
										<td>결제금액</td>
										<td>10000</td>
									</tr>
									<tr>
										<td>결제 비밀번호</td>
										<td><input type="password"></td>
									</tr>


								</table>
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<div>
							<button type="submit" class="btn btn-primary">결제</button>
							<button type="button" data-dismiss="modal"
								class="btn btn-primary">닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 1회 PT 문의 모달창 -->
<div class="modal fade" id="pt-ask" role="dialog">
	<div class="modal-dialog" id="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1>오늘의 짐</h1>
				<br>
				<h2>문의작성</h2>
			</div>
			<div class="modal-body">

				<div>
					<form action="" method="post" style="text-align: -webkit-center;">
						<table>
							<tr>
								<td>이름</td>
								<td>김남영</td>
							</tr>
							<tr>
								<td>연락처</td>
								<td>번호임 ㅇㅇ</td>

							</tr>
							<tr>
								<td>문의 내용</td>
							</tr>
						</table>
						<textarea rows="" cols=""></textarea>
					</form>
				</div>
			</div>
			<div class="modal-footer">
				<div>
					<button type="submit">확인</button>
					<button type="button" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>


