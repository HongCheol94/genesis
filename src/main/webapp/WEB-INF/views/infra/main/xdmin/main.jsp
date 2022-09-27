<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="../../resources/css/main.css" rel="stylesheet" type="text/css">
	</head>
<body>
	<form method="post" actoin="/main/main">
		<div class="container-md">
		<!-- 상단목록 -->
		<nav style="--bs-breadcrumb-divider: '';" aria-label="breadcrumb">
		  <ol class="breadcrumb">
		  	<li class="breadcrumb-item col-1"><a href="../maine/mainForm.html"><image src="../../resources/images/kblogo.png"></a></li>
		    <li class="breadcrumb-item col-1 offset-4 mt-4">
		    	<a href="/buy" class="top-menu">
		    		<p class="fs-3">살때</p>
		   		</a>
		   	</li>
		    <li class="breadcrumb-item active col-1 mt-4" aria-current="page">
		    	<a href="userSell" class="top-menu">
		    		<p class="fs-3">팔때</p>
		   		</a>
			</li>
		    <li class="breadcrumb-item active col-1 mt-4" aria-current="page">
		    	<a href="#" class="top-menu">
		   			<p class="fs-3">시세</p>
				</a>
			</li>
		    <li class="breadcrumb-item active col-1 mt-4" aria-current="page">
		    	<a href="#" class="top-menu">
		    	<p class="fs-3">혜택</p></a></li>
		    <li class="breadcrumb-item active col-1 mt-4" aria-current="page">
		    	<a href="#" class="top-menu">
		    	<p class="fs-3">안내</p></a></li>
		    <li class="breadcrumb-item active col-1 mt-1" aria-current="page">
		    	<a href="myPage" class="top-menu">
		    		<i class="fa-solid fa-user"></i>
		    			<p class="fs-4">김홍철님</p>
				</a>
			</li>
		    <li class="breadcrumb-item active col-1 mt-1" aria-current="page">
		    	<a href="/login" class="top-menu">
		    		<i class="fa-solid fa-right-from-bracket"></i>
		    			<p class="fs-4">로그아웃</p>
				</a>
			</li>
		  </ol>
		</nav>
		</div>
		<div class="container-md">
		
		<!-- 메인광고 -->
	 	
			<div id="carouselExampleInterval" class="carousel slide carousel-fade" data-bs-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active" data-bs-interval="1000">
			      <img src="../../resources/images/main/mainCarousel(1).jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item" data-bs-interval="2000">
			      <img src="../../resources/images/main/mainCarousel(2).jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item" data-bs-interval="3000">
			      <img src="../../resources/images/main/mainCarousel(3).jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item" data-bs-interval="4000">
			      <img src="../../resources/images/main/mainCarousel(4).jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item" data-bs-interval="5000">
			      <img src="../../resources/images/main/mainCarousel(5).jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="../../resources/images/main/mainCarousel(6).jpg" class="d-block w-100" alt="...">
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>
			<!-- 모델검색 -->
			<div class="col mt-5">
				<p class="fs-1">모델검색</p>	
			</div>
			<div class="row border mt-5">
				<div class="col-3 mt-4 mb-4">
				<select class="form-select" aria-label="Default select example">
					  <option selected>제조사</option>
					  <option value="1">One</option>
					  <option value="2">Two</option>
					  <option value="3">Three</option>
				</select>
				</div>
				<div class="col-3 mt-4 mb-4">
				<select class="form-select" aria-label="Default select example">
					  <option selected>대표모델</option>
					  <option value="1">One</option>
					  <option value="2">Two</option>
					  <option value="3">Three</option>
				</select>
				</div>
				<div class="col-3 mt-4 mb-4">
				<select class="form-select" aria-label="Default select example">
					  <option selected>세부모델</option>
					  <option value="1">One</option>
					  <option value="2">Two</option>
					  <option value="3">Three</option>
				</select>
				</div>
				<div class="d-grid gap-2 col-3 mx-auto mt-3">
				  <button class="btn btn-outline-warning" type="button">검색</button>
				</div>
				<div class="col-3 mb-4">
					<input type="text" placeholder="내용을 입력해주세요" class="form-control">
				</div>
				<div class="col-3 mb-4">
					<button type="button" class="btn btn-outline-secondary">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</div>
			</div>
			
			<!-- 추천차량 -->
			
			<div style="float:right" class="row mt-5">
				<img src="../../resources/images/main/cadillac.jpg" style="height:745px">
			</div>
			<div class="row row-cols-1 row-cols-md-3 g-4 mt-4">
			  <div class="col">
				<a href="../Buy/buyDetails.html" style="color:black">
					<div class="card">
					<img src="../../resources/images/main/mainCar(1).jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">기아 더 뉴 쏘렌토2.2 디젤 2WD 노블레스</h5>
						<p class="card-text">
							2018년 05월 (19년식)<br>70,000km ㅣ 디젤 ㅣ 경기
						</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">
							<p class="fs-5">2,260만원</p>	
						</small>
						</div>
					</div>
				</a>
			  </div>
			  <div class="col">
			    <div class="card">
			      <img src="../../resources/images/main/mainCar(2).jpg" class="card-img-top" alt="...">
			      <div class="card-body">
			        <h5 class="card-title">현대 싼타페 TM 디젤 2.0 2WD 모던</h5>
			        <p class="card-text">18년05월(19년식)<br>63,000km ㅣ 디젤 ㅣ 경기</p>
			      </div>
			       <div class="card-footer">
				      <small class="text-muted">
				      	<p class="fs-5">2,400만원</p>	
				      </small>
				    </div>
			    </div>
			  </div>
			 <div class="col">
			    <div class="card">
			      <img src="../../resources/images/main/mainCar(3).jpg" class="card-img-top" alt="...">
			      <div class="card-body">
			        <h5 class="card-title">현대 쏘나타 (DN8)<br> 2.0 인스퍼레이션</h5>
			        <p class="card-text">19년07월(20년식)<br>38,569km ㅣ 가솔린 ㅣ 대구</p>
			      </div>
			       <div class="card-footer">
				      <small class="text-muted">
				      	<p class="fs-5">2,540만원</p>	
			      	</small>
				    </div>
			    </div>
			  </div>
			  <div class="col">
			    <div class="card">
			      <img src="../../resources/images/main/mainCar(4).jpg" class="card-img-top" alt="...">
			      <div class="card-body">
			        <h5 class="card-title">현대 싼타페 TM 디젤 2.0 2WD 프리미엄</h5>
			        <p class="card-text">18년05월(19년식)<br>68,700km ㅣ 디젤 ㅣ 울산</p>
			      </div>
			       <div class="card-footer">
				      <small class="text-muted">
				      	<p class="fs-5">2,200만원</p>
		      		</small>
				    </div>
			    </div>
			  </div>
			  <div class="col">
			    <div class="card">
			      <img src="../../resources/images/main/mainCar(5).jpg" class="card-img-top" alt="...">
			      <div class="card-body">
			        <h5 class="card-title">기아 K5 3세대 2.0 가솔린 노블레스</h5>
			        <p class="card-text">20년05월(20년식)<br>19,700km ㅣ 가솔린 ㅣ 울산</p>
			      </div>
			       <div class="card-footer">
				      <small class="text-muted">
				      	<p class="fs-5">2,560만원</p>	
			      	</small>
				    </div>
			    </div>
			  </div>
			  <div class="col mb-3">
			    <div class="card">
			      <img src="../../resources/images/main/mainCar(6).jpg" class="card-img-top" alt="...">
			      <div class="card-body">
			        <h5 class="card-title">현대 싼타페 TM 디젤 2.0 2WD 익스클루시브</h5>
			        <p class="card-text">18년07월(19년식)<br>50,000km ㅣ 디젤 ㅣ 경기</p>
			      </div>
			       <div class="card-footer">
				      <small class="text-muted">
				      	<p class="fs-5">2,380만원</p>	
				      </small>
				    </div>
			    </div>
			  </div>
			</div>
		</div>
		
		<!-- 중간광고 -->
		
		<div class="container-md mt-5 mb-3">
			<img src="../../resources/images/main/middleHero.png " class="rounded mx-auto d-block" alt="...">
		</div>
		
		<!-- 하단메뉴 -->
		
		<div class="container-md">
			<div class="row mt-5 mb-5">
				<nav style="--bs-breadcrumb-divider: 'ㅣ';" aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#" class="top-menu">검색</a></li>
				   	<li class="breadcrumb-item"><a href="#" class="top-menu">중고차검색</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">신차검색</a></li>
				  </ol>
			 	 </nav>
		 	 	<nav style="--bs-breadcrumb-divider: 'ㅣ';" aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#" class="top-menu">살때</a></li>
				   	<li class="breadcrumb-item"><a href="#" class="top-menu">나와라차차차</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">구해줘차차차</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">테마PICK</a></li>
				  </ol>
			 	 </nav>
			 	 <nav style="--bs-breadcrumb-divider: 'ㅣ';" aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#" class="top-menu">팔때</a></li>
				   	<li class="breadcrumb-item"><a href="#" class="top-menu">팔아줘차차차</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">직거래차차차</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">바꿔줘차차차</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">직거래 차량관리</a></li>
		    		
				  </ol>
			 	 </nav>
			 	 <nav style="--bs-breadcrumb-divider: 'ㅣ';" aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#" class="top-menu">시세</a></li>
				  </ol>
			 	 </nav>
			 	 <nav style="--bs-breadcrumb-divider: 'ㅣ';" aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#" class="top-menu">혜택</a></li>
				   	<li class="breadcrumb-item"><a href="#" class="top-menu">이벤트</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">차차차멤버십</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">쿠폰함</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">KB코인</a></li>
				  </ol>
			 	 </nav>
			 	 <nav style="--bs-breadcrumb-divider: 'ㅣ';" aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#" class="top-menu">안내</a></li>
				   	<li class="breadcrumb-item"><a href="#" class="top-menu">새소식</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">CAR & LIFE</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">자주하는 질문</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">문의하기</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">제안하기</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">서비스가이드</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">제휴서비스</a></li>
				  </ol>
			 	 </nav>
			 	 <nav style="--bs-breadcrumb-divider: 'ㅣ';" aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#" class="top-menu">마이페이지</a></li>
				   	<li class="breadcrumb-item"><a href="#" class="top-menu">나의 정보</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">견적함</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">문의함</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">리뷰</a></li>
		    		<li class="breadcrumb-item"><a href="#" class="top-menu">멤버십</a></li>
				  </ol>
			 	 </nav>
		 	 </div>
		</div>
		
		<!-- 풋터 -->
		
		<div class="foot container-md">
			<div class="row">
					<div class="col">
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
			</div>
		</form>
		
		
			
			
		
		
		
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>