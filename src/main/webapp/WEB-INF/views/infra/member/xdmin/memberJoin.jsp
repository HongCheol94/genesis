<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<<!doctype html>
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

		a{
			text-decoration-line: none;
		}
	</style>
</head>
<body>
	<!-- import -->
	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}" />
	<!-- start -->
	<div class="h-25"></div>
	<div class="container">
		<div class="row">
		<img alt="" src="../images/d_dealermod.png" height="350px">
		</div>
		<br>
		<small style="margin: 1em; font-famlily: '나눔스퀘어라운드 Regular'; color: red;">필수정보</small>
		<div>
	  		<table class="table align-middle">
		  <!-- 이름 -->
		  		<tr>
		  			<th>
		  				<div class="row">
		  					<div class="col">
		  						<div class="form-floating mt-3">
			  						<input type="text" name="" id="\" value class="form-control" placeholder=아이디" 
			  						aria-label="First name" style="border-color:white;" autocomplete="off">
			  						<label for="floatingPassword">아이디</label>
		  						</div>
		  					</div>
		  				</div>
	  				</th>
	  				<!-- 아이디 -->
	  				<th>
		  				<div class="row">
		  					<div class="col">
		  						<div class="form-floating mt-3">
			  						<input type="text" name="mID" id="mID" value class="form-control" placeholder="이름"
			  						aria-label="first name" style="border-color:white;" autocomplete="off">
			  						<label for="floatingPassword">이름</label>
		  						</div>
		  					</div>
		  				</div>
	  				</th>
  				</tr>
  				<!-- 비밀번호 -->
  				<tr>
  					<td style="text-align: center;">
  						<div class="form-floating mt-3">			 			 	
				   			<input type="password" name="mvmmPassword" id="mvmmPassword" value="" class="form-control pw" placeholder="비밀번호" style="border-color:white;" autocomplete="off">
							<span id="alert-success" style="display: none; color: blue; text-align: left;">비밀번호가 일치합니다.</span>
							<span id="alert-danger" style="display: none; color: red; text-align: left;">비밀번호가 일치하지 않습니다.</span>		  			
							<label for="floatingPassword">비밀번호</label>
						</div>
	  				</td>
  				
  				<!-- 비밀번호확인 -->
	  				<td>
	  					<div class="form-floating mt-3">
	   			 			<input type="password" id="mvmmPassword2" value="" class="form-control pw" placeholder="비밀번호확인" aria-label="First name" style="border-color:white;" autocomplete="off">
	   			 			<label for="floatingPassword">비밀번호확인</label>
   			 			</div>
		  			</td>
				</tr>
				
				<!-- 이메일 -->
				<tr>
					<td>
						<div class="form-floating mt-3">
							<input type="text" class="form-control" name="mvmeEmailAccount" placeholder="이메일 계정" style="border-color:white; display:inline-block;" autocomplete="off">
							<label for="floatingPassword">이메일</label>
						</div>
					</td>
					<td>
						<select id="mvmeEmailDomainCd" name="mvmeEmailDomainCd" class="form-select">
							<option value="">
								이메일
							</option>
							<option value="16"
								>naver.com
							</option>
							<option value="17"
								>hanmail.net
							</option>
							<option value="18"
								>google.com
							</option>
							<option value="19"
								>직접입력
							</option>
						</select>						
					</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- 회사정보 -->
	<div class="container my-wrap" style="font-family: '나눔스퀘어라운드 Regular';">
		<div class="accordion">
			<h2 class="accordion-header" id="headingTwo">
			<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
	        	추가 정보
	        </button>
		</h2>
		<div id="collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<div class="table" style="font-family: '나눔스퀘어라운드 Regular';">
						<table class="table align-middle">
							<!--생년월일-->
							<tr>
					  			<th>
					  				<div class="row">
					  					<div class="col">
					  						<div class="form-floating mt-3">
						  						<input type="text" name="" id="" value class="form-control" placeholder="생년월일"
						  						aria-label="First name" style="border-color:white;" autocomplete="off">
						  						<label for="floatingPassword">생년월일</label>
					  						</div>
					  					</div>
					  				</div>
				  				</th>
				  				<!--성별-->
				  				<th>
									<div class="col-md-3 mt-3 offset-3">
										<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="gender" id="gender">
											<option value="0">성별</option>
											<c:forEach items="${listCodeGender }" var="listGender" varStatus="statusGender">
												<option value="${listGender.seq }" <c:if test="${item.gender eq listGender.seq }">selected</c:if>>${listGender.codeGroupCode }</option>
											</c:forEach>
										  </select>
									</div>
				  				</th>
			  				</tr>
			  				<!-- 전화번호 -->
							<tr>
					  			<th>
					  				<div class="row">
					  					<div class="col">
					  						<div class="form-floating mt-3">
						  						<input type="text" name="" id="" value class="form-control" placeholder="전화번호"
						  						aria-label="First name" style="border-color:white;" autocomplete="off">
						  						<label for="floatingPassword">전화번호</label>
					  						</div>
					  					</div>
					  				</div>
				  				</th>
				  				<!--회사번호-->
				  				<th>
									<div class="col-md-3 mt-3 offset-3">
										<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="" id="">
											<option value="0">통신사</option>
											<c:forEach items="${listCodeGender }" var="listGender" varStatus="statusGender">
												<option value="${listGender.seq }" <c:if test="${item.gender eq listGender.seq }">selected</c:if>>${listGender.codeGroupCode }</option>
											</c:forEach>
										  </select>
									</div>
				  				</th>
			  				</tr>
			  				<!-- 우편번호 -->
			  				<tr>
			  					<th>
			  						<div class="row">
			  							<div class="col">
			  								<div class="form-floating mt-3">
				  								<input type="text" name="cpostnumber" id="cpostnumber" value class="form-control" placeholder="우편번호"
					  							aria-label="first name" style="border-color:white;" autocomplete="off">
					  							<label for="floatingPassword">우편번호</label>
				  							</div>
			  							</div>
			  						</div>
			  					</th>
			  					<th>
			  						<div class="row">
			  							<div class="col-md-4 mt-3 offset-3">
			  								<button type="button" class="btn btn-outline-warning btn-lg">우편번호</button>
			  							</div>
			  						</div>
			  					</th>
			  				</tr>
			  				<!-- 회사주소 -->
			  				<tr>
			  					<th>
			  						<div class="row">
			  							<div class="col">
			  								<div class="form-floating mt-3">
				  								<input type="text" name="" id="" value class="form-control" placeholder="도로명주소"
					  							aria-label="first name" style="border-color:white;" autocomplete="off">
					  							<label for="floatingPassword">도로명주소</label>
				  							</div>
			  							</div>
									</div>
								</th>
								<th>
									<div class="row">
										<div class="col-md-4 mt-3 offset-3">
											<div class="form-floating mt-3">
												<input type="text" name="" id=""  value class="form-control" placeholder="지번주소"
												aria-label="first name" style="border-color:white;" autocomplete="off">
												<label for="floatingPassword">지번주소</label>
											</div>
										</div>
									</div>
								</th>
		  					</tr>
							  <tr>
								<th>
									<div class="row">
										<div class="col">
											<div class="form-floating mt-3">
												<input type="text" name="" id="" value class="form-control" placeholder="위도"
												aria-label="first name" style="border-color:white;" autocomplete="off">
												<label for="floatingPassword">위도</label>
											</div>
										</div>
								  </div>
							  </th>
							  <th>
								  <div class="row">
									  <div class="col-md-4 mt-3 offset-3">
										  <div class="form-floating mt-3">
											  <input type="text" name="" id=""  value class="form-control" placeholder="경도"
											  aria-label="first name" style="border-color:white;" autocomplete="off">
											  <label for="floatingPassword">경도</label>
										  </div>
									  </div>
								  </div>
							  </th>
							</tr>
							<tr>
								<th>
									<div class="row">
										<div class="col">
											<div class="form-floating mt-3">
												<input type="text" name="" id="" value class="form-control" placeholder="상세주소"
												aria-label="First name" style="border-color:white;" autocomplete="off">
												<label for="floatingPassword">상세주소</label>
											</div>
										</div>
									</div>
								</th>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
			<div class="col-3 offset-1">
				<a href="../dminDealer/d_dealerView.html">
					<button class="btn btn-outline-warning btn-lg" type="button">회원가입</button>
				</a>
				<a href="../list/dealerList.html">
					<button class="btn btn-outline-warning btn-lg" type="button">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
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
	</div>
				
	<!-- end -->
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>