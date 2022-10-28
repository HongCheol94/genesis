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
	<link href="/resources/css/buyDetails.css" rel="stylesheet" type="text/css">
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	
	<!-- start -->
	<c:set var="listCodearea" value="${CodeServiceImpl.selectListCachedCode('3')}" />
	<c:set var="listCodecarEngine" value="${CodeServiceImpl.selectListCachedCode('4')}" />
	<c:set var="listCodecarGearBox" value="${CodeServiceImpl.selectListCachedCode('5')}" />
	<c:set var="listCodecarKind" value="${CodeServiceImpl.selectListCachedCode('6')}" />
	<c:set var="listCodecolor" value="${CodeServiceImpl.selectListCachedCode('7')}" />
	<c:set var="listCodetaxe" value="${CodeServiceImpl.selectListCachedCode('8')}" />
	<c:set var="listCodeseize" value="${CodeServiceImpl.selectListCachedCode('9')}" />
	<c:set var="listCodecollateral" value="${CodeServiceImpl.selectListCachedCode('10')}" />
	<form>
		<div class="container-fluid">
			<!-- 상단 나브바 start -->
			<nav class="navbar bg-warning">
			  <div class="container-fluid">
			    <form class="d-flex mx-auto" role="search">
			      <input class="form-control me-2" type="search" placeholder="164.266대의 차량이 있습니다." aria-label="Search">
			      <button class="btn btn-outline-success" type="submit">Search</button>
			    </form>
			    <ul class="nav justify-content-end">
				  <li class="nav-item">
				    <a class="nav-link active" aria-current="page" href="#" style="color: green">
				    	<p class="fs-3">
				    		<i class="fa-solid fa-user"></i>
			    		</p>	
			    	</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#" style="color:black">
				    	<p class="fs-4">
				    		<i class="fa-solid fa-right-to-bracket"></i>
			    		</p>
			    	</a>
				  </li>
				</ul>
			  </div>
			</nav>
			<!-- 상다 나브바 end -->
			<div style="height:70px">
			
			</div>
			<!-- 시작 로우 -->
			<div class="row">
			<!-- 좌측메뉴 start -->
				<div class="col-2 common-left-area">
					<h1 class="logo">
						<a href="main">
					<img src="../../resources/images/kblogo.png">
						</a>
					</h1>
					<ul class="nav flex-column">
					  <li class="nav-item">
					    <a class="nav-link active top-menu" aria-current="page" href="#" style="color:black;">
					    	<p class="fs-3"><i class="fa-solid fa-magnifying-glass"></i>검색</p>
				    	</a>
					  </li>
					  <li class="nav-item mt-4">
					    <a class="nav-link top-menu" href="../Buy/userBuy.html" style="color:blue;">
					    	<p class="fs-3"><i class="fa-solid fa-cart-shopping"></i>살때</p>
				    	</a>
					  </li>
					  <li class="nav-item mt-4">
					    <a class="nav-link top-menu" href="userSell" style="color:red;">
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
			<!-- 좌측메뉴 end -->
			<!-- 상단 나브바 start -->
				<div class="col-2 offset-2">
					<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item"><a href="../maine/mainForm.html" class="top-menu">KB차차차</a></li>
					    <li class="breadcrumb-item active" aria-current="page">내차살때</li>
					  </ol>
					</nav>
				</div>
				<div class="col-2 offset-4 px-5">
						<button type="button" class="btn btn-outline-warning btn-lg">방문예약</button>
					</div>
				<div class="col-2 px-0">
					<button type="button" class="btn btn-outline-primary btn-lg">상담예약</button>
				</div>
				<!-- 상단 나브바 end -->
				<!-- 차량사진 start -->
					<div class="card offset-2 mt-5" style="width: 40rem;">
					  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
						  <div class="carousel-inner mt-3">
						    <div class="carousel-item active">
						       <img src="../../resources/images/buy/buyDetails/carousel/so(1).jpg" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(2).jpg" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(3).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(4).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(5).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(6).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(7).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(8).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(9).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(10).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(11).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(12).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(13).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(14).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(15).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(16).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(17).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(18).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(19).jpg" class="d-block w-100" alt="...">
						    </div>
						     <div class="carousel-item">
						      <img src="../../resources/images/buy/buyDetails/carousel/so(20).jpg" class="d-block w-100" alt="...">
						    </div>
						  </div>
						  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Previous</span>
						  </button>
						  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Next</span>
						  </button>
						</div>
					  	<div class="card-body">
						    <p class="card-text">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(02-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(03-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(04-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(05-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(06-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(07-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(08-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(09-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(10-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(11-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(12-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(13-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(14-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(15-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(16-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(17-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(18-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(19-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(20-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(21-1).jpg">
						    	<img src="../../resources/images/buy/buyDetails/cardBody/so(22-1).jpg">
						    </p>
					  	</div>
					</div>
			<!-- 차량사진 end -->
			<!-- 가격 밑 서류 정보 start-->
					<div class="col mt-5">
						<p class="fs-3">${item.carName}</p>
						<div class="row">
							<div class="col offset-4 mt-1">
								<p class="fs-5" style="text-align:right">판매가격 :</p>
							</div>
							<div class="col">
								<p class="fs-4" style="color: blue;">${item.price}만원</p>
							</div>
						</div>
						<hr>
						<div class="row mb-3">
							<div class="col offset-2">
								<fmt:formatDate value="${item.carAge}" pattern="yyyy.MM" />
								ㅣ ${item.carMleage}km 
								ㅣ <c:forEach items="${listCodecarGearBox}" var="listcarGearBox" varStatus="statuscarGearBox">
							   		<c:if test="${item.carGearBox eq listcarGearBox.seq}">
							   			<c:out value="${listcarGearBox.codeGroupCode}"/>
						   			</c:if>
						   		   </c:forEach> 
							    ㅣ<c:forEach items="${listCodearea}" var="listarea" varStatus="statusarea">
								  	<c:if test="${item.area eq listarea.seq}">
										<c:out value="${listarea.codeGroupCode }" />
									</c:if>
								  </c:forEach>
							</div>
						</div>
						<div class="row mb-4">
							<div class="col">
								<ul>
									<li>
										<div class="col">
										<img src="../../resources/images/buy/buyDetails/buyDS_1.jpg">
										<span>성능점검</span>
										<div class="vr"></div>
										</div>
									</li>
									<li>
										<div class="col">
										<img src="../../resources/images/buy/buyDetails/buyDS_2.jpg">
										<span>보험이력</span>
										<div class="vr"></div>
										</div>
									</li>
									<li>
										<div class="col">
										<img src="../../resources/images/buy/buyDetails/buyDS_3.jpg">
										<span>주행거리</span>
										<div class="vr"></div>
										</div>
									</li>
									<li>
										<div class="col">	
										<img src=".../../resources/images/buy/buyDetails/buyDS_4.jpg">
										<span>기본정보</span>
										<div class="vr"></div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="row p-1" style="background-color: #E0F2F7;">
								<p class="fs-5 mt-3">KB차차차 3.7% 최저금리 추천 금융상품</p>
								<div style="height: 50px">
										<!-- 공백 -->
								</div>
							<div class="col mb-3">
								<span>
									대출 이용 시 월 납입 <span class="fs-5" style="text-decoration : underline; color: blue;">355,081원</span>
								</span>
								<button type="button" class="btn btn-primary"
								        style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
								 대출 계산하기
								</button>
							</div>
							<div class="col">
								<span>
									리스 이용 시 월 납입 <span class="fs-5" style="text-decoration : underline; color: blue;">267,191원</span>
								</span>
								<button type="button" class="btn btn-primary"
								        style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
								리스 계산하기
								</button>
							</div>
						</div>
						<div class="row">
							<div class="col mt-3">
								<img src="../../resources/images/buy/buyDetails/hero(1).png" style="width:920px">
							</div>
						</div>
					</div>
			<!-- 가격 밑 서류 정보 end-->
			<!-- 차량정보,딜러정보 start -->
				<!-- 차량정보 start-->
					<div class="row mt-5">
						<div class="col-4 offset-2">
							<table class="table table-borderless">
								<tbody>	
									<tr>
										<th>차량번호</th>
										<td>
											<c:out value="${item.carNumber}"/>
										</td>
										<th>연식</th>
										<td>
										<fmt:formatDate value="${item.carAge}" pattern="yyyy.MM" />
										</td>
									</tr>
									<tr>
										<th>주행거리</th>
										<td>
											<c:out value="${item.carMleage}"/>km
										</td>
										<th>연료</th>
										<td>
											<c:forEach items="${listCodecarEngine}" var="listcarEngine" varStatus="statuscarEngine">
											  	<c:if test="${item.carEngine eq listcarEngine.seq}">
													<c:out value="${listcarEngine.codeGroupCode }" />
												</c:if>
											  </c:forEach> 
										</td>
									</tr>
									<tr>
										<th>변속기</th>
										<td>
											<c:forEach items="${listCodecarGearBox}" var="listcarGearBox" varStatus="statuscarGearBox">
												<c:if test="${item.carGearBox eq listcarGearBox.seq}">
													<c:out value="${listcarGearBox.codeGroupCode}"/>
												</c:if>
											</c:forEach>
										</td>
										<th>연비</th>
										<td>
											<c:out value="${item.carFuelEfficiency}"/>
										</td>
									</tr>
									<tr>
										<th>차종</th>
										<td>
											<c:forEach items="${listCodecarKind}" var="listcarKind" varStatus="stauscarKind">
												<c:if test="${item.carKind eq listcarKind.seq}">
													<c:out value="${listcarKind.codeGroupCode}"/>
												</c:if>
											</c:forEach>
										</td>
										<th>배기량</th>
										<td>
											<c:out value="${item.carCc}"/>
										</td>
									</tr>
									<tr>
										<th>색상</th>
										<td>
											<c:forEach items="${listCodecolor}" var="listcolor" varStatus="statuscolor">
												<c:if test="${item.color eq listcolor.seq}">
													<c:out value="${listcolor.codeGroupCode}"/>
												</c:if>
											</c:forEach>
										</td>
										<th>세금</th>
										<td>
											<c:forEach items="${listCodetaxe}" var="listtaxe" varStatus="statustaxe">
												<c:if test="${item.taxe eq listtaxe.seq}">
													<c:out value="${listtaxe.codeGroupCode}"/>
												</c:if>
											</c:forEach>
										</td>
									</tr>
									<tr>
										<th>압류</th>
										<td>
											<c:forEach items="${listCodeseize}" var="listseize" varStatus="statusseize">
												<c:if test="${item.seize eq listseize.seq}">
													<c:out value="${listseize.codeGroupCode}"/>
												</c:if>
											</c:forEach>
										</td>
										<th>저당</th>
										<td>
											<c:forEach items="${listCodecollateral}" var="listcollateral" varStatus="statuscollateral">
												<c:if test="${item.collateral eq listcollateral.seq}">
													<c:out value="${listcollateral.codeGroupCode}"/>
												</c:if>
											</c:forEach>
										</td>
									</tr>
									<tr>
										<th>제시번호</th>
										<td>
											<c:out value="${item.presentNumber}"/>
										</td>
									<tr>
								</tbody>
							</table>
						</div>
				<!-- 차량정보 end -->
				<!-- 딜러 정보 start -->
						<div class="col text-center">
							<img src="../../resources/images/buy/buyDetails/buyDD.png" class="rounded mx-auto d-block" alt="...">
							<p class="fs-5 mt-4">김정수 딜러</p>
							<p class="fs-5 mt-4">의정부 부대찌개 모터스</p>
							<p class="fs-5 mt-4">
								<img src="../../resources/images/buy/buyDetails/buy_1.png">031-875-5121
							</p>
							<button type="button" class="btn btn-outline-primary btn-lg">판매중:27대</button>
							<button type="button" class="btn btn-outline-primary btn-lg">판매완료:427대</button>
						</div>
					</div>
			</div><!-- 끝나는 로우 -->
			<div class="row">
			 	<div class="row mt-5">
				 	<div class="col-5 offset-2">
				 		<img src="../../resources/images/buy/buyhero.png" class="rounded mx-auto d-block" alt="" style="width:1550px; height:150px" >
				   </div>	
			   </div>
		   </div>	
			<!-- 풋 start -->
			<div class="row mt-5">
					<div class="col offset-2">
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
			 <!-- 풋 end -->
			</div>
		</form>

	
	
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>