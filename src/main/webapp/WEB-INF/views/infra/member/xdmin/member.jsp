<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="CodeServiceImpl"
	class="com.hongcheol.march.modules.code.CodeServiceImpl" />

<%-- <%@ page import = "com.hongcheol.march.modules.code.*" %> --%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<style type="text/css"></style>
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<form method="post" name="form">
		<input type="hidden" name="thisPage"
			value="<c:out value="${vo.thisPage }" default="1"/>"> <input
			type="hidden" name="rowNumToShow"
			value="<c:out value="${vo.rowNumToShow }"/>"> <input
			type="hidden" name="seq" value='<c:out value="${vo.seq }"></c:out>'>
		<!-- 상단목록 -->
		<div class="container-md">
			<nav class="navbar sticky-top">
				<a class="navbar-brand" href="../listChoice/choicList.html"> <image
						alt="" src="../../resources/images/kbcar.jpg" width="70px"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
					aria-controls="offcanvasNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="offcanvas offcanvas-end" tabindex="-1"
					id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
					<div class="offcanvas-header">
						<h5 class="offcanvas-title" id="offcanvasNavbarLabel">
							<image alt="" src="../../resources/images/kbcar.jpg"
								width="100px">
						</h5>
						<button type="button" class="btn-close"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
						<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#"> <image alt=""
										src="../../resources/images/person.png" width="100x"></a>
							</li>
							<hr>
							<li class="nav-item"><a class="nav-link" href="#"
								style="text-align: end;">로그인</a></li>
							<li class="nav-item"><a class="nav-link" href="#"
								style="text-align: end;">로그아웃</a></li>
							<hr>
					</div>
				</div>
			</nav>
			<nav class="navbar navbar-expand-lg bg-warning">
				<a class="navbar-brand" href="#"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<a class="nav-link active" aria-current="page" href="#">Home</a> <a
							class="nav-link" href="#">코드그릅관리</a> <a class="nav-link" href="#">코드관리</a>
						<a class="nav-link disabled">회원관리</a>
					</div>
				</div>
			</nav>
			<img src="../../resources/images/listBg.jpg"
				class="rounded mx-auto d-block" alt="...">
			<!-- 회원검색 -->
			<div class="container border px">
				<div class="row p-2">
					<div class="col">
						<select class="form-select" id="shDelNy" name="shDelNy"
							aria-label="Default select example">
							<option value=""
								<c:if test="${empty vo.shDelNy }">selected</c:if>>삭제여부</option>
							<option value="0"
								<c:if test="${vo.shDelNy eq 0 }">selected</c:if>>N</option>
							<option value="1"
								<c:if test="${vo. shDelNy eq 1}">selected</c:if>>Y</option>
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
						<input type="text" id="DateStar" value="시작일"
							class="form-control form-control-sm hasDatepicker"
							autocomplete="off">
					</div>
					<div class="col mt-1">
						<input type="text" id="DateEnd" value="종료일"
							class="form-control form-control-sm hasDatepicker"
							autocomplete="off">
					</div>
					<div class="row row-cols-sm-6">
						<div class="col p-2">
							<select class="form-select" id="shOption" name="shOption"
								aria-label="Default select example">
								<option value=""
									<c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
								<option value="1"
									<c:if test="${vo.shOption eq 1}">selected</c:if>>번호</option>
								<option value="2"
									<c:if test="${vo.shOption eq 2}">selected</c:if>>이름</option>
								<option value="3"
									<c:if test="${vo.shOption eq 3}">selected</c:if>>아이디</option>
							</select>
						</div>
						<div class="col p-1">
							<div class="form-floating mb-3">
								<input onkeyup="filter()" type="text" class="form-control"
									id="value" placeholder=" search"> <label
									for="floatingInput"> search</label>
							</div>
						</div>
						<div>
							<button type="button"
								class="btn btn-promary btn-sm border p-1 mt-3" id="searchBtn">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 회원리스트 -->
			<c:set var="listCodeGender"
				value="${CodeServiceImpl.selectListCachedCode('2')}" />
			<c:set var="listCodearea"
				value="${CodeServiceImpl.selectListCachedCode('3')}" />
			<c:out
				value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }" />
			<table class="table table-hover">
				<tr class="table-warning sear">
					<th><input type="checkbox" name="check" value="selectAll"
						onclick="selectAll(this)"></th>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>성별</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>이메일</th>
					<th>생년월일</th>
				</tr>
				<c:choose>
					<c:when test="${fn:length(list) eq 0 }">
						<tr>
							<td class="text-center" colspan="12">There is no date!</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="list" varStatus="status">
							<tr class="search">
								<td><input type="checkbox" name="check"></td>
								<td>${list.seq }</td>
								<td>${list.id }</td>
								<td><a
									href="/member/memberRegForm?seq=<c:out value="${list.seq }"/>">${list.name}</a>
								</td>
								<td><c:forEach items="${listCodeGender}" var="listgender"
										varStatus="statusGender">
										<c:if test="${list.gender eq listgender.seq}">
											<c:out value="${listgender.codeGroupCode }" />
										</c:if>
									</c:forEach></td>
								<td>${list.number}</td>
								<td><c:forEach items="${listCodearea}" var="listarea"
										varStatus="statusarea">
										<c:if test="${list.area eq listarea.seq}">
											<c:out value="${listarea.codeGroupCode }" />
										</c:if>
									</c:forEach></td>
								<td>${list.email}</td>
								<td>${list.dob}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
			<!-- 페이지 목록 -->
			<!-- pagination s -->
			<%@include file="../../pagination/xdmin/pagination.jsp"%>
			<!-- pagination e -->
			<div class="row">
				<div class="col-1">
					<button type="button" class="btn btn-warning"
						data-bs-toggle="modal" data-bs-target="#exampleModal">
						<i class="fa-solid fa-trash-can"></i>
					</button>
				</div>
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">삭제하시겠습니까?</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">삭제하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">아니요</button>
								<button type="button" class="btn btn-warning">예</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-1 px-5 offset-10">
					<a href="memberRegForm">
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
	<!-- paging start -->
	
	<script>
		var goUrlList = "/member/member";
		var from = $("form[name=form]");
		
		$("#searchBtn").on("click", function() {
			form.attr("action", goUrlList).submit();
		})
	</script>
	
	<script type="text/javascript">
		var codeList = "/member/member";
		var form = $("form[name=form]");
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action",codeList).submit();
		}
	</script>
	<!-- paging end-->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>