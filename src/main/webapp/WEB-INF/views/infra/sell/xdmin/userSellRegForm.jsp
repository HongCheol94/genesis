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
	<link href="../css/userRegistration.css" rel="stylesheet" type="text/css">
	
</head>
<body>
	
	<!-- start -->
	
	<div class="contanier">
		<!-- 좌측 메뉴 -->
		<div class="common-left-area">
			<h1 class="logo">
				<a href="../maine/mainForm.html">
					<img src="../images/kblogo.png">
				</a>
			</h1>
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
				<img src="../images/sideHero.png">
			</div>
		</div>
		<!-- 좌측 메뉴 end -->
		<!-- 상단 나브바 -->
		<nav class="navbar bg-warning">
			<div class="container-fluid">
			  <form class="d-flex mx-auto" role="search">
				<input class="form-control me-2" type="search" placeholder="164.266대의 차량이 있습니다." aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			  </form>
			  <ul class="nav justify-content-end">
				<li class="nav-item">
				  <a class="nav-link active" aria-current="page" href="../member/myPage.html" style="color: green">
					  <p class="fs-3">
						  <i class="fa-solid fa-user"></i>
					  </p>	
				  </a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="../login/loginForm.html" style="color:black">
					  <p class="fs-4">
						  <i class="fa-solid fa-right-to-bracket"></i>
					  </p>
				  </a>
				</li>
			  </ul>
			</div>
		  </nav>
		<!-- 싱딘 나브바 end -->
		<!-- 메인 -->
		<div class="row">
			<div class="col offset-3">
				<table>
					<tr>
						<td colspan="8"><p class="fs-3">기본정보</p></td>
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <th></th> -->
						<!-- <th></td> -->
						<!-- <td></td> -->
					</tr>
					<tr>
						<td colspan="4" rowspan="7"><input type="file" name="file" multiple="multiple"></td>
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<th>차량번호</th>
						<td>
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid" placeholder="차량번호" value="차량번호">
								<label for="floatingInputGrid">차량번호</label>
							</div>
						</td>
						<th>연&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;식</th>
						<td>
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid" placeholder="연식" value="연식">
								<label for="floatingInputGrid">연식</label>
							</div>
						</td>
					</tr>
					<tr>
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<th>주행거리</th>
						<td>
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid" placeholder="주행거리" value="주행거리">
								<label for="floatingInputGrid">주행거리</label>
							</div>
						</td>
						<th>연&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;료</th>
						<td>
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid" placeholder="연료" value="연료">
								<label for="floatingInputGrid">연료</label>
							</div>
						</td>
					</tr>
					<tr>
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<th>변&nbsp;&nbsp;속&nbsp;기</td>
						<td style="text-align: center;">
							<input type="radio" name="route">오토
							<input type="radio" name="route" style="margin-left: 35pt;">수동
						</td>
						<th>연&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;비</th>
						<td>
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid" placeholder="연비" value="연비">
								<label for="floatingInputGrid">연비</label>
							</div>
						</td>
					</tr>
					<tr>
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<th>차&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;종</th>
						<td>
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid" placeholder="차종" value="차종">
								<label for="floatingInputGrid">차종</label>
							</div>
						</td>
						<th>배&nbsp;&nbsp;기&nbsp;량</th>
						<td>
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid" placeholder="배기량" value="배기량">
								<label for="floatingInputGrid">배기량</label>
							</div>
						</td>
					</tr>
					<tr>
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<th>색&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상</th>
						<td>
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid" placeholder="색상" value="색상">
								<label for="floatingInputGrid">색상</label>
							</div>
						</td>
						<th>세금미납</th>
						<td>
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid" placeholder="세금미납" value="세금미납">
								<label for="floatingInputGrid">세금미납</label>
							</div>
						</td>
					</tr>
					<tr>
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<th>압&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류</th>
						<td style="text-align: center;">
							<input type="radio" name="route">있음
							<input type="radio" name="route" style="margin-left: 35pt;">없음
						</td>
						<th>저&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;당</th>
						<td style="text-align: center;">
							<input type="radio" name="route">있음
							<input type="radio" name="route" style="margin-left: 35pt;">없음
						</td>
					</tr>
					<tr>
						<!-- <td></td>  -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<!-- <td></td> -->
						<th>제시번호</th>
						<td colspan="3">
							<div class="form-floating">
								<input type="number" class="form-control" id="floatingInputGrid" placeholder="제시번호" value="제시번호">
								<label for="floatingInputGrid">제시번호</label>
							</div>
						</td>
				<!-- 	<td></td>
						<td></td> -->
					</tr>
				</table>
				<div class="col-7 mt-5">
					<a href="../Sell/userSellForm.html">
						<button class="btn btn-warning btn-lg" type="button" style="--bs-btn-padding-y: 1rem; --bs-btn-padding-x: 10rem; --bs-btn-font-size: .75rem;">
							<span class="fs-5">취소</span>
						</button>
					</a>
					<a href="../Sell/userSellForm.html">
						<button class="btn btn-warning btn-lg" type="button"  style="--bs-btn-padding-y: 1rem; --bs-btn-padding-x: 10rem; --bs-btn-font-size: .75rem;">
							<span class="fs-5">등록하기</span>
						</button>
					</a>	
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
		</div>
		<!-- 메인 end -->
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
	 </div> <!-- 컨테이너 end -->
	
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>