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
	<!-- DatePicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	
	<!-- start -->
	<form method="get" action="/codeGroup/codeGroupList" name="form" id="formList">
		<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
		<!-- 상단목록 -->
		 <div class="container-md">
			<nav class="navbar sticky-top">
			    <a class="navbar-brand" href="codeGroupList.html">
			    	<image alt="" src="../../resources/images/kbcar.jpg" width="70px">
			    </a>
			    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
			      <div class="offcanvas-header">
			        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
			        	<image alt="" src="../../resources/images/kbcar.jpg" width="100px">
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
			<img src="../../resources/images/listBg.jpg" class="rounded mx-auto d-block" alt="...">
			<span class="fs-2">코드그룹 관리</span>
			<!-- 코드검색 -->
			<div class="container border px mt-3 mb-3">
				<div class="row p-2 mt-3">
					<div class="col">
						<select class="form-select" id="shDelNy" name="shDelNy" aria-label="Default select example">
							<option value=""<c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
							<option value="0" <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
							<option value="1" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
						</select>
					</div>
					<div class="col">
						<select class="form-select" aria-label="Default select example">
							<option selected>날짜</option>
							<option value="등록일">등록일</option>
							<option value="수정일">수정일</option>
						</select>
					</div>
					<div class="col mt-1">
						<input type="text" id="datepicker" name="datepicker" value="등록일" class="form-control form-control-sm"	>
					</div>
					<div class="col mt-1">
						<input type="text" id="datepicker2" name="datepicker2" value="수정일" class="form-control form-control-sm">
					</div>
					<div class="row row-cols-sm-6">
						<div class="col p-2">
							<select class="form-select" id="shOption" name="shOption" aria-label="Default select example">
								<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
								<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>번호</option>
								<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹</option>
							</select>
						</div>
						<div class="col mt-2">
							<input onkeyup="filter()" type="text" class="form-control" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>" placeholder=" search">
					  	</div>
						<div class="col mt-2">
							<button type="submit">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 회원리스트 -->
			<div id="lita"></div>
			<!-- 회원리스트 end-->
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
					<a type="button" class="btn btn-outline-warning  btn-lg"  href="codeGroupRegForm">
						<i class="fa-solid fa-user-plus"></i>
					</a>
				</div>
			</div>
	</form>
	<!-- DatePicker start -->
	 <script>
		   $.datepicker.setDefaults({
		        dateFormat: 'yy-mm-dd',
		        prevText: '이전 달',
		        nextText: '다음 달',
		        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		        showMonthAfterYear: true,
		        yearSuffix: '년'
		    });
		 
		  $( function() {
		    $( "#datepicker").datepicker();
		    $( "#datepicker2").datepicker();
		  } );
	  </script>
  	<!-- DatePicker end -->
	<script type="text/javascript">
		 function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('check');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		};
	
   	</script>
      	<!-- paging start -->
      	<script type="text/javascript">
			var codeGroupList = "/codeGroup/codeGroupList";
			var form = $("form[name=form]");
			goList = function(thisPage) {
				$("input:hidden[name=thisPage]").val(thisPage);
				form.attr("action", codeGroupList).submit();
			};
			<!-- paging end -->
		</script>
		
		<script>
		
			$(document).ready(function(){
				setLita();
			});
			
			var goUrlList = "/codeGroup/codeGroupAjaxList";
			var goUrlLita = "/codeGroup/codeGroupAjaxLita";
			
			function setLita() {
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: goUrlLita
					,data : $("#formList").serialize()
					/* ,data : {  } */
					,success: function(response) {
						console.log(response);				
						$("#lita").empty();
						$("#lita").append(response);
						/* window.location.hash = '#page' + page;
						page++;
		 */
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			}
		</script>
		
		<script>
			var seq = $("input:hidden[name=Seq]");
		
			$('#btnForm').on("click", function() {
				goForm(0);                
			});
		
			goForm = function(keyValue) {
		    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
		    	seq.val(keyValue);
				form.attr("action", goUrlForm).submit();
			}
		</script>
		
		<!-- 엑셀다운 -->
	<script>
	
		var excelUri = "/code/excelDownload";
	
		$("#btnExcel").click(function() {
			form.attr("action", excelUri).submit();
		});
	</script>
	
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	
   
</body>
</html>