<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

 <jsp:useBean id="CodeServiceImpl" class="com.hongcheol.march.modules.code.CodeServiceImpl" />
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/userbuy.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	<!-- start -->
	<form method="post" name="form">
		<!-- hidden -->
		<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>"> 
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>"> 
		<input type="hidden" name="seq" value='<c:out value="${vo.seq }"></c:out>'>
		<!-- hidden end -->
		<c:set var="listCodearea" value="${CodeServiceImpl.selectListCachedCode('3')}" />
		<c:set var="listCodecarEngine" value="${CodeServiceImpl.selectListCachedCode('4')}" />
		<!-- 사이드 메뉴 -->
		<div class="common-left-area">
			<h1 class="logo">
				<a href="/main">
					<img src="../../resources/images/kblogo.png">
				</a>
			</h1>
			<ul class="nav flex-column">
			  <li class="nav-item">
			    <a class="nav-link active top-menu" aria-current="page" href="#" style="color:black;">
			    	<p class="fs-3"><i class="fa-solid fa-magnifying-glass"></i>검색</p>
		    	</a>
			  </li>
			  <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="#" style="color:blue;">
			    	<p class="fs-3"><i class="fa-solid fa-cart-shopping"></i>살때</p>
		    	</a>
			  </li>
			  <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="#" style="color:red;">
		    		<p class="fs-3"><i class="fa-solid fa-copyright"></i>팔때</p>
	    		</a>
			  </li>
		      <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="#" style="color:orange">
		    		<p class="fs-3"><i class="fa-solid fa-chart-line"></i>시세</p>
	    		</a>
			  </li>
			  <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="#">
			    	<p class="fs-3"><i class="fa-solid fa-gift"></i>혜택</p>
		    	</a>
			  </li>
			  <li class="nav-item mt-4">
			    <a class="nav-link top-menu" href="#" style="color:green;">
			    	<p class="fs-3"><i class="fa-solid fa-circle-info"></i>안내</p>
		    	</a>
			  </li>
			</ul>
			<div style="height:70px">
			
			</div>
			<div>
				<img src="../../resources/images/sideHero.png">
			</div>
		</div>
		
		<!-- 중앙 상단 나브바 -->
		<div class="container">
			<div class="row" style="margin-left: 250px;">
				<div class="col-3 offset-3 mt-5">
					<input class="form-control me-2" type="search" placeholder="164.266대의 차량이 있습니다." aria-label="Search">
				</div>
				<div class="col-1 mt-5">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</div>
			</div>
		</div>
		<!-- 중앙 내용 start -->
		<div style="height: 100px">
		
		</div>
		<hr>
		<div class=container-md>
			<div class="row">
			<!-- 사이드 드롭다운 stary -->
				<div class="col-3">
					<ul class="nav nav-tabs" id="sidDropdown" role="tablist">
					  <li class="nav-item" role="presentation">
					    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">전체</button>
					  </li>
					  <li class="nav-item" role="presentation">
					    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">국산</button>
					  </li>
					  <li class="nav-item" role="presentation">
					    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">수입</button>
					  </li>
					</ul>
					<div class="tab-content" id="myTabContent">
					<!-- 사이드 드롭다운 전체 start -->
					  <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
					  	<div class="col">
					  		<div class="accordion" id="accordionPanelsStayOpenExample">
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
						      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
						        <p class="fs-4">차종</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
						       <!-- 차종 내용 start -->
						      <div class="accordion-body">
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">경차
						      		</div>
						      		<div class="col offset-2 text-end">
						      			15,376대
						      		</div>
						      	</div>
					      		<div class="row">
						      		<div class="col ">
						      			<input type="checkbox">소형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			5,751대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">준준형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			19,723대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">중형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			25,870대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">대형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			25,8886대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">스포츠카
						      		</div>
						      		<div class="col offset-2 text-end">
						      			1,633대
						      		</div>
						      	</div>
					      		<div class="row">
						      		<div class="col">
						      			<input type="checkbox">RV
						      		</div>
						      		<div class="col offset-2 text-end">
						      			6,094대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">SUV
						      		</div>
						      		<div class="col offset-2 text-end">
						      			41,486대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">승합
						      		</div>
						      		<div class="col offset-2 text-end">
						      			4,143대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">버스
						      		</div>
						      		<div class="col offset-2 text-end">
						      			138대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">트럭
						      		</div>
						      		<div class="col offset-2 text-end">
						      			17,260대
						      		</div>
						      	</div>
					      		<div class="row">
						      		<div class="col">
						      			<input type="checkbox">특수
						      		</div>
						      		<div class="col offset-2 text-end">
						      			3대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">중기
						      		</div>
						      		<div class="col offset-2 text-end">
						      			14대
						      		</div>
						      	</div>
						      </div>
						      <!-- 차종 내용 end -->
						    </div>
						  </div>
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
						       <p class="fs-4">제조사/모델</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
						      <!-- 제조사 모델 내용 start -->
						      <div class="accordion-body">
							      <div class="col">
								  	 <nav id="navbar-example2" class="navbar px-3 mb-3">
									   <a class="navbar-brand" href="#">제조사/모델</a>
									   <ul class="nav nav-pills">
									     <li class="nav-item">
									       <a class="nav-link" href="#scrollspyHeading1">국산차</a>
									     </li>
									     <li class="nav-item">
									       <a class="nav-link" href="#scrollspyHeading2">수입차</a>
									     </li>
									   </ul>
									 </nav>
									 <div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" class="scrollspy-example p-3 rounded-2" tabindex="0">
									   <h4 id="scrollspyHeading1" style="background-color:lightgray">국산차</h4>
									   <!-- 국산차 -->
										   <div class="row">
											   <div class="col text-starr">
											   		현대
											   </div>
											   <div class="col text-end">
											   		50,587대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		기아
											   </div>
											   <div class="col text-end">
											   		46,048대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		한국GM
											   </div>
											   <div class="col text-end">
											   		11,575대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		쌍용
											   </div>
											   <div class="col text-end">
											   		8,722대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		르노코리아
											   </div>
											   <div class="col text-end">
											   		8,353대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		제네시스
											   </div>
											   <div class="col text-end">
											   		4,520대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		기타
											   </div>
											   <div class="col text-end">
											   		21대
											   </div>
										   </div>
									   <!-- 수입차목록 -->
									   <h4 id="scrollspyHeading2" style="background-color:lightgray">수입차</h4>
										   <div class="row">
											   <div class="col text-starr">
											   		벤츠
											   </div>
											   <div class="col text-end">
											   		7,998대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		BMW
											   </div>
											   <div class="col text-end">
											   		7,630대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		아우디
											   </div>
											   <div class="col text-end">
											   		3,695대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		폭스바겐
											   </div>
											   <div class="col text-end">
											   		2,236대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		미니
											   </div>
											   <div class="col text-end">
											   		1,641대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		랜드로버
											   </div>
											   <div class="col text-end">
											   		1,415대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		qhfqh
											   </div>
											   <div class="col text-end">
											   		1,151대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		지프
											   </div>
											   <div class="col text-end">
											   		909대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		포드
											   </div>
											   <div class="col text-end">
											   		879대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		포르쉐
											   </div>
											   <div class="col text-end">
											   		809대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		재규어
											   </div>
											   <div class="col text-end">
											   		731대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		렉서스
											   </div>
											   <div class="col text-end">
											   		543대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		푸조
											   </div>
											   <div class="col text-end">
											   		534대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		인피니티
											   </div>
											   <div class="col text-end">
											   		401대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		혼다
											   </div>
											   <div class="col text-end">
											   		372대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		마세라티
											   </div>
											   <div class="col text-end">
											   		370대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		닛산
											   </div>
											   <div class="col text-end">
											   		354대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		링컨
											   </div>
											   <div class="col text-end">
											   		333대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		도요타
											   </div>
											   <div class="col text-end">
											   		276대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		캐딜락
											   </div>
											   <div class="col text-end">
											   		229대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		크라이슬러
											   </div>
											   <div class="col text-end">
											   		217대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		테슬라
										  	   </div>
											   <div class="col text-end">
											   		151대
											   </div>
									   	   </div>
					  					 </div>
							 	 	</div>
								 </div>
								 <!-- 제조사/모델 내용 end -->
							 </div>
						  </div>
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
						       <p class="fs-4">연식</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
						      <!-- 연식 내용 start -->
						      <div class="accordion-body">
							      <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최소</option>
								      <option>2000년</option>
								      <option>2001년</option>
								      <option>2002년</option>
								      <option>2003년</option>
								      <option>2004년</option>
								      <option>2005년</option>
								      <option>2006년</option>
								      <option>2007년</option>
								      <option>2008년</option>
								      <option>2009년</option>
								      <option>2010년</option>
								      <option>2011년</option>
								      <option>2012년</option>
								      <option>2013년</option>
								      <option>2014년</option>
								      <option>2015년</option>
								      <option>2016년</option>
								      <option>2017년</option>
								      <option>2018년</option>
								      <option>2019년</option>
								      <option>2020년</option>
								      <option>2021년</option>
								      <option>2022년</option>
								    </select>
						    	  </div> ~
						    	  <div class="col">
								     <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최대</option>
								      <option>2000년</option>
								      <option>2001년</option>
								      <option>2002년</option>
								      <option>2003년</option>
								      <option>2004년</option>
								      <option>2005년</option>
								      <option>2006년</option>
								      <option>2007년</option>
								      <option>2008년</option>
								      <option>2009년</option>
								      <option>2010년</option>
								      <option>2011년</option>
								      <option>2012년</option>
								      <option>2013년</option>
								      <option>2014년</option>
								      <option>2015년</option>
								      <option>2016년</option>
								      <option>2017년</option>
								      <option>2018년</option>
								      <option>2019년</option>
								      <option>2020년</option>
								      <option>2021년</option>
								      <option>2022년</option>
								    </select>
								  </div>
						      </div>
						      <!-- 연식 내용 end -->
						    </div>
						  </div>
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
						       <p class="fs-4">주행거리</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
						      <div class="accordion-body">
						      	 <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최소</option>
								      <option>0km</option>
								      <option>10,000km</option>
								      <option>20,000km</option>
								      <option>30,000km</option>
								      <option>40,000km</option>
								      <option>50,000km</option>
								      <option>60,000km</option>
								      <option>70,000km</option>
								      <option>80,000km</option>
								      <option>90,000km</option>
								      <option>100,000km</option>
								      <option>110,000km</option>
								      <option>120,000km</option>
								      <option>130,000km</option>
								      <option>140,000km</option>
								      <option>150,000km</option>
								      <option>160,000km</option>
								      <option>170,000km</option>
								      <option>180,000km</option>
								      <option>190,000km</option>
								      <option>200,000km</option>
								    </select>
								  </div> ~
								   <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최대</option>
								      <option>0km</option>
								      <option>10,000km</option>
								      <option>20,000km</option>
								      <option>30,000km</option>
								      <option>40,000km</option>
								      <option>50,000km</option>
								      <option>60,000km</option>
								      <option>70,000km</option>
								      <option>80,000km</option>
								      <option>90,000km</option>
								      <option>100,000km</option>
								      <option>110,000km</option>
								      <option>120,000km</option>
								      <option>130,000km</option>
								      <option>140,000km</option>
								      <option>150,000km</option>
								      <option>160,000km</option>
								      <option>170,000km</option>
								      <option>180,000km</option>
								      <option>190,000km</option>
								      <option>200,000km</option>
								    </select>
								  </div>
						      </div>
						    </div>
						  </div>
					  	  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingFive">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
						       <p class="fs-4">가격</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
						      <!-- 가격 내용 start -->
						      <div class="accordion-body">
						      	 <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최소</option>
								      <option>0만원</option>
								      <option>100만원</option>
								      <option>200만원</option>
								      <option>300만원</option>
								      <option>400만원</option>
								      <option>500만원</option>
								      <option>600만원</option>
								      <option>700만원</option>
								      <option>800만원</option>
								      <option>900만원</option>
								      <option>1,000만원</option>
								      <option>1,100만원</option>
								      <option>1,200만원</option>
								      <option>1,300만원</option>
								      <option>1,400만원</option>
								      <option>1,500만원</option>
								      <option>1,600만원</option>
								      <option>1,700만원</option>
								      <option>1,800만원</option>
								      <option>1,900만원</option>
								      <option>2,000만원</option>
								      <option>2,500만원</option>
								      <option>3,000만원</option>
								      <option>3,500만원</option>
								      <option>4,500만원</option>
								      <option>5,000만원</option>
								      <option>6,000만원</option>
								      <option>7,000만원</option>
								      <option>8,000만원</option>
								      <option>9,000만원</option>
								      <option>1억원</option>
								    </select>
								  </div> ~
								  <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최대</option>
								      <option>0만원</option>
								      <option>100만원</option>
								      <option>200만원</option>
								      <option>300만원</option>
								      <option>400만원</option>
								      <option>500만원</option>
								      <option>600만원</option>
								      <option>700만원</option>
								      <option>800만원</option>
								      <option>900만원</option>
								      <option>1,000만원</option>
								      <option>1,100만원</option>
								      <option>1,200만원</option>
								      <option>1,300만원</option>
								      <option>1,400만원</option>
								      <option>1,500만원</option>
								      <option>1,600만원</option>
								      <option>1,700만원</option>
								      <option>1,800만원</option>
								      <option>1,900만원</option>
								      <option>2,000만원</option>
								      <option>2,500만원</option>
								      <option>3,000만원</option>
								      <option>3,500만원</option>
								      <option>4,500만원</option>
								      <option>5,000만원</option>
								      <option>6,000만원</option>
								      <option>7,000만원</option>
								      <option>8,000만원</option>
								      <option>9,000만원</option>
								      <option>1억원</option>
								    </select>
								  </div>
						    </div>
						    <!-- 가격 내용 end -->
						  </div>
					  	  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingSix">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
						       <p class="fs-4">연료</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSix">
						      <!-- 연료 내용 start -->
						      <div class="accordion-body">
						      		<div class="row">
							      		<div class="col">
							      			<input type="checkbox">가솔린
							      		</div>
							      		<div class="col offset-2 text-end">
							      			74,078
							      		</div>
							      	</div>
						      		<div class="row">
							      		<div class="col ">
							      			<input type="checkbox">디젤
							      		</div>
							      		<div class="col offset-2 text-end">
							      			73,345대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">LGP
							      		</div>
							      		<div class="col offset-2 text-end">
							      			10,219대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">가솔린+LPG
							      		</div>
							      		<div class="col offset-2 text-end">
							      			27대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">하이브리드(LPG)
							      		</div>
							      		<div class="col offset-2 text-end">
							      			80대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">CNG
							      		</div>
							      		<div class="col offset-2 text-end">
							      			16대
							      		</div>
							      	</div>
						      		<div class="row">
							      		<div class="col">
							      			<input type="checkbox">전기
							      		</div>
							      		<div class="col offset-2 text-end">
							      			1,067대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">기타
							      		</div>
							      		<div class="col offset-2 text-end">
							      			53대
							      		</div>
							      	</div>
						      	</div>
						      	<!-- 연료 내용 end -->
						    </div>
						  </div>
						</div>
					  	</div>
				  </div>
				  </div>
