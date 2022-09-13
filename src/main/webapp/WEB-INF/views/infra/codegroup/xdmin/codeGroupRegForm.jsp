<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <style>
    a{
      text-decoration-line: none;
    }
  </style>
</head>
<body>
	
	<!-- start -->
	
	<form method="post" id="form" name="form" action="/codeGroup/codeGroupList">
		<!-- 상단목록 -->
		 <div class="container-md">
			<nav class="navbar sticky-top">
			    <a class="navbar-brand" href="codeList.html">
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
			        <a class="nav-link active" aria-current="page" href="#">Navbar</a>
			        <a class="nav-link" href="#">회원관리</a>
			        <a class="nav-link" href="#">서비스관리</a>
                    <a class="nav-link" href="#">사이트관리</a>
                    <a class="nav-link" href="#">로그관리</a>
			        <a class="nav-link" href="#">시스템관리</a>
			        <a class="nav-link" href="#">시스템관리</a>
			      </div>
			    </div>
			</nav>
            <span class="fs-2">코드그룹 관리</span>
            <div class="row mt-5">
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">코드그룹 코드</label>
                    <input type="text" class="form-control" id="codeGroup" name="codeGroup" placeholder="영문(대소문자),숫자" value="<c:out value="${item.seq}"/>">
                    <input type="hidden" name="seq" value="<c:out value="${item.seq}"/>">
                </div>
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">코드그룹 코드(Another)</label>
                    <input type="text" class="form-control" id="exampleFormControlInput1" name="" placeholder="영문(대소문자),숫자">
                </div>
             </div>
             <div class="row">
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">코드그룹 이름 (한글)</label>
                    <input type="text" class="form-control" id="codeNameK" name="codeNameK" value="<c:out value="${item.codeNameK }"/>" placeholder="한굴,숫자">
                </div>
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">코드그룹 이름 (영문)</label>
                    <input type="text" class="form-control" id="codeNameEn" name="codeNameEn" value="<c:out value="${item.codeNameEn }"/>" placeholder="영문(대소문자),숫자">
                </div>
             </div>
             <div class="row">
                <div class="col-6">
                    <label for="exampleFormControlInput1" class="form-label">사용여부</label>
                    <select class="form-select" id="shDelNy" name="shDelNy" aria-label="Default select example">
                        <option selected>사용여부</option>
                        <option value="1">Y</option>
                        <option value="2">N</option>
                      </select>
                </div>
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">순서</label>
                    <input type="text" class="form-control" name="" id="" placeholder="숫자">
                </div>
             </div>
             <div class="row">
                <div class="col-6 mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">설명</label>
                    <textarea class="form-control" id="" rows="3"></textarea>
                </div>
                <div class="col-6">
                    <label for="exampleFormControlInput1" class="form-label">삭제여부</label>
                    <select class="form-select" aria-label="Default select example">
                        <option selected>삭제여부</option>
                        <option value="1">Y</option>
                        <option value="2">N</option>
                      </select>
                </div>
             </div>
             <div class="row">
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">예비1 (varchar type)</label>
                    <input type="text" class="form-control" id="" name="" placeholder="영문(대소문자),숫자">
                </div>
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">예비2 (varchar type)</label>
                    <input type="text" class="form-control" id="" name="" placeholder="영문(대소문자),숫자">
                </div>
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">예비3 (varchar type)</label>
                    <input type="text" class="form-control" id="" name="" placeholder="영문(대소문자),숫자">
                </div>
             </div>
             <div class="row">
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">예비1 (int type)</label>
                    <input type="text" class="form-control" id="" name="" placeholder="영문(대소문자),숫자">
                </div>
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">예비2 (int type)</label>
                    <input type="ttext" class="form-control" id="" name="" placeholder="영문(대소문자),숫자">
                </div>
                <div class="col-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">예비3 (int type)</label>
                    <input type="text" class="form-control" id="" name="" placeholder="영문(대소문자),숫자">
                </div>
                 <div class="col-6 mb-3">
                	<input type="radio" id="gender1" name="gender" value="1">남성
                	<input type="radio" id="gender2" name="gender" value="2">여성
                	<input type="radio" id="gender3" name="gender" value="3">기타
                </div>
                  <div class="col-6 mb-3">
                	<input type="checkbox" id="hobby1" name="hobby" value="1">산책
                	<input type="checkbox" id="hobby2" name="hobby" value="2">등산
                	<input type="checkbox" id="hobby3" name="hobby" value="3">러닝
                	<input type="checkbox" id="hobby4" name="hobby" value="4">수영
                	<input type="checkbox" id="hobby5" name="hobby" value="5">먹기
                </div>
             </div>
             <!-- 하단 아이콘 -->
             <div class="row">
                <div class="col">
                  <a href="codeGroupList" style="color:black">
                    <button type="button" style="background-color: white;">
                      <i class="fa-solid fa-bars"></i>
                    </button>
                  </a>
                </div>
                <div class="col text-end">
                	<!-- Uelete -->
                   <button type="button" id="btnModalUelete" style="background-color: red;">
                     <i class="fa-solid fa-xmark" style="color:white"></i>
                   </button>
                   <!-- Delete -->
                  <button type="button" id="btnModalDelete" style="background-color: white;">
                    <i class="fa-solid fa-trash-can" style="color:red"></i>
                  </button>
                  <!-- UpDate -->
                  <button type="button" name="" id="btnSave" style="background-color: white;">
                    <i class="fa-solid fa-bookmark" style="color:green"></i>
                  </button>
                  <!-- <button id="btnSave" class="border-0 btn btn-sm bg-success shadow" type="submit" onclick="validation()">
                      <i class="fa-regular fa-bookmark" style="color: white;"></i>
                  </button> -->
                </div>
             </div>
        </div> <!--컨테이너 끝-->
       </form>
       
	<!-- script -->
	
	
	  <script type="text/javascript">
        
    	var goUrlList = "/codeGroup/codeGroupList"; 				/* #-> */
    	var goUrlInst = "/codeGroup/codeGroupInst"; 				/* #-> */
    	var goUrlUpdt = "/codeGroup/codeGroupUpdt";					/* #-> */
    	var goUrlUele = "/codeGroup/codeGroupUelete";				/* #-> */
    	var goUrlDele = "/codeGroup/codeGroupDelete";				/* #-> */
    	
   		var seq = $("input:hidden[name=seq]");						/* #-> */
    	
    	var form = $("form[name=form]");
    	
    	
    	$("#btnSave").on("click", function(){
    		if (seq.val() == "0" || seq.val() == ""){
    	   		// insert
    	   		form.attr("action", goUrlInst).submit();
    	   	} else {
    	   		// update
    	   		/* keyName.val(atob(keyName.val())); */
    	   		form.attr("action", goUrlUpdt).submit();
    	   	}
    	}); 
    	
    	$("#btnModalUelete").on("click", function(){
    		form.attr("action", goUrlUele).submit();
    	});
    	
    	
    	$("#btnModalDelete").on("click", function(){
    		form.attr("action", goUrlDele).submit();
    	});
      
   </script>
	
	
	<!-- script end -->
	
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>