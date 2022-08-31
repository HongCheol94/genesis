<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form method="post" action="./memberList2.html">
		<!-- 상단목록 -->
		 <div class="container-md">
			<nav class="navbar sticky-top">
			    <a class="navbar-brand" href="codeList.html">
			    	<image alt="" src="../../../webapp/resources/images/kbcar.jpg" width="70px">
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
			<img src="../images/listbg.jpg" class="rounded mx-auto d-block" alt="...">
			<span class="fs-2">코드 관리</span>
			<!-- 코드검색 -->
			<div class="container border px mt-3 mb-3">
				<div class="row p-2 mt-3">
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
						<div class="col mt-2">
							  <input onkeyup="filter()" type="text" class="form-control" id="value" placeholder=" search">
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
					<th>#</th>
					<th>코드그룹 코드</th>
					<th>코드그룹 이름(한글)</th>
					<th>코드</th>
					<th>대체코드</th>
					<th>코드 이름 (한글)</th>
					<th>코드 이름 (영문)</th>
					<th>사용여부</th>
					<th>순서</th>
					<th>등록일</th>
					<th>수정일</th>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>106</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>1</td>
					<td></td>
					<td>웹-MS edge</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>105</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>2</td>
					<td></td>
					<td>웹-크림기반 edge</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>104</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>3</td>
					<td></td>
					<td>웹-오페라</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>103</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>4</td>
					<td></td>
					<td>웹-크롬</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>102</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>5</td>
					<td></td>
					<td>웹-익스</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>101</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>6</td>
					<td></td>
					<td>웹-파이어폭스</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>100</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>7</td>
					<td></td>
					<td>웹-사파리</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>99</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>8</td>
					<td></td>
					<td>웹-훼일</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>98</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>9</td>
					<td></td>
					<td>웹-기타2</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
				</tr>
				<tr class="search">
					<td>
						<input type="checkbox" name="check">
					</td>
					<td>97</td>
					<td>1</td>
					<td>공통.디바이스1</td>
					<td>10</td>
					<td></td>
					<td>웹-기타3</td>
					<td></td>
					<td>Y</td>
					<td>1</td>
					<td></td>
					<td></td>
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
					<a href="codeForm.html">
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
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>