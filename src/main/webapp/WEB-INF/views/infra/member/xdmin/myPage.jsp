<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="../../resources/css/myPage.css">
</head>
<body>
	
	<!-- start -->
	<!-- 상단 나브바 -->
    <nav> 
        <ul class="nav">
            <li class="nav-item col">
                <a class="nav-link active" aria-current="page" href="main" style="color:black"><p class="fs-2">검색</p></a>
            </li>
            <li class="nav-item col">
                <a class="nav-link" href="userBuy" style="color:black"><p class="fs-2">살때</p></a>
            </li>
            <li class="nav-item col">
                <a class="nav-link" href="userSell" style="color:black"><p class="fs-2">팔때</p></a>
            </li>
			<li class="nav-item col">
                <a class="nav-link" href="#" style="color:black"><p class="fs-2">시세</p></a>
            </li>
			<li>
				<div class="d-flex" style="height: 60px;">
					<div class="vr"></div>
				</div>
			</li>
			<li class="nav-item col">
                <a class="nav-link" href="../member/myPage.html" style="color:deepskyblue">
					<i class="fas fa-light fa-circle-user fs-2"></i>
					<span class="fs-2">김홍철님</span>
				</a>
            </li>
			<li>
				<div class="d-flex" style="height: 60px;">
					<div class="vr"></div>
				</div>
			</li>
			<li class="nav-item col">
                <a class="nav-link" href="login" style="color:red">
					<i class="fas fa-light fa-arrow-right-from-bracket fs-1"></i>
					<span class="fs-2">로그아웃</span>
				</a>
            </li>
		</ul>
    </nav>
	<!-- 상단 나브바end -->
    <main>
        <div class="my_info" style="background-color:lightgoldenrodyellow;" >
			<div>
                <p class="fs-5">김홍철님</p>
                <a href="myPageLogin"><p class="fs-6" style="color:black;">정보수정</p></a>			
            </div>
            <div class="info">
                <span class="fs-6">찜한차량</span>
                <p class="fs-2 text-end">0</p>
            </div>
            <div class="info">
                <span class="fs-6">관심차량</span>
                <p class="fs-2 text-end">0</p>
            </div>
            <div class="info">
                <span class="fs-6">판매준비차량</span>
                <p class="fs-2 text-end">0</p>
            </div>
            <div class="info1">
                <span class="fs-6">최근본차량</span>
                <p class="fs-2 text-end">0</p>
            </div>
		</div>
		<!-- 내차사기 주문관리 -->
		<div class="row offset-1">
			<div class="col-12 mt-3 mb-3 text-start">
				<span class="fs-4">내차사기 주문관리</span>
			</div>
			<div class="col main_order">
				<p class="fs-5 mt-3">차량정보</p>
			</div>
			<div class="col main_order">
				<p class="fs-5 mt-3">주문상태</p>
			</div>
		</div>
		<div class="row">
			<div class="col mt-5">
				<p class="fs-5">현재 진행중인 건이 없습니다.</p>
				<p class="fs-6" style="color:gray">집 앞까지 배송되는 내차사기 홈서비스</p>
				<a href="../Buy/userBuy.html">
					<button type="button" class="btn btn-outline-warning btn-lg">직영차 쇼핑하기</button>
				</a>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-11 offset-1">
				<hr>
			</div>
		</div>
		<!-- 내차사기 주문관리 end -->
		<!-- 내차팔기 주문관리 -->
		<div class="row offset-1 mt-3">
			<div class="col-12 mt-2 mb-3 text-start">
				<span class="fs-4">내차팔기 주문관리</span>
			</div>
			<div class="col-2 main_order">
				<p class="fs-5 mt-3">신청일</p>
			</div>
			<div class="col main_order">
				<p class="fs-5 mt-3">차량정보</p>
			</div>
			<div class="col main_order">
				<p class="fs-5 mt-3">주문상태</p>
			</div>
		</div>
		<div class="row">
			<div class="col mt-5">
				<p class="fs-5" >현재 진행중인 건이 없습니다.</p>
				<p class="fs-6" style="color:gray">수수료 없이 비싸게 내 차를 팔아보세요<div class=""></div></p>
				<a href="../Sell/userSellForm.html">
					<button type="button" class="btn btn-outline-warning btn-lg">1분안에 신청하기</button>
				</a>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-11 offset-1">
				<hr>
			</div>
		</div>
		<!-- 내차팔기 주문관리 end -->
		<!-- 렌트 견적 보관함 -->
		<div class="row offset-1 mt-3">
			<div class="col-12 mt-2 mb-3 text-start">
				<span class="fs-4">렌트 견적 보관함</span>
			</div>
			<div class="col-2 main_order">
				<p class="fs-5 mt-3">견적일</p>
			</div>
			<div class="col main_order">
				<p class="fs-5 mt-3">차량정보</p>
			</div>
			<div class="col main_order">
				<p class="fs-5 mt-3">렌트비</p>
			</div>
		</div>
		<div class="row">
			<div class="col mt-5">
				<p class="fs-5" >보관된 견적이 없습니다.</p>
				<button type="button" class="btn btn-outline-warning btn-lg">렌트차량보기</button>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-11 offset-1">
				<hr>
			</div>
		</div>
		<!-- 렌트 견적 보관함 end -->
		<!-- 직영점 방문 예약현황 -->
		<div class="row offset-1 mt-3">
			<div class="col-12 mt-2 mb-3 text-start">
				<span class="fs-4">직영점 방문 예약현황</span>
			</div>
			<div class="col-2 main_order">
				<p class="fs-5 mt-3">방문일</p>
			</div>
			<div class="col main_order">
				<p class="fs-5 mt-3">차량정보</p>
			</div>
			<div class="col main_order">
				<p class="fs-5 mt-3">직영점</p>
			</div>
		</div>
		<div class="row">
			<div class="col mt-5">
				<p class="fs-5" >오늘 방문예약 신청 건이 없습니다.</p>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-11 offset-1">
				<hr>
			</div>
		</div>
		<!-- 직영점 방문 예약현황 end -->
    </main>
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
					<a href="myPageForm" style="color:red;">
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
    <footer>
       <div class="foot container-md">
		<div class="row">
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
		</div>
    </footer>
	
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>