<!-- 국산 -->		  <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
				  	 <!-- 국산내용 -->
				  	 <div class="col">
					  		<div class="accordion" id="accordionPanelsStayOpenExample">
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
						      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
						        <p class="fs-4">차종</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
						       <!-- 차종 내용 start -->
						      <div class="accordion-body">
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">경차
						      		</div>
						      		<div class="col offset-2 text-end">
						      			15,376대
						      		</div>
						      	</div>
					      		<div class="row">
						      		<div class="col ">
						      			<input type="checkbox">소형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			5,751대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">준준형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			19,723대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">중형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			25,870대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">대형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			25,8886대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">스포츠카
						      		</div>
						      		<div class="col offset-2 text-end">
						      			1,633대
						      		</div>
						      	</div>
					      		<div class="row">
						      		<div class="col">
						      			<input type="checkbox">RV
						      		</div>
						      		<div class="col offset-2 text-end">
						      			6,094대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">SUV
						      		</div>
						      		<div class="col offset-2 text-end">
						      			41,486대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">승합
						      		</div>
						      		<div class="col offset-2 text-end">
						      			4,143대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">버스
						      		</div>
						      		<div class="col offset-2 text-end">
						      			138대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">트럭
						      		</div>
						      		<div class="col offset-2 text-end">
						      			17,260대
						      		</div>
						      	</div>
					      		<div class="row">
						      		<div class="col">
						      			<input type="checkbox">특수
						      		</div>
						      		<div class="col offset-2 text-end">
						      			3대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">중기
						      		</div>
						      		<div class="col offset-2 text-end">
						      			14대
						      		</div>
						      	</div>
						      </div>
						      <!-- 차종 내용 end -->
						    </div>
						  </div>
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
						       <p class="fs-4">제조사/모델</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
						      <!-- 제조사 모델 내용 start -->
						      <div class="accordion-body">
							      <div class="col">
								  	 <nav id="navbar-example2" class="navbar px-3 mb-3">
									   <a class="navbar-brand" href="#">제조사/모델</a>
									   <ul class="nav nav-pills">
									     <li class="nav-item">
									       <a class="nav-link" href="#scrollspyHeading1">국산차</a>
									     </li>
									     <li class="nav-item">
									       <a class="nav-link" href="#scrollspyHeading2">수입차</a>
									     </li>
									   </ul>
									 </nav>
									 <div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" class="scrollspy-example p-3 rounded-2" tabindex="0">
									   <h4 id="scrollspyHeading1" style="background-color:lightgray">국산차</h4>
									   <!-- 국산차 -->
										   <div class="row">
											   <div class="col text-starr">
											   		현대
											   </div>
											   <div class="col text-end">
											   		50,587대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		기아
											   </div>
											   <div class="col text-end">
											   		46,048대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		한국GM
											   </div>
											   <div class="col text-end">
											   		11,575대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		쌍용
											   </div>
											   <div class="col text-end">
											   		8,722대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		르노코리아
											   </div>
											   <div class="col text-end">
											   		8,353대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		제네시스
											   </div>
											   <div class="col text-end">
											   		4,520대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		기타
											   </div>
											   <div class="col text-end">
											   		21대
											   </div>
										   </div>
									   <!-- 수입차목록 -->
									   <h4 id="scrollspyHeading2" style="background-color:lightgray">수입차</h4>
										   <div class="row">
											   <div class="col text-starr">
											   		벤츠
											   </div>
											   <div class="col text-end">
											   		7,998대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		BMW
											   </div>
											   <div class="col text-end">
											   		7,630대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		아우디
											   </div>
											   <div class="col text-end">
											   		3,695대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		폭스바겐
											   </div>
											   <div class="col text-end">
											   		2,236대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		미니
											   </div>
											   <div class="col text-end">
											   		1,641대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		랜드로버
											   </div>
											   <div class="col text-end">
											   		1,415대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		qhfqh
											   </div>
											   <div class="col text-end">
											   		1,151대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		지프
											   </div>
											   <div class="col text-end">
											   		909대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		포드
											   </div>
											   <div class="col text-end">
											   		879대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		포르쉐
											   </div>
											   <div class="col text-end">
											   		809대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		재규어
											   </div>
											   <div class="col text-end">
											   		731대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		렉서스
											   </div>
											   <div class="col text-end">
											   		543대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		푸조
											   </div>
											   <div class="col text-end">
											   		534대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		인피니티
											   </div>
											   <div class="col text-end">
											   		401대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		혼다
											   </div>
											   <div class="col text-end">
											   		372대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		마세라티
											   </div>
											   <div class="col text-end">
											   		370대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		닛산
											   </div>
											   <div class="col text-end">
											   		354대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		링컨
											   </div>
											   <div class="col text-end">
											   		333대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		도요타
											   </div>
											   <div class="col text-end">
											   		276대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		캐딜락
											   </div>
											   <div class="col text-end">
											   		229대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		크라이슬러
											   </div>
											   <div class="col text-end">
											   		217대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		테슬라
										  	   </div>
											   <div class="col text-end">
											   		151대
											   </div>
									   	   </div>
					  					 </div>
							 	 	</div>
								 </div>
								 <!-- 제조사/모델 내용 end -->
							 </div>
						  </div>
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
						       <p class="fs-4">연식</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
						      <!-- 연식 내용 start -->
						      <div class="accordion-body">
							      <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최소</option>
								      <option>2000년</option>
								      <option>2001년</option>
								      <option>2002년</option>
								      <option>2003년</option>
								      <option>2004년</option>
								      <option>2005년</option>
								      <option>2006년</option>
								      <option>2007년</option>
								      <option>2008년</option>
								      <option>2009년</option>
								      <option>2010년</option>
								      <option>2011년</option>
								      <option>2012년</option>
								      <option>2013년</option>
								      <option>2014년</option>
								      <option>2015년</option>
								      <option>2016년</option>
								      <option>2017년</option>
								      <option>2018년</option>
								      <option>2019년</option>
								      <option>2020년</option>
								      <option>2021년</option>
								      <option>2022년</option>
								    </select>
						    	  </div> ~
						    	  <div class="col">
								     <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최대</option>
								      <option>2000년</option>
								      <option>2001년</option>
								      <option>2002년</option>
								      <option>2003년</option>
								      <option>2004년</option>
								      <option>2005년</option>
								      <option>2006년</option>
								      <option>2007년</option>
								      <option>2008년</option>
								      <option>2009년</option>
								      <option>2010년</option>
								      <option>2011년</option>
								      <option>2012년</option>
								      <option>2013년</option>
								      <option>2014년</option>
								      <option>2015년</option>
								      <option>2016년</option>
								      <option>2017년</option>
								      <option>2018년</option>
								      <option>2019년</option>
								      <option>2020년</option>
								      <option>2021년</option>
								      <option>2022년</option>
								    </select>
								  </div>
						      </div>
						      <!-- 연식 내용 end -->
						    </div>
						  </div>
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
						       <p class="fs-4">주행거리</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
						      <div class="accordion-body">
						      	 <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최소</option>
								      <option>0km</option>
								      <option>10,000km</option>
								      <option>20,000km</option>
								      <option>30,000km</option>
								      <option>40,000km</option>
								      <option>50,000km</option>
								      <option>60,000km</option>
								      <option>70,000km</option>
								      <option>80,000km</option>
								      <option>90,000km</option>
								      <option>100,000km</option>
								      <option>110,000km</option>
								      <option>120,000km</option>
								      <option>130,000km</option>
								      <option>140,000km</option>
								      <option>150,000km</option>
								      <option>160,000km</option>
								      <option>170,000km</option>
								      <option>180,000km</option>
								      <option>190,000km</option>
								      <option>200,000km</option>
								    </select>
								  </div> ~
								   <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최대</option>
								      <option>0km</option>
								      <option>10,000km</option>
								      <option>20,000km</option>
								      <option>30,000km</option>
								      <option>40,000km</option>
								      <option>50,000km</option>
								      <option>60,000km</option>
								      <option>70,000km</option>
								      <option>80,000km</option>
								      <option>90,000km</option>
								      <option>100,000km</option>
								      <option>110,000km</option>
								      <option>120,000km</option>
								      <option>130,000km</option>
								      <option>140,000km</option>
								      <option>150,000km</option>
								      <option>160,000km</option>
								      <option>170,000km</option>
								      <option>180,000km</option>
								      <option>190,000km</option>
								      <option>200,000km</option>
								    </select>
								  </div>
						      </div>
						    </div>
						  </div>
					  	  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingFive">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
						       <p class="fs-4">가격</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
						      <!-- 가격 내용 start -->
						      <div class="accordion-body">
						      	 <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최소</option>
								      <option>0만원</option>
								      <option>100만원</option>
								      <option>200만원</option>
								      <option>300만원</option>
								      <option>400만원</option>
								      <option>500만원</option>
								      <option>600만원</option>
								      <option>700만원</option>
								      <option>800만원</option>
								      <option>900만원</option>
								      <option>1,000만원</option>
								      <option>1,100만원</option>
								      <option>1,200만원</option>
								      <option>1,300만원</option>
								      <option>1,400만원</option>
								      <option>1,500만원</option>
								      <option>1,600만원</option>
								      <option>1,700만원</option>
								      <option>1,800만원</option>
								      <option>1,900만원</option>
								      <option>2,000만원</option>
								      <option>2,500만원</option>
								      <option>3,000만원</option>
								      <option>3,500만원</option>
								      <option>4,500만원</option>
								      <option>5,000만원</option>
								      <option>6,000만원</option>
								      <option>7,000만원</option>
								      <option>8,000만원</option>
								      <option>9,000만원</option>
								      <option>1억원</option>
								    </select>
								  </div> ~
								  <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최대</option>
								      <option>0만원</option>
								      <option>100만원</option>
								      <option>200만원</option>
								      <option>300만원</option>
								      <option>400만원</option>
								      <option>500만원</option>
								      <option>600만원</option>
								      <option>700만원</option>
								      <option>800만원</option>
								      <option>900만원</option>
								      <option>1,000만원</option>
								      <option>1,100만원</option>
								      <option>1,200만원</option>
								      <option>1,300만원</option>
								      <option>1,400만원</option>
								      <option>1,500만원</option>
								      <option>1,600만원</option>
								      <option>1,700만원</option>
								      <option>1,800만원</option>
								      <option>1,900만원</option>
								      <option>2,000만원</option>
								      <option>2,500만원</option>
								      <option>3,000만원</option>
								      <option>3,500만원</option>
								      <option>4,500만원</option>
								      <option>5,000만원</option>
								      <option>6,000만원</option>
								      <option>7,000만원</option>
								      <option>8,000만원</option>
								      <option>9,000만원</option>
								      <option>1억원</option>
								    </select>
								  </div>
						    </div>
						    <!-- 가격 내용 end -->
						  </div>
					  	  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingSix">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
						       <p class="fs-4">연료</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSix">
						      <!-- 연료 내용 start -->
						      <div class="accordion-body">
						      		<div class="row">
							      		<div class="col">
							      			<input type="checkbox">가솔린
							      		</div>
							      		<div class="col offset-2 text-end">
							      			74,078
							      		</div>
							      	</div>
						      		<div class="row">
							      		<div class="col ">
							      			<input type="checkbox">디젤
							      		</div>
							      		<div class="col offset-2 text-end">
							      			73,345대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">LGP
							      		</div>
							      		<div class="col offset-2 text-end">
							      			10,219대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">가솔린+LPG
							      		</div>
							      		<div class="col offset-2 text-end">
							      			27대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">하이브리드(LPG)
							      		</div>
							      		<div class="col offset-2 text-end">
							      			80대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">CNG
							      		</div>
							      		<div class="col offset-2 text-end">
							      			16대
							      		</div>
							      	</div>
						      		<div class="row">
							      		<div class="col">
							      			<input type="checkbox">전기
							      		</div>
							      		<div class="col offset-2 text-end">
							      			1,067대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">기타
							      		</div>
							      		<div class="col offset-2 text-end">
							      			53대
							      		</div>
							      	</div>
						      	</div>
						      	<!-- 연료 내용 end -->
						    </div>
						  </div>
						</div>
					  	</div>
				  </div>
				  </div>
