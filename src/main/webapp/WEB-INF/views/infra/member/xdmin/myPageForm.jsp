<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.hongcheol.march.modules.code.CodeServiceImpl" />

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="../../resources/css/memberModForm.css" rel="stylesheet">
</head>
<body>
	<!-- start -->
	<!-- 좌측메뉴 -->
	<div id="sidebar">
		<div>
			<h1>
				<a href="main">
					<img src="../../resources/images/kblogo.png">
				</a>
			</h1>
			<ul>
				<li>
					<a href="myPage" style="color:black;">
						<p class="myPage mt-5 mb-5">
							마이페이지
						</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>내차사기 주문관리</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>내차팔기 신청관리</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>렌트 신청내역</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p><hr></p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>직영점 방문예약 신청내역</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>보증수리 접수내역</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p><hr></p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>관심차량</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>판매준비차량 알림</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p><hr></p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>찜한 차량</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>최근 본 차량</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p><hr></p>
					</a>
				</li>
				<li>
					<a href="../member/memberModForm.html" style="color:red;">
						<p>회원정보</p>
					</a>
				</li>
				<li>
					<a href="snsLogin" style="color:black;">
						<p>SNS 로그인 설정</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>맞춤정보설정</p>
					</a>
				</li>
			</ul>
			<div>
				<img src="../../resources/images/sideHero.png">
			</div>
		</div>
	</div>
	<!-- 좌측메뉴 end -->
	<nav>
		<p class="fs-3">내정보 수정</p>
	</nav>
	<main>
	<!-- 수정 로그인-->
		<div class="row main_MInfo">
			<div class="col">
				<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
					<li class="nav-item" role="presentation">
					<button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">회원정보</button>
					</li>
					<li class="nav-item" role="presentation">
					<button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">SNS로그인 설정</button>
					</li>
				</ul>
				<div class="tab-content" id="pills-tabContent">
					<!-- 회원정보 내용 -->
					<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
						<p class="fs-4 mb-4">꼭! 알아두세요!</p>
						<p class="fs-5">● KB차차차는 고객님의 동의 없이 제3자에게 정보를 제공하지 않습니다.</p>
						<div class="row mb-4 mt-5">
							<div class="col-2">
								<span class="fs-4">고객명</span>
							</div>
							<div class="col">
								<c:out value="${sessName }님"/>
							</div>
						</div>
						<div class="row mb-4">
							<div class="col-2">
								<span class="fs-4">휴대폰번호</span>
							</div>
							<div class="col">
								<c:out value="${sessNumber}"/>
							</div>
						</div>
						<div class="row mb-4">
							<div class="col-2">
								<span class="fs-4">비밀번호</span>
							</div>
							<div class="col">
								<input type="password" class="form-control" value="*********">
							</div>
							<span class="fs-6 offset-2 text-start" style="color:gray">영문 대/소문자,숫자,특수문자('~!@#$%+=-만 허용)를 조합해서 입력해 주세요.(8~20자)</span>
						</div>
						<div class="row mb-4">
							<div class="col-2">
								<span class="fs-4">새로운 비밀번호 확인</span>
							</div>
							<div class="col">
								<input type="text" class="form-control" value="*********">
							</div>
						</div>
						<div class="row mb-4">
							<div class="col-2">
								<span class="fs-4">이메일</span>
							</div>
							<div class="col">
								<c:out value="${sessEmail }"/>
							</div>
							<div class="col-1">
								<span class="fs-4">@</span>
							</div>
							<div class="col">
								<input type="eamil" class="form-control" value="naver.com">
							</div>
							<div class="col">
								<select class="form-select" aria-label="Default select example">
									<option selected>@Email</option>
							 		<c:forEach items="${listCodeEmail}" var="listEmail" varStatus="statusEmail">
										<option value="${listEmail.seq}" <c:if test="${item.email eq listEmail.seq}">selected</c:if>>${listEmail.codeGroupCode}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="row mb-4">
							<div class="col">
								<span class="fs-4">마케팅활용/
									<br>수신동의(선택)</span>
							</div>
							<div class="col-10 mt-3" style="vertical-align: middle;">
								<input type="radio" name="agree"><span class="fs-6">동의함</span>
								<input type="radio" name="agree"><span class="fs-6">동의안함</span>
								<p style="color:gray">우용한 이벤트,할인등 다양한 소식을 받아보세요.</p>
							</div>
						</div>
						<div class="row mb-5">
							<div class="col">
								<span class="fs-4">회원탈퇴</span>
							</div>
							<div class="col-10">
								<button type="button" class="btn btn-outline-danger btn-lg">회원탈퇴</button>
							</div>
						</div>
						<div class="row">
							<div class="col-6 offset-3">
								<a href="myPage">
									<button class="btn btn-outline-warning btn-lg" type="button" style="--bs-btn-padding-y: 1rem; --bs-btn-padding-x: 10rem; --bs-btn-font-size: .75rem;">확인</button>
								</a>
								<a href="myPageForm">
									<button class="btn btn-outline-warning btn-lg" type="button"  style="--bs-btn-padding-y: 1rem; --bs-btn-padding-x: 10rem; --bs-btn-font-size: .75rem;">수정하기</button>
								</a>	
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 회원정보 내용 end -->
			<!-- <SNS 로그인 설정 -->
			<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
				<div class="row">
					<div class="col text-center">
						<span class="fs-5">SNS 계정과 K Car계정을 연동하고</span>
						<br><span class="fs-5">더 간편하게 로그인해 보세요.</span>
						<br><span class="fs-6">●SNS 로그인을 사용하지 않으려면 SNS연동을 해제해 주세요.</span>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col" style="margin-left: 450px;">
						<div class="col-4 offset-2 mb-3">
							<img src="../../resources/images/nlogin.jpg">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col" style="margin-left: 450px;">
						<div class="col-4 offset-2">
							<img src="../../resources/images/klogin.jpg">
						</div>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col" style="margin-left: 450px;">
						<div class="co4 offset-2">
							<div class="fb-login-button" data-width="" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="false"></div>
						</div>
					</div>
				</div>
			</div>
				<!-- SNS 로그인 설정 end	 -->
		</div>
	<!-- 수정 로그인 end -->
	</main>
	<footer>
		<div class="row mt-5">
			<hr>
			<div class="col">
				<br><image alt="" src="../../resources/images/kbfoot.png"></image>
				<br>
				<br>이용약관 ㅣ 개인정보처리방침 ㅣ 위치기반서비스 이용약관
				<br>
				<br>대표이사: 황수남 ㅣ 주소: 서울특별시 서초대로 301 동익성봉빌딩
				<br>
				<br>사업자등록번호 : 214-85-08573 ㅣ >준법감시인 심의필 번호 : 20201101-0007
				<br>준법감시인 심의필 번호 : 20201101-0007
				<br>
				<br>KB차차차가 제공하는 서비스는 온라인 거래장소 및 기타 부가정보 제공에 한하며, 실제 거래의 모든 책임은 판매자와 구매자에게 있음을 안내드립니다.
				<br>본 사이트/앱 상의 모든 정보, 콘텐츠, UI 등에 대한 무단 복제, 배포, 스크래핑 등의 행위는 법에 의하여 엄격히 금지됩니다.
				<br>
				<br>COPYRIGHT 2018 KB CAPITAL.CO.,LTD. ALL RIGHTS RESERVED.
			</div>
		</div>
	</footer>
	<!-- end -->
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v14.0" nonce="u6wxcWyc"></script>
	<script>
		const triggerTabList = document.querySelectorAll('#myTab button')
			triggerTabList.forEach(triggerEl => {
			const tabTrigger = new bootstrap.Tab(triggerEl)

			triggerEl.addEventListener('click', event => {
				event.preventDefault()
				tabTrigger.show()
			})
			})
	</script>
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>