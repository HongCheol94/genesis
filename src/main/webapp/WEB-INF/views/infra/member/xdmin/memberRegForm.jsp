<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
	
	<!-- start -->
	<form method="post" action="/member/memberInst" id="member">
		<nav class="navbar sticky-top">
		    <a class="navbar-brand" href="" id="">
		    	<image alt="" src="../images/kbcar.jpg" width="70px">
		    </a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
		      <div class="offcanvas-header">
		        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
		        	<image alt="" src="../images/listBg.jpg" width="100px">
	        	</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		      </div>
		      <div class="offcanvas-body">
		        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
		          <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="#">
		            	<image alt="" src="./image/person.png" width="100x">
	            	</a>
		          </li>
		          <hr>
		          <li class="nav-item">
		            <a class="nav-link" href="#" style="text-align: end;">로그인</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#" style="text-align: end;">로그아웃</a>
		          </li>
		          <hr>
		      </div>
		    </div>
		</nav>
		<nav class="navbar navbar-expand-lg bg-warning">
		    <a class="navbar-brand" href="#"></a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		      <div class="navbar-nav">
		        <a class="nav-link active" aria-current="page" href="#">Home</a>
		        <a class="nav-link" href="#">코드그릅관리</a>
		        <a class="nav-link" href="#">코드관리</a>
		        <a class="nav-link disabled">회원관리</a>
		      </div>
		    </div>
		</nav>
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-md-2">
					<image alt="" src="../images/cUpListbg.jpg" width="300px"></image>
				</div>
				<div class="col-md-2 mt-5 px-0">
					<p class="fs-1">회원가입</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="ID" placeholder="성">
						<label for="floatingInput">성</label>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="ID" name="name" value="<c:out value="${item.name }"/>" placeholder="이름">
						<label for="floatingInput">이름</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mb-3">
					  <input type="ID" class="form-control" id="ID" name="id" value="<c:out value="${item.id }"/>" placeholder="ID">
					  <label for="floatingInput">아이디</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating">
					  <input type="password" class="form-control" id="floatingPassword" name="password" value="<c:out value="${item.password }"/>" placeholder="Password">
					  <label for="floatingPassword">비밀번호</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mb-1 mt-3" >
					  <input type="passwordre" class="form-control" id="passwordre" placeholder="Passwordre">
					  <label for="floatingInput">비밀번호 확인</label>
			   	   </div>
			   </div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mt-3">
						<input type="text" class="form-control" id="floatingPassword"  placeholder="인증번호입력">
						<label for="floatingEmail">이메일</label>
					</div>
				</div>
				<div class="col-md-2 mt-4 btn-group">
					  <button type="button" class="btn btn-outline-warning dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
					    @Email
					  </button>
					  <ul class="dropdown-menu">
					    <li><a class="dropdown-item" href="#">naver.com</a></li>
					    <li><a class="dropdown-item" href="#">daum.net</a></li>
					    <li><a class="dropdown-item" href="#">gmail.com</a></li>
					    <li><a class="dropdown-item" href="#">nate.com</a></li>
					  </ul>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mt-3">
					  <input type="text" class="form-control" id="floatingPassword" name="number" value="<c:out value="${item.number }"/>" placeholder="callnumber">
					  <label for="floatingPassword">전화번호</label>
				  </div>
			  </div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2 form-floating mt-3">
					<input type="text" class="form-control" id="floatingPassword" name="addressNumber" value="<c:out value="${item.addressNumber }"/>" placeholder="인증번호입력">
					<label for="floatingadress">우편번호</label>
				</div>
				<div class="col-md-2 mt-3 btn-group">
					<button type="button" class="btn btn-outline-warning btn-lg">우편번호</button>
				</div>
			</div>
				<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mt-3">
					  <input type="text" class="form-control" id="floatingPassword" name="address" value="<c:out value="${item.address }"/>" placeholder="callnumber">
					  <label for="floatingaddress">주소</label>
				  </div>
			  </div>
			</div>
			<div class="row justify-content-center">
				<div class="col-2 p-4 offset-1 px-0">
					  <button type="submit" class="btn btn-outline-warning">회원가입</button>
					<a href="../list/memberList.html"> 
					  <button type="button" class="btn btn-outline-warning">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
					</a> 	
				</div>
			</div>
			<div class="foot">
				<div class="row justify-content-center">
					<div class="col text-center">
						<br><image alt="" src="../images/kbfoot.png"></image>
						<br>
						<br>이용약관 ㅣ 개인정보처리방침 ㅣ 위치기반서비스 이용약관
						<br>
						<br>KB차차차가 제공하는 서비스는 온라인 거래장소 및 기타 부가정보 제공에 한하며, 실제 거래의 모든 책임은 판매자와 구매자에게 있음을 안내드립니다.
						<br>본 사이트/앱 상의 모든 정보, 콘텐츠, UI 등에 대한 무단 복제, 배포, 스크래핑 등의 행위는 법에 의하여 엄격히 금지됩니다.
						<br>
						<br>서울특별시 서초구 서초대로 301 동익성봉빌딩 KB캐피탈㈜
						<br>대표이사: 황수남
						<br>사업자등록번호 : 214-85-08573
						<br>준법감시인 심의필 번호 : 20201101-0007
						<br>COPYRIGHT 2018 KB CAPITAL.CO.,LTD. ALL RIGHTS RESERVED.
					</div>
				</div>
			</div>
		</div>
	</form>
		
	
	<!-- end -->
	
	
	
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>