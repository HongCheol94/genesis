<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
    
 <jsp:useBean id="CodeServiceImpl" class="com.hongcheol.march.modules.code.CodeServiceImpl" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="../../resources/css/main.css" rel="stylesheet" type="text/css">
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	</head>
<body>
	<!-- start -->
	
	<form method="post">
		<c:set var="listCodemadeby" value="${CodeServiceImpl.selectListCachedCode('13')}" />
		<c:set var="listCodemodel"  value="${CodeServiceImpl.selectListCachedCode('12')}" />
		<c:set var="listCodemadeCountry" value="${CodeServiceImpl.selectListCachedCode('15')}" />
		<c:set var="listCodearea" value="${CodeServiceImpl.selectListCachedCode('3')}" />
		<c:set var="listCodecarEngine" value="${CodeServiceImpl.selectListCachedCode('4')}" />
		<div class="container-md">
			<div class=text-end>
				<a href="myPage">
					<p class="fs-3">
						${sessName }님
					 </p>
				 </a>
			</div>
		<!-- 상단목록 -->
		<nav style="--bs-breadcrumb-divider: '';" aria-label="breadcrumb">
		  <ol class="breadcrumb">
		  	<li class="breadcrumb-item col-1"><a href="main"><image src="../../resources/images/kblogo.png"></a></li>
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
		    	<a href="joinMember" class="top-menu">
		    		<p class="fs-1 mt-1">
		    			<i class=" fas fa-light fa-user-plus"></i>
	    			</p>
				</a>
			</li>
		    <li class="breadcrumb-item active col-1 mt-1" aria-current="page">
		    	<p class="fs-4 mt-3">
			    	<button type="button" id="btnLogout" style="background-color:white;">
		    				<i class="fa-solid fa-right-from-bracket"></i>
	    			</button>
    			</p>
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
				<select class="form-select" aria-label="Default select example" id="madeCountry" onchange="setComboBox1(this)">
					 <option value="0">제조국</option>
					 <c:forEach items="${listCodemadeCountry}" var="listmadeCountry" varStatus="statusmadeCountry">
						<option value="${listmadeCountry.seq }" <c:if test="${item.madeCountry eq listmadeCountry.seq }">selected</c:if>><c:out value="${listmadeCountry.codeNameKo }"/></option>
					</c:forEach>
				</select>
				</div>
				<div class="col-3 mt-4 mb-4">
				<select class="form-select" aria-label="Default select example" id="madeby" onchange="setComboBox2(this)">
					  <option value="0">제조사</option>
					  <c:forEach items="${listCodemadeby}" var="listMadeby" varStatus="statusMadeby">
					  	<option class="select1" value="${listMadeby.seq}"  <c:if test="${item.madeby eq listMadeby.seq}">selected</c:if>><c:out value="${listMadeby.codeNameKo }"/></option>
					  </c:forEach>
				</select>
				</div>
				<div class="col-3 mt-4 mb-4">
				<select class="form-select" aria-label="Default select example" id="model" name="model">
					<option value="0">모델</option>
					<c:forEach items="${listCodemodel}" var="listmodel" varStatus="statusmodel">
						<option class="select2" value="${listmodel.seq }"  onchange="" <c:if test="${item.model eq listmodel.seq }">selected</c:if>><c:out value="${listmodel.codeNameKo }"/></option>
					</c:forEach>
				</select>
				</div>
				<div class="d-grid gap-2 col-3 mx-auto mt-3">
				  <button class="btn btn-outline-warning" type="button">검색</button>
				</div>
				<div class="col-3 mb-4">
					<input type="text" placeholder="내용을 입력해주세요" class="form-control">
				</div>
				<div class="col-3 mb-4">
					<button type="submit" class="btn btn-outline-secondary">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</div>
			</div>
			
			<!-- 추천차량 -->
			
			<div style="float:right" class="row mt-5">
				<img src="../../resources/images/main/cadillac.jpg" style="height:745px">
			</div>
				<div class="row row-cols-1 row-cols-md-3 g-4 mt-4">
					<c:forEach items="${list}" var="list" varStatus="status">
					  <div class="col">
						<a href="/buy" style="color:black">
							<div class="card">
							<img src="../../resources/images/main/mainCar(1).jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${list.carName}</h5>
								<p class="card-text">
									${list.carAge}<br>${list.carMleage}km
									ㅣ<c:forEach items="${listCodecarEngine}" var="listcarEngine" varStatus="statuscarEngine">
									  	<c:if test="${list.carEngine eq listcarEngine.seq}">
											<c:out value="${listcarEngine.codeGroupNameK }" />
										</c:if>
									  </c:forEach>
									ㅣ<c:forEach items="${listCodearea}" var="listarea" varStatus="statusarea">
									  	<c:if test="${list.area eq listarea.seq}">
											<c:out value="${listarea.codeGroupNameK }" />
										</c:if>
									  </c:forEach>
								</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">
									<p class="fs-5">${list.price}만원</p>	
								</small>
								</div>
							</div>
						</a>
					  </div>
			 	 </c:forEach>
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
	
	<!-- --------------------------------------------------- script ---------------------------------------------------------- -->
	
		<!-- 로그아웃 -->
		<script type="text/javascript">
			$("#btnLogout").on("click", function(){
				alert("Asdasd");
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/member/logoutProc"
					,data: {}
					,success: function(response) {
						if(response.rt == "success") {
							location.href = "login";
						} else {
							// by pass
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			});
		</script>
		<!-- 로그아웃 end -->
	
		
		<script>
		<!-- 3단검색 ajax -->
		
		function setComboBox1(o){
			var code = o.value;
			
			$("option").remove(".select1");
			$("option").remove(".select2");
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "madeCountry"
				,data: {"madeCountry" : code}
				,success: function(response) {
					
					<c:set var="listCodemadeby" value="${CodeServiceImpl.selectListCachedCode('13')}"/>
					var arr = new Array();
					<c:forEach items="${listCodemadeby}" var="listmadeby" varStatus="statusmadeby">
						arr.push({
							num : "${listmadeby.seq}"				/* 여기 */
							,name : "${listmadeby.codeNameKo}"   				/* 여기 */
						});
					</c:forEach>
					for(var i=0; i<response.searchMadeby.length; i++){
						var list = response.searchMadeby[i];
						var num = 0;
						for(var j=0; j<arr.length; j++){
							if(list.madeby == arr[j].num){
								list.madeby = arr[j].name;
								num = arr[j].num
							}
						}
						$("#madeby").append('<option class="select1" value="' + num +'" <c:if test="${'+ list.madeby +'eq '+ num + ' }">selected</c:if>>'+ list.madeby+'</option>')
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		}
		
		function setComboBox2(o){
			var code = o.value;
			var madeCountry = $("#madeCountry").val();
			
			$("option").remove(".select2");

   			$.ajax({
   				async: true 
   				,cache: false
   				,type: "post"
   				/* ,dataType:"json" */
   				,url: "madeby"
   				/* ,data : $("#formLogin").serialize() */
   				,data : { "madeby" : code, "madeCountry" : madeCountry }
   				,success: function(response) {
   					   					
   					<c:set var="listCodeModel" value="${CodeServiceImpl.selectListCachedCode('12') }" />
					var arr = new Array();
					<c:forEach items="${listCodeModel}" var="listModel" varStatus="statusModel">
						arr.push({
							num : "${listModel.seq}"
							,name : "${listModel.codeNameKo}"
						});
					</c:forEach>
					for(var i=0; i<response.searchModel.length; i++){
						 var list = response.searchModel[i];
						 var num =0;
						 for(var j=0; j<arr.length; j++){
							 if(list.model == arr[j].num){
						 		 list.model = arr[j].name;
						 		 num = arr[j].num
							 }
						 }
						 $("#model").append('<option class="select2" value="' + num +'" <c:if test="${'+ list.model +'eq '+ num + ' }">selected</c:if>>'+ list.model+'</option>')
					}                                                                                                                                                                              
   				}
   				,error : function(jqXHR, textStatus, errorThrown){
   					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
   				}
   			});
	 
		}
		</script>
		<!-- 3단검색 ajax end -->
	
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>