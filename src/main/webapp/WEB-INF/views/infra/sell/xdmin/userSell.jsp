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
	<link href="../../resources/css/userSellForm.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	<!-- start -->
	<div class="container">	
	<!-- 좌측 메뉴바 start -->
		<div class="common-left-area">
			<h1 class="logo">
				<a href="main">
					<img src="../../resources/images/kblogo.png">
				</a>
			</h1> 
			<div style="height:50px;">
			  	<!-- 여백 -->
			</div>
			<ul class="nav flex-column">
			  <li class="nav-item">
			    <a class="nav-link active top-menu" aria-current="page" href="../maine/mainForm.html" style="color:black;">
			    	<p class="fs-3"><i class="fa-solid fa-magnifying-glass"></i>검색</p>
		    	</a>
			  </li>
			  <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="../Buy/userBuy.html" style="color:blue;">
			    	<p class="fs-3"><i class="fa-solid fa-cart-shopping"></i>살때</p>
		    	</a>
			  </li>
			  <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="../Sell/userSellForm.html" style="color:red;">
		    		<p class="fs-3"><i class="fa-solid fa-copyright"></i>팔때</p>
	    		</a>
			  </li>
		      <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="#" style="color:orange">
		    		<p class="fs-3"><i class="fa-solid fa-chart-line"></i>시세</p>
	    		</a>
			  </li>
			  <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="#">
			    	<p class="fs-3"><i class="fa-solid fa-gift"></i>혜택</p>
		    	</a>
			  </li>
			  <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="#" style="color:green;">
			    	<p class="fs-3"><i class="fa-solid fa-circle-info"></i>안내</p>
		    	</a>
			  </li>
			</ul>
			<div style="height:70px">
			
			</div>
			<div>
				<img src="../../resources/images/sideHero.png">
			</div>
		</div>
	<!-- 좌측 메뉴바 end -->
	<!-- 중앙 파란부분 start -->
		<!-- 상단 나브바 -->
		<div class="tcolor" style="background-color: #9CD2F6;"> 
			<nav class="navbar">
			  <div class="container-fluid">
			    <form class="d-flex mx-auto" role="search">
			      <input class="form-control me-2" type="search" placeholder="164.266대의 차량이 있습니다." aria-label="Search">
			      <button class="btn btn-outline-success" type="submit">Search</button>
			    </form>
			    <ul class="nav justify-content-end">
				  <li class="nav-item">
				    <a class="nav-link active" aria-current="page" href="myPage" style="color: green">
				    	<p class="fs-3">
				    		<i class="fa-solid fa-user"></i>
			    		</p>	
			    	</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="login" style="color:black">
				    	<p class="fs-4">
				    		<i class="fa-solid fa-right-to-bracket"></i>
			    		</p>
			    	</a>
				  </li>
				</ul>
			  </div>
			</nav>	<!-- 상단 나브바 end-->
			<div class="offset-2">
  					<p class="fs-5">2분이면 끝!</p>
  					<p class="fs-5">간단한 정보입력으로</p>
  					<p class="fs-4">내 차의 최고가에 도전하세요!</p>
			</div>
			<div class="row">
				<div class="col offset-8 mb-3">
					<img src="../images/sell/graph-2.jpg">
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-3 offset-2 mb-5">
					<p class="fs-5">실시간 경쟁입찰 방식
					<br>최대 3개 견적까지 비교가능</p>
					<br><button type="button" class="btn btn-outline-primary">가이드영상</button>
				</div>
				<div class="col-2 offset-3">
					<p class="fs-5">최근 신청건수</p>
					<p class="fs-3">1,710건</p>
				</div>
				<div class="col">
					<p class="fs-5">누적 신청건수</p>
					<p class="fs-3">189,989건</p>
				</div>
			</div>
		</div><!-- 중앙 파란부분 end -->
		<div style="height:50px">
			<!-- 여백 -->
		</div>
		<div class="row">
			<div class="col-2 offset-2 border">
				<ul>
					<li>step 1 차량등록</li>
					<li>step 2 경매시장</li>
					<li>step 3 견적확인</li>
					<li>step 4 거래완료</li>
				</ul>
			</div>
			<div class="col-7 offset-1">
				<p class="fs-5">step 1 차량등록</p>
				<a href="sellRegForm">
					<div class="d-grid gap-2 col-8 mb-2">
						<button class="btn btn-primary text-start" type="button">
							<img src="../../resources/images/sell/sell_1.jpg">내 차 등록하기
						</button>
					</div>
				</a>	
				<ul>
					<li>
						<p class="fs-6">연식,주행거리,색상 등 2분이면 끝! 쉽고 간단하게 내 차의 최고가에 도전</p>
					</li>
					<li>
						<p class="fs-6"><i class="fas fa-thin fa-magnifying-glass-arrow-right" style="color:#CEECF5;"></i>내 차 팔때,감가사유 확인해보세요</p>
					</li>
					<li>
						<p class="fs-6"><i class="fas fa-duotone fa-sack-dollar" style="color:yellow"></i>밀당없이 제 값 받을 수 있는 방법</p>
					</li>
					<li>
						<p class="fs-6 mt-3"><i class="fa-solid fa-circle-exclamation" style="color:red"></i>주의사항
							<ul>
								<li>●주말 및 공휴일 신청건은 익 영업일에 경매 진행죕니다.</li>
								<li>●다음고 ㅏ같은 경우, 견적가가 변동 될 수 있습니다.
									<ul>
										<li>-등록해주신 차량 정보가 실제와 다를 경우</li>
										<li>-동일 차량이더라도 여러 번 견적을 신청 할 경우</li>
									</ul>
								</li>
							</ul>	
						</p>
					</li>
				</ul>
			</div>
		</div>
		<div class="row mt-5">
			<hr>
			<div class="col offset-2">
				<ul>
					<li><i class="fas fa-thin fa-car-side" style="color:deepskyblue"></i>중고차/신차</li>
					<li><i class="fas fa-thin fa-car" style="color:#CEECF5"></i>구해줘 차차차</li>
					<li><i class="fas fa-thin fa-crosshairs" style="color:firebrick"></i>테마PICK</li>
				</ul>
			</div>
			<div class="col">
				<ul>
					<li><i class="fas fa-thin fa-money-bill" style="color:darkgrey"></i>팔아줘 차차차</li>
					<li><i class="fas fa-thin fa-arrow-right-arrow-left" style="color:aquamarine"></i>직거래 차차차</li>
					<li><i class="fas fa-thin fa-rotate" style="color:lightgray"></i>바꿔줘 차차차</li>
					<li><i class="fas fa-thin fa-handshake" style="color:pink"></i>직거래 차량관리</li>
				</ul>
			</div>
			<div class="col">
				<ul>
					<li><i class="fas fa-thin fa-barcode" style="color:darkgoldenrod"></i>내차시세</li>
					<li><i class="fa-regular fa-chart-bar" style="color:lightgrey"></i>중고차시세</li>
				</ul>
			</div>
			<div class="col">
				<ul>
					<li><i class="fa-regular fa-calendar-days" style="color:papayawhip"></i>이벤트</li>
					<li><i class="fa-regular fa-address-book" style="color:darkgray"></i>차차차 멤버십</li>
					<li><i class="fas fa-regular fa-ticket" style="color:lightskyblue"></i>쿠폰함</li>
					<li><i class="fas fa-regular fa-bitcoin-sign" style="color:coral"></i>KB코인</li>
					<li><i class="fas fa-regular fa-screwdriver-wrench" style="color:wheat"></i>차량용품</li>
				</ul>
			</div>
			<div class="col">
				<ul>
					<li><i class="fas fa-regular fa-heart-pulse" style="color:palevioletred"></i>CAR&LIFE</li>
					<li><i class="fas fa-regular fa-rss" style="color:greenyellow"></i>새소식</li>
					<li><i class="fa-regular fa-circle-question" style="color:gainsboro"></i>자주하는질문</li>
					<li><i class="fas fa-regular fa-clipboard-question" style="color:skyblue"></i>문의하기</li>
					<li><i class="fas fa-regular fa-file-circle-question" style="color:palegreen"></i>제안하기</li>
					<li><i class="fas fa-regular fa-headphones" style="color:khaki"></i>서비스가이드</li>
					<li><i class="fas fa-regular fa-blender-phone" style="color:yellow"></i>제휴서비스</li>
				</ul>	
			</div>
		</div>
	<!-- 풋터 -->
		<div class="row mt-5">
			<hr>
			<div class="col offset-2">
				<br><image alt="" src="../images/kbfoot.png"></image>
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
	 <!-- 풋 end -->
	</div> <!-- 컨테이너 끝 -->
		
	
	
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>