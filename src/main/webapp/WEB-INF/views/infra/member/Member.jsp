<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<style type="text/css">
	
	</style>	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
	<form method="post" action="./memberList2.html">
		<!-- 상단목록 -->
		 <div class="container-md">
			<nav class="navbar sticky-top">
			    <a class="navbar-brand" href="../listChoice/choicList.html">
			    	<image alt="" src="../images/kbcar.jpg" width="70px">
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
			        <a class="nav-link active" aria-current="page" href="#">Home</a>
			        <a class="nav-link" href="#">코드그릅관리</a>
			        <a class="nav-link" href="#">코드관리</a>
			        <a class="nav-link disabled">회원관리</a>
			      </div>
			    </div>
			</nav>
			<img src="../images/listbg.jpg" class="rounded mx-auto d-block" alt="...">
			<!-- 회원검색 -->
			<div class="container border px">
				<div class="row p-2">
					<div class="col">
						<select class="form-select" aria-label="Default select example">
							<option selected>삭제여부</option>
							<option value="삭제">삭제</option>
							<option value="미삭제">미삭제</option>
						</select>
					</div>
					<div class="col">
						<select class="form-select" aria-label="Default select example">
							<option selected>날짜</option>
							<option value="가입일">가입일</option>
							<option value="수정일">수정일</option>
							<option value="생일">생일</option>
						</select>
					</div>
					<div class="col mt-1">
						<input type="text" id="DateStar" value="시작일" class="form-control form-control-sm hasDatepicker" autocomplete="off"	>
					</div>
					<div class="col mt-1">
						<input type="text" id="DateEnd" value="종료일" class="form-control form-control-sm hasDatepicker" autocomplete="off"	>
					</div>
					<div class="row row-cols-sm-6">
						<div class="col p-2">
							<select class="form-select" aria-label="Default select example">
								<option selected>검색구분</option>
								<option value="번호">번호</option>
								<option value="이름">이름</option>
								<option value="아이디">아이디</option>
								<option value="회원번호">회원번호</option>
							</select>
						</div>
						<div class="col p-1">
							<div class="form-floating mb-3">
							  <input onkeyup="filter()" type="text" class="form-control" id="value" placeholder=" search">
							  <label for="floatingInput"> search</label>
							</div>
						</div>
						<div>
							<button type="button" class="btn btn-promary btn-sm border p-1 mt-3" >
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 회원리스트 -->
			<table class="table table-hover">
				<tr class="table-warning sear">
					<th>
						<input type="checkbox" name="check" value="selectAll" onclick="selectAll(this)">
					</th>
					<th>번호</th>
					<th>회원번호</th>
					<th>이름</th>
					<th>성별</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>이메일</th>
					<th>가입일</th>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>1</td>
					<td>00114</td>
					<td class="sn">
						<a href="../dminMember/d_memberView.html" style="color:black; text-decoration-line: none;">마동석</a>
					</td>
					<td>남자</td>
					<td>010-1828-7163</td>
					<td>서울시 서초구 잠원동</td>
					<td>madongsuck@naver.com</td>
					<td>2000.04.26</td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>2</td>
					<td>00564</td>
					<td class="sn">김소은</td>
					<td>여자</td>
					<td>010-4852-8251</td>
					<td>서울시 강남구 테헤란로</td>
					<td>soeun@naver.com</td>
					<td>2005.02.26</td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>3</td>
					<td>00264</td>
					<td class="sn">정우성</td>
					<td>남자</td>
					<td>010-7217-1375</td>
					<td>서울시 도봉구 방학동</td>
					<td>menam@nate.com</td>
					<td>1998.10.12</td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>4</td>
					<td>01038</td>
					<td class="sn">이나영</td>
					<td>여자</td>
					<td>010-3345-8762</td>
					<td>서울시 강남구 테헤란로</td>
					<td>nayong@naver.com</td>
					<td>1999.03.22</td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>5</td>
					<td>00342</td>
					<td class="sn">송혜교</td>
					<td>여자</td>
					<td>010-4211-7531</td>
					<td>서울시 서초구 반포동</td>
					<td>menam@nate.com</td>
					<td>1998.10.12</td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>6</td>
					<td>00482</td>
					<td class="sn">이동욱</td>
					<td>남자</td>
					<td>010-1583-6648</td>
					<td>경기도 의정부시 의정부동</td>
					<td>menam@nate.com</td>
					<td>2001.08.16</td>
				</tr>
			</table>
			<!-- 페이지 목록 -->
			<div class="row justify-content-center">
				<div class="col-10">
					<nav aria-label="Page navigation example">
					  <ul class="pagination justify-content-center">
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
				</div>
			</div>
			<div class="row">
				<div class="col-1">
					<button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
					  <i class="fa-solid fa-trash-can"></i>
					</button>
				</div>
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">삭제하시겠습니까?</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        삭제하시겠습니까?
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
				        <button type="button" class="btn btn-warning">예</button>
				      </div>
				    </div>
				  </div>
				</div>
				<div class="col-1 px-5 offset-10">
					<a href="memberRegForm.html">
						<button type="button" class="btn btn-outline-warning  btn-lg">
							<i class="fa-solid fa-user-plus"></i>
						</button>
					</a>
				</div>
			</div>
		</div>
	</form>
	
	<script type="text/javascript">
	function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('check');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		}
	
		const myModal = document.getElementById('myModal')
		const myInput = document.getElementById('myInput')
	
		myModal.addEventListener('shown.bs.modal', () => {
		  myInput.focus()
		})
		
		
		 function filter(){

        var value, name, item, i;

        value = document.getElementById("value").value.toUpperCase();
        item = document.getElementsByClassName("search");

        for(i=0;i<item.length;i++){
          name = item[i].getElementsByClassName("sn");
          if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
            item[i].style.display = "flex";
          }else{
            item[i].style.display = "none";
          }
        }
      }
	</script>
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
	
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>