<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<style>
		.foot {
		background-color: #FDFDFD;
		border-top: 1px solid border-color #F3F3F3;;
	}

	a {
		text-decoration-line: none;
	}
	</style>
</head>
<body>
	
	<!-- start -->
	<form method="post" action="./memberList2.html">
		<nav class="navbar sticky-top">
		    <a class="navbar-brand" href="#">
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
		            <a class="nav-link" href="#" style="text-align: end;">?????????</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#" style="text-align: end;">????????????</a>
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
		        <a class="nav-link" href="#">??????????????????</a>
		        <a class="nav-link" href="#">????????????</a>
		        <a class="nav-link disabled">????????????</a>
		      </div>
		    </div>
		</nav>
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-md-2">
					<image alt="" src="../images/cUpListbg.jpg" width="300px"></image>
				</div>
				<div class="col-md-2 mt-5 px-0">
					<p class="fs-1">????????????</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="ID" placeholder="???" value="???">
						<label for="floatingInput">???</label>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="ID" placeholder="??????" value="??????">
						<label for="floatingInput">??????</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mb-3">
					  <input type="ID" class="form-control" id="ID" placeholder="ID" value="destiny">
					  <label for="floatingInput">?????????</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating">
					  <input type="password" class="form-control" id="floatingPassword" placeholder="Password" value="**********">
					  <label for="floatingPassword">????????????</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mb-1 mt-3" >
					  <input type="passwordre" class="form-control" id="passwordre" placeholder="Passwordre" value="**********">
					  <label for="floatingInput">???????????? ??????</label>
			   	   </div>
			   </div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mt-3">
						<input type="text" class="form-control" id="floatingPassword" placeholder="??????????????????" value="hongcheol_kim">
						<label for="floatingEmail">?????????</label>
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
				<div class="col-md-2 mt-4 btn-group">
					  <button type="button" class="btn btn-outline-warning dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
					    010
					  </button>
					  <ul class="dropdown-menu">
					    <li><a class="dropdown-item" href="#">??????</a></li>
					    <li><a class="dropdown-item" href="#">010</a></li>
					    <li><a class="dropdown-item" href="#">016</a></li>
					    <li><a class="dropdown-item" href="#">017</a></li>
					  </ul>
				</div>
				<div class="col-md-2">
					<div class="form-floating mt-3">
					  <input type="text" class="form-control" id="floatingPassword" placeholder="callnumber" value="33099715">
					  <label for="floatingPassword">????????????</label>
				  </div>
			  </div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2 form-floating mt-3">
					<input type="text" class="form-control" id="floatingPassword" placeholder="??????????????????" value="11687">
					<label for="floatingadress">????????????</label>
				</div>
				<div class="col-md-2 mt-3 btn-group">
					<button type="button" class="btn btn-outline-warning btn-lg">????????????</button>
				</div>
			</div>
				<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mt-3">
					  <input type="text" class="form-control" id="floatingPassword" placeholder="callnumber" value="????????? ???????????? ????????? 111">
					  <label for="floatingaddress">??????</label>
				  </div>
			  </div>
			</div>
			<div class="row justify-content-center">
				<div class="col-2 p-4 offset-1 px-0">
					<a href="../dminMember/d_memberModForm.html">	
					  <button type="button" class="btn btn-outline-warning">????????????</button>
				  	</a>
					  <button type="button" class="btn btn-outline-warning">&nbsp;???&nbsp;&nbsp;&nbsp;&nbsp;???&nbsp;</button>
				</div>
			</div>
			<div class="foot">
				<div class="row justify-content-center">
					<div class="col text-center">
						<br><image alt="" src="../../resources/image/kbcarmark.png"></image>
						<br>
						<br>???????????? ??? ???????????????????????? ??? ????????????????????? ????????????
						<br>
						<br>KB???????????? ???????????? ???????????? ????????? ???????????? ??? ?????? ???????????? ????????? ?????????, ?????? ????????? ?????? ????????? ???????????? ??????????????? ????????? ??????????????????.
						<br>??? ?????????/??? ?????? ?????? ??????, ?????????, UI ?????? ?????? ?????? ??????, ??????, ???????????? ?????? ????????? ?????? ????????? ????????? ???????????????.
						<br>
						<br>??????????????? ????????? ???????????? 301 ?????????????????? KB????????????
						<br>????????????: ?????????
						<br>????????????????????? : 214-85-08573
						<br>??????????????? ????????? ?????? : 20201101-0007
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