<!-- 수입 -->		  <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
				  	<div class="col">
					  		<div class="accordion" id="accordionPanelsStayOpenExample">
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
						      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
						        <p class="fs-4">차종</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
						       <!-- 차종 내용 start -->
						      <div class="accordion-body">
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">경차
						      		</div>
						      		<div class="col offset-2 text-end">
						      			15,376대
						      		</div>
						      	</div>
					      		<div class="row">
						      		<div class="col ">
						      			<input type="checkbox">소형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			5,751대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">준준형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			19,723대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">중형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			25,870대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">대형
						      		</div>
						      		<div class="col offset-2 text-end">
						      			25,8886대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">스포츠카
						      		</div>
						      		<div class="col offset-2 text-end">
						      			1,633대
						      		</div>
						      	</div>
					      		<div class="row">
						      		<div class="col">
						      			<input type="checkbox">RV
						      		</div>
						      		<div class="col offset-2 text-end">
						      			6,094대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">SUV
						      		</div>
						      		<div class="col offset-2 text-end">
						      			41,486대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">승합
						      		</div>
						      		<div class="col offset-2 text-end">
						      			4,143대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">버스
						      		</div>
						      		<div class="col offset-2 text-end">
						      			138대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">트럭
						      		</div>
						      		<div class="col offset-2 text-end">
						      			17,260대
						      		</div>
						      	</div>
					      		<div class="row">
						      		<div class="col">
						      			<input type="checkbox">특수
						      		</div>
						      		<div class="col offset-2 text-end">
						      			3대
						      		</div>
						      	</div>
						      	<div class="row">
						      		<div class="col">
						      			<input type="checkbox">중기
						      		</div>
						      		<div class="col offset-2 text-end">
						      			14대
						      		</div>
						      	</div>
						      </div>
						      <!-- 차종 내용 end -->
						    </div>
						  </div>
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
						       <p class="fs-4">제조사/모델</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
						      <!-- 제조사 모델 내용 start -->
						      <div class="accordion-body">
							      <div class="col">
								  	 <nav id="navbar-example2" class="navbar px-3 mb-3">
									   <a class="navbar-brand" href="#">제조사/모델</a>
									   <ul class="nav nav-pills">
									     <li class="nav-item">
									       <a class="nav-link" href="#scrollspyHeading1">국산차</a>
									     </li>
									     <li class="nav-item">
									       <a class="nav-link" href="#scrollspyHeading2">수입차</a>
									     </li>
									   </ul>
									 </nav>
									 <div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" class="scrollspy-example p-3 rounded-2" tabindex="0">
									   <h4 id="scrollspyHeading1" style="background-color:lightgray">국산차</h4>
									   <!-- 국산차 -->
										   <div class="row">
											   <div class="col text-starr">
											   		현대
											   </div>
											   <div class="col text-end">
											   		50,587대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		기아
											   </div>
											   <div class="col text-end">
											   		46,048대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		한국GM
											   </div>
											   <div class="col text-end">
											   		11,575대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		쌍용
											   </div>
											   <div class="col text-end">
											   		8,722대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		르노코리아
											   </div>
											   <div class="col text-end">
											   		8,353대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		제네시스
											   </div>
											   <div class="col text-end">
											   		4,520대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		기타
											   </div>
											   <div class="col text-end">
											   		21대
											   </div>
										   </div>
									   <!-- 수입차목록 -->
									   <h4 id="scrollspyHeading2" style="background-color:lightgray">수입차</h4>
										   <div class="row">
											   <div class="col text-starr">
											   		벤츠
											   </div>
											   <div class="col text-end">
											   		7,998대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		BMW
											   </div>
											   <div class="col text-end">
											   		7,630대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		아우디
											   </div>
											   <div class="col text-end">
											   		3,695대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		폭스바겐
											   </div>
											   <div class="col text-end">
											   		2,236대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		미니
											   </div>
											   <div class="col text-end">
											   		1,641대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		랜드로버
											   </div>
											   <div class="col text-end">
											   		1,415대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		qhfqh
											   </div>
											   <div class="col text-end">
											   		1,151대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		지프
											   </div>
											   <div class="col text-end">
											   		909대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		포드
											   </div>
											   <div class="col text-end">
											   		879대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		포르쉐
											   </div>
											   <div class="col text-end">
											   		809대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		재규어
											   </div>
											   <div class="col text-end">
											   		731대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		렉서스
											   </div>
											   <div class="col text-end">
											   		543대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		푸조
											   </div>
											   <div class="col text-end">
											   		534대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		인피니티
											   </div>
											   <div class="col text-end">
											   		401대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		혼다
											   </div>
											   <div class="col text-end">
											   		372대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		마세라티
											   </div>
											   <div class="col text-end">
											   		370대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		닛산
											   </div>
											   <div class="col text-end">
											   		354대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		링컨
											   </div>
											   <div class="col text-end">
											   		333대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		도요타
											   </div>
											   <div class="col text-end">
											   		276대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		캐딜락
											   </div>
											   <div class="col text-end">
											   		229대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		크라이슬러
											   </div>
											   <div class="col text-end">
											   		217대
											   </div>
										   </div>
										   <div class="row">
											   <div class="col text-starr">
											   		테슬라
										  	   </div>
											   <div class="col text-end">
											   		151대
											   </div>
									   	   </div>
					  					 </div>
							 	 	</div>
								 </div>
								 <!-- 제조사/모델 내용 end -->
							 </div>
						  </div>
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
						       <p class="fs-4">연식</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
						      <!-- 연식 내용 start -->
						      <div class="accordion-body">
							      <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최소</option>
								      <option>2000년</option>
								      <option>2001년</option>
								      <option>2002년</option>
								      <option>2003년</option>
								      <option>2004년</option>
								      <option>2005년</option>
								      <option>2006년</option>
								      <option>2007년</option>
								      <option>2008년</option>
								      <option>2009년</option>
								      <option>2010년</option>
								      <option>2011년</option>
								      <option>2012년</option>
								      <option>2013년</option>
								      <option>2014년</option>
								      <option>2015년</option>
								      <option>2016년</option>
								      <option>2017년</option>
								      <option>2018년</option>
								      <option>2019년</option>
								      <option>2020년</option>
								      <option>2021년</option>
								      <option>2022년</option>
								    </select>
						    	  </div> ~
						    	  <div class="col">
								     <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최대</option>
								      <option>2000년</option>
								      <option>2001년</option>
								      <option>2002년</option>
								      <option>2003년</option>
								      <option>2004년</option>
								      <option>2005년</option>
								      <option>2006년</option>
								      <option>2007년</option>
								      <option>2008년</option>
								      <option>2009년</option>
								      <option>2010년</option>
								      <option>2011년</option>
								      <option>2012년</option>
								      <option>2013년</option>
								      <option>2014년</option>
								      <option>2015년</option>
								      <option>2016년</option>
								      <option>2017년</option>
								      <option>2018년</option>
								      <option>2019년</option>
								      <option>2020년</option>
								      <option>2021년</option>
								      <option>2022년</option>
								    </select>
								  </div>
						      </div>
						      <!-- 연식 내용 end -->
						    </div>
						  </div>
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
						       <p class="fs-4">주행거리</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
						      <div class="accordion-body">
						      	 <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최소</option>
								      <option>0km</option>
								      <option>10,000km</option>
								      <option>20,000km</option>
								      <option>30,000km</option>
								      <option>40,000km</option>
								      <option>50,000km</option>
								      <option>60,000km</option>
								      <option>70,000km</option>
								      <option>80,000km</option>
								      <option>90,000km</option>
								      <option>100,000km</option>
								      <option>110,000km</option>
								      <option>120,000km</option>
								      <option>130,000km</option>
								      <option>140,000km</option>
								      <option>150,000km</option>
								      <option>160,000km</option>
								      <option>170,000km</option>
								      <option>180,000km</option>
								      <option>190,000km</option>
								      <option>200,000km</option>
								    </select>
								  </div> ~
								   <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최대</option>
								      <option>0km</option>
								      <option>10,000km</option>
								      <option>20,000km</option>
								      <option>30,000km</option>
								      <option>40,000km</option>
								      <option>50,000km</option>
								      <option>60,000km</option>
								      <option>70,000km</option>
								      <option>80,000km</option>
								      <option>90,000km</option>
								      <option>100,000km</option>
								      <option>110,000km</option>
								      <option>120,000km</option>
								      <option>130,000km</option>
								      <option>140,000km</option>
								      <option>150,000km</option>
								      <option>160,000km</option>
								      <option>170,000km</option>
								      <option>180,000km</option>
								      <option>190,000km</option>
								      <option>200,000km</option>
								    </select>
								  </div>
						      </div>
						    </div>
						  </div>
					  	  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingFive">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
						       <p class="fs-4">가격</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
						      <!-- 가격 내용 start -->
						      <div class="accordion-body">
						      	 <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최소</option>
								      <option>0만원</option>
								      <option>100만원</option>
								      <option>200만원</option>
								      <option>300만원</option>
								      <option>400만원</option>
								      <option>500만원</option>
								      <option>600만원</option>
								      <option>700만원</option>
								      <option>800만원</option>
								      <option>900만원</option>
								      <option>1,000만원</option>
								      <option>1,100만원</option>
								      <option>1,200만원</option>
								      <option>1,300만원</option>
								      <option>1,400만원</option>
								      <option>1,500만원</option>
								      <option>1,600만원</option>
								      <option>1,700만원</option>
								      <option>1,800만원</option>
								      <option>1,900만원</option>
								      <option>2,000만원</option>
								      <option>2,500만원</option>
								      <option>3,000만원</option>
								      <option>3,500만원</option>
								      <option>4,500만원</option>
								      <option>5,000만원</option>
								      <option>6,000만원</option>
								      <option>7,000만원</option>
								      <option>8,000만원</option>
								      <option>9,000만원</option>
								      <option>1억원</option>
								    </select>
								  </div> ~
								  <div class="col">
								    <select class="form-select" id="validationCustom04" required>
								      <option selected disabled value="">최대</option>
								      <option>0만원</option>
								      <option>100만원</option>
								      <option>200만원</option>
								      <option>300만원</option>
								      <option>400만원</option>
								      <option>500만원</option>
								      <option>600만원</option>
								      <option>700만원</option>
								      <option>800만원</option>
								      <option>900만원</option>
								      <option>1,000만원</option>
								      <option>1,100만원</option>
								      <option>1,200만원</option>
								      <option>1,300만원</option>
								      <option>1,400만원</option>
								      <option>1,500만원</option>
								      <option>1,600만원</option>
								      <option>1,700만원</option>
								      <option>1,800만원</option>
								      <option>1,900만원</option>
								      <option>2,000만원</option>
								      <option>2,500만원</option>
								      <option>3,000만원</option>
								      <option>3,500만원</option>
								      <option>4,500만원</option>
								      <option>5,000만원</option>
								      <option>6,000만원</option>
								      <option>7,000만원</option>
								      <option>8,000만원</option>
								      <option>9,000만원</option>
								      <option>1억원</option>
								    </select>
								  </div>
						    </div>
						    <!-- 가격 내용 end -->
						  </div>
					  	  <div class="accordion-item">
						    <h2 class="accordion-header" id="panelsStayOpen-headingSix">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
						       <p class="fs-4">연료</p>
						      </button>
						    </h2>
						    <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSix">
						      <!-- 연료 내용 start -->
						      <div class="accordion-body">
						      		<div class="row">
							      		<div class="col">
							      			<input type="checkbox">가솔린
							      		</div>
							      		<div class="col offset-2 text-end">
							      			74,078
							      		</div>
							      	</div>
						      		<div class="row">
							      		<div class="col ">
							      			<input type="checkbox">디젤
							      		</div>
							      		<div class="col offset-2 text-end">
							      			73,345대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">LGP
							      		</div>
							      		<div class="col offset-2 text-end">
							      			10,219대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">가솔린+LPG
							      		</div>
							      		<div class="col offset-2 text-end">
							      			27대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">하이브리드(LPG)
							      		</div>
							      		<div class="col offset-2 text-end">
							      			80대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">CNG
							      		</div>
							      		<div class="col offset-2 text-end">
							      			16대
							      		</div>
							      	</div>
						      		<div class="row">
							      		<div class="col">
							      			<input type="checkbox">전기
							      		</div>
							      		<div class="col offset-2 text-end">
							      			1,067대
							      		</div>
							      	</div>
							      	<div class="row">
							      		<div class="col">
							      			<input type="checkbox">기타
							      		</div>
							      		<div class="col offset-2 text-end">
							      			53대
							      		</div>
							      	</div>
						      	</div>
						      	<!-- 연료 내용 end -->
						    </div>
						  </div>
						</div>
					  	</div>
				  </div>
				  </div>
				  <div class="tab-pane fade" id="disabled-tab-pane" role="tabpanel" aria-labelledby="disabled-tab" tabindex="0">...</div>
				</div>
				</div> <!-- col 끝 -->
			<!-- 사이드 드롭다운 end-->
					<div class="col-9">
						<p class="fs-4">인증 및 진단 매물</p>
						<div class="row">
						<c:forEach items="${list}" var="list" varStatus="status" end="6">
							<div class="col-3 mb-5">
								<a href="/buyDetails?seq=<c:out value="${list.seq}"/>">
								    <div class="card">
								      <img src="../../resources/images/buy/buycarso.jpg" class="card-img-top" alt="...">
								      <div class="card-body" style="height:200px;">
								        <h5 class="card-title">${list.carName}</h5>
								        <br>
								        <p class="card-text">
								        	${list.carAge} <br> ${list.carMleage}km 
								        	ㅣ <c:forEach items="${listCodecarEngine}" var="listcarEngine" varStatus="statuscarEngine">
											  	<c:if test="${list.carEngine eq listcarEngine.seq}">
													<c:out value="${listcarEngine.codeGroupCode }" />
												</c:if>
											  </c:forEach> 
								        	ㅣ <c:forEach items="${listCodearea}" var="listarea" varStatus="statusarea">
											  	<c:if test="${list.area eq listarea.seq}">
													<c:out value="${listarea.codeGroupCode }" />
												</c:if>
											  </c:forEach>
							        	</p>
								      </div>
								      <div class="card-footer">
									      <small class="text-muted">
									      	<p class="fs-5">
									      		${list.price}
									      	</p>
									      </small>
								     </div>
								    </div>
							   	 </a>
						 	 </div>
						  </c:forEach>
						  <div class="col-3">
						  	<img src="../../resources/images/buy/buybmw.jpg" class="rounded mx-auto d-block" alt="..." style="width:230px; height: 397px">
						  </div>
					  </div>
					  <div class="row mt-2">
		 			  	<div class="col mt-3">
					  		<p class="fs-4">일반 매물</p>
					  	</div>
					  </div>
					  <div class="row">
					  <c:forEach items="${list}" var="list" varStatus="status" begin="7" end="13">
					  	 <div class="col-3 mb-5">
							    <div class="card">
							      <img src="../../resources/images/buy/buytussan.jpeg" class="card-img-top" alt="...">
							      <div class="card-body" style="height:200px;">
							        <h5 class="card-title">${list.carName}</h5>
							        <br>
							        <p class="card-text">${list.carAge}
							        	<br>${list.carMleage} 
       									ㅣ <c:forEach items="${listCodecarEngine}" var="listcarEngine" varStatus="statuscarEngine">
										  	<c:if test="${list.carEngine eq listcarEngine.seq}">
												<c:out value="${listcarEngine.codeGroupCode }" />
											</c:if>
										  </c:forEach> 
							        	ㅣ <c:forEach items="${listCodearea}" var="listarea" varStatus="statusarea">
										  	<c:if test="${list.area eq listarea.seq}">
												<c:out value="${listarea.codeGroupCode }" />
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
						  </div>
						  </c:forEach>
						  	<div class="col-3">
						  		<img src="../../resources/images/buy/buyhibryd.png" class="rounded mx-auto d-block" alt="..." style="width:230px; height: 397px">
						 	</div>
						  	<c:forEach items="${list}" var="list" varStatus="status" begin="14" end="17">
						  	<div class="col-3">
							    <div class="card">
							      <img src="../../resources/images/buy/buyopr.jpg" class="card-img-top" alt="...">
							      <div class="card-body" style="height:200px;">
							        <h5 class="card-title">${list.carName}</h5>
							        <p class="card-text">
							        	${list.carAge}<br> ${list.carMleage}94,800km 
							        	ㅣ <c:forEach items="${listCodecarEngine}" var="listcarEngine" varStatus="statuscarEngine">
											  	<c:if test="${list.carEngine eq listcarEngine.seq}">
													<c:out value="${listcarEngine.codeGroupCode }" />
												</c:if>
											  </c:forEach> 
							        	ㅣ <c:forEach items="${listCodearea}" var="listarea" varStatus="statusarea">
										  	<c:if test="${list.area eq listarea.seq}">
												<c:out value="${listarea.codeGroupCode }" />
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
						  	</div>
						  	</c:forEach>
						  	<!-- pagination s -->
							<%@include file="../../pagination/xdmin/pagination.jsp"%>
							<!-- pagination e -->
						  	
						 	<div class="row">
							 	<div class="row mt-5">
								 	<div class="col-5">
								 		<img src="../../resources/images/buy/buyhero.png" class="rounded mx-auto d-block" alt="" style="width:970px; height:150px" >
								   </div>	
							   </div>
						   </div>	
					  </div>
				  </div>
			</div> <!-- row 끝 -->
		</div> <!-- 컨테이너 끝 -->
		<!-- 중앙 내용 end -->
		<div class="foot container clear">
			<div class="row mt-5">
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
	
	<!-- script -->
	
	<!-- paging start -->
	<script type="text/javascript">
		var userBuy = "/buy";
		var form = $("form[name=form]");
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action",codeList).submit();
		};
	</script>
	<!-- paging end-->
	
	<script type="text/javascript">
		const triggerTabList = document.querySelectorAll('#myTab button')
		triggerTabList.forEach(triggerEl => {
		  const tabTrigger = new bootstrap.Tab(triggerEl)
	
		  triggerEl.addEventListener('click', event => {
		    event.preventDefault()
		    tabTrigger.show()
		  })
		})
	</script>
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>