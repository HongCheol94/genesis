<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<style>
		.foot {
		background-color: #FDFDFD;
		border-top: 1px solid border-color #F3F3F3;;
		}
	</style>
</head>
<body>
	
	<!-- start -->
	<div class="container-md fixed">
			<nav class="navbar sticky-top">
			    <a class="navbar-brand" href="#">
			    	<image alt="" src="../../resources/images/kbcar.jpg" width="70px">
			    </a>
			    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
			      <div class="offcanvas-header">
			        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
			        	<image alt="" src="./image/kbcar.jpg" width="100px">
		        	</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			      </div>
			      <div class="offcanvas-body">
			        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
			          <li class="nav-item">
			            <a class="nav-link active" aria-current="page" href="#">
			            	<image alt="" src="../../resources/images/person.png" width="100x">
		            	</a>
			          </li>
			          <hr>
			          <li class="nav-item">
			            <a class="nav-link" href="../Login/dminLoginForm.html" style="text-align: end;">로그인</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="../Login/dminLoginForm.html" style="text-align: end;">로그아웃</a>
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
		<div class=container>
			<div class="row pt-3">
			  <div class="col-sm-6 text-center">
			    <div class="card">
			      <div class="card-body" style="border-style:ridge;">
			        <span class="card-title fs-1 fw-bold">
						<i>User</i>
					</span>
			        <p class="card-text">
			        	<img alt="딜러리스트이미지" src="../../resources/images/dlistbg.jpg">
		        	</p>
			        <a href="main" class="btn btn-warning mt-3">확인하기</a>	
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-6 text-center">
			    <div class="card">
			      <div class="card-body" style="border-style:ridge;">
			       <span class="card-tittle fs-1 fw-bold">
						<i>Admin</i>
					</span>
			        <p class="card-text">
			        	<img alt="회원 리스트이미지" src="../../resources/images/clistbg.png">
		        	</p>
			       <a href="codeGroup/codeGroupList" class="btn btn-warning mt-3">확인하기</a>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- 풋 -->
			<div style="height:50px">
				
			</div>
			<div class="foot">
			<div class="col-12 text-center mb-3 pt-4">
				<image alt="" src="../images/kbfoot.png"></image>
			<div class="col-12 text-center mb-3">
				<i>COPVRIGHT 2018 KB CAPITAL.CO.LTD.ALL RIGHTS RESERVED.</i>
			</div>
			</div>
		</div>
			
				
				
		
	
	
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>