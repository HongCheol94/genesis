<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.hongcheol.march.modules.code.CodeServiceImpl" />

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	
	<!-- datePicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- datePicker end -->
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
	
	<!-- start -->
	
	<form method="post" action="" id="" name="form">
	
	<c:set var="listCodetelecom" value="${CodeServiceImpl.selectListCachedCode('1')}" />
	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}" />
	<c:set var="listCodeEmail" value="${CodeServiceImpl.selectListCachedCode('16')}" />
	
		<div class="h-25"></div>
		<div class="container">
			<div class="row">
				<img alt="" src="../../resources/images/d_dealermod.png" height="350px">
			</div>
			<br>
			<div class="row">
				<div class="col">
					<small style="margin: 1em; font-famlily: '나눔스퀘어라운드 Regular'; color: red;">필수정보</small>
				</div>
			</div>
		  		<table class="table align-middle">
			  <!-- 아이디 -->
			  		<tr>
			  			<th>
			  				<div class="row">
			  					<div class="col">
			  						<div class="form-floating mt-3">
				  						<input type="text" name="id" id="id" class="form-control" placeholder=아이디"  value=""
				  						aria-label="First name" style="border-color:white;" autocomplete="off">
				  						<div id="idFeedback"></div>
				  						<label for="floatingPassword">아이디</label>
			  						</div>
			  					</div>
			  				</div>
		  				</th>
		  				<!-- 이름 -->
		  				<th>
			  				<div class="row">
			  					<div class="col">
			  						<div class="form-floating mt-3">
				  						<input type="text" name="name" id="" class="form-control" placeholder="이름"
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
	  							<input type="hidden" id="passwordAllowedNy" name="passwordAllowedNy">			 			 	
					   			<input type="password" name="password" id="password" class="form-control pw" placeholder="비밀번호" style="border-color:white;" autocomplete="off">
								<div class="invalid-feedback" id="passwordFeedback"></div>
								<label for="floatingPassword">비밀번호</label>
							</div>
		  				</td>
	  				
	  				<!-- 비밀번호확인 -->
		  				<td>
		  					<div class="form-floating mt-3">
		   			 			<input type="password" id="passwordCheck" class="form-control pw" placeholder="비밀번호확인" aria-label="First name" style="border-color:white;" autocomplete="off">
		   			 			<input type="hidden" id="passwordAllowedNy" name="passwordAllowedNy">
		   			 			 <div class="invalid-feedback" id="passwordCheckFeedback"></div>
		   			 			<label for="floatingPassword">비밀번호확인</label>
	   			 			</div>
			  			</td>
					</tr>
					
					<!-- 이메일 -->
					<tr>
						<td>
							<div class="form-floating mt-3">
								<input type="text" class="form-control" name="email" placeholder="이메일 계정" style="border-color:white; display:inline-block;" autocomplete="off">
								<label for="floatingPassword">이메일</label>
							</div>
						</td>
						<td>
							<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name = "email">
							  <option selected>@Email</option>
							  <c:forEach items="${listCodeEmail}" var="listEmail" varStatus="statusEmail">
									<option value="${listEmail.seq}" <c:if test="${item.email eq listEmail.seq}">selected</c:if>>${listEmail.codeGroupCode}</option>
							  </c:forEach>
							</select>			
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- 추가정보 -->
		<div class="container my-wrap" style="font-family: '나눔스퀘어라운드 Regular';">
			<div class="accordion">
				<h2 class="accordion-header" id="headingOne">
				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		        	추가 정보
		        </button>
			</h2>
			<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<div class="table" style="font-family: '나눔스퀘어라운드 Regular';">
							<table class="table align-middle">
								<!--생년월일-->
								<tr>
						  			<th>
						  				<div class="row">
						  					<div class="col">
						  						<div class="form-floating mt-3">
							  						<input type="text" name="dob" id="datepicker" class="form-control" placeholder="생년월일"
							  						 style="border-color:white;">
							  						<label for="floatingPassword">생년월일</label>
						  						</div>
						  					</div>
						  				</div>
					  				</th>
					  				<!--성별-->
					  				<th>
										<div class="col-md-3 mt-3 ">
											<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="gender" id="gender">
												<option value="0">성별</option>
												<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
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
							  						<input type="text" name="number" id="" class="form-control" placeholder="전화번호"
							  						aria-label="First name" style="border-color:white;" autocomplete="off">
							  						<label for="floatingPassword">전화번호</label>
						  						</div>
						  					</div>
						  				</div>
					  				</th>
					  				<!--통신사-->
					  				<th>
										<div class="col-md-3 mt-3 ">
											<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="telecom" id="telecom">
												<option value="0">통신사</option>
												<c:forEach items="${listCodetelecom }" var="listTelecom" varStatus="statusTelecom">
													<option value="${listTelecom.seq }" <c:if test="${item.telecom eq listTelecom.seq }">selected</c:if>>${listTelecom.codeGroupCode }</option>
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
					  								<input type="text" name="postNumber" id="sample4_postcode" class="form-control" placeholder="우편번호"
						  							aria-label="first name" style="border-color:white;" autocomplete="off">
						  							<label for="floatingPassword">우편번호</label>
					  							</div>
				  							</div>
				  						</div>
				  					</th>
				  					<th>
				  						<div class="row">
				  							<div class="col-md-4 mt-3 ">
				  								<button type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn btn-outline-warning btn-lg">우편번호</button>
				  							</div>
				  						</div>
				  					</th>
				  				</tr>
				  				<!-- 주소 -->
				  				<tr>
				  					<th>
				  						<div class="row">
				  							<div class="col">
				  								<div class="form-floating mt-3">
					  								<input type="text" name="roadAddress" id="sample4_roadAddress" class="form-control" placeholder="도로명주소"
						  							aria-label="first name" style="border-color:white;" autocomplete="off">
						  							<label for="floatingPassword">도로명주소</label>
					  							</div>
				  							</div>
										</div>
									</th>
									<th>
										<div class="row">
											<div class="col-md-4 mt-3 ">
												<div class="form-floating mt-3">
													<input type="text" name="numberAddress" id="sample4_jibunAddress"  class="form-control" placeholder="지번주소"
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
													<input type="text" name="lat" id="lng" class="form-control" placeholder="위도"
													aria-label="first name" style="border-color:white;" autocomplete="off">
													<label for="floatingPassword">위도</label>
												</div>
											</div>
									  </div>
								  </th>
								  <th>
									  <div class="row">
										  <div class="col-md-4 mt-3 ">
											  <div class="form-floating mt-3">
												  <input type="text" name="lat" id="lat"  class="form-control" placeholder="경도"
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
													<input type="text" name="detailedAddress" id="" class="form-control" placeholder="상세주소"
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
			</div>
		</div>
		<div class="row justify-content-center">
				<div class="input col-4 mb-3 mt-3">
				  <input type="file" class="form-control" id="img" multiple="multiple">
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="input col-4">
				  <input type="file" class="form-control" id="img2" multiple="multiple">
				</div>
			</div>
		<div class="row justify-content-center">
			<div class="col-3 offset-1">
				<button class="btn btn-outline-warning btn-lg" id="btnSave" type="button">회원가입</button>
				<button class="btn btn-outline-warning btn-lg" type="button">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
			</div>
		</div>
	
		<div class="foot">
		<div class="row justify-content-center">
				<div class="col text-center">
					<br><image alt="" src="../../resources/images/kbfoot.png"></image>
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
	</form>
	
				
	<!-- end -->
	
	
	<!-- script -->
	
	<!-- 카카오맵API -->
	<!-- 우편번호 --> 
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a4110429842172d8d27ea6bb34d77957&libraries=services"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	          /*       // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                } */
			<!-- 위도/경도 -->
			/* lat and lng from address s */
				
			// 주소-좌표 변환 객체를 생성
			var geocoder = new daum.maps.services.Geocoder();
			
			// 주소로 좌표를 검색
			geocoder.addressSearch(roadAddr, function(result, status) {
			 
				// 정상적으로 검색이 완료됐으면,
				if (status == daum.maps.services.Status.OK) {
					
					document.getElementById("lng").value=result[0].y;
					document.getElementById("lat").value=result[0].x;
				}
			});
			/* lat and lng from address e */
		<!-- 위도/경도 end -->
	            }
	        }).open();
	    }
	</script>
	<!-- 우편번호 end -->
	<!-- 카카오맵API end -->
	
	<!-- id 중복확인 -->
	<script>
	$("#id").on("focusout", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "checkId" 							/* checkId는 dto부터 만들어야한다 */
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("idFeedback").classList.add('is-valid');
						document.getElementById("idFeedback").classList.remove('invalid-feedback');
						document.getElementById("idFeedback").classList.add('valid-feedback');
						 $("#idFeedback").text("사용가능");
					} else {
						document.getElementById("idFeedback").classList.add('is-invalid');
						document.getElementById("idFeedback").classList.remove('valid-feedback');
						document.getElementById("idFeedback").classList.add('invalid-feedback');
						$("#idFeedback").text("사용 불가능 합니다");
					}
				}
				
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	});
	</script>
	<!-- id 중복확인end -->
	
	<!-- 비밀번호 일치 확인 -->
	<script type="text/javascript">
		$("#password").on("focusout", function(){
			var pw = $("#password").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			
			if(pw.length < 10 || pw.length > 20){
				document.getElementById("password").classList.add('is-invalid');
				document.getElementById("passwordFeedback").classList.remove('valid-feedback');
				document.getElementById("passwordFeedback").classList.add('invalid-feedback');
				document.getElementById("passwordFeedback").innerText = "10자리 ~ 20자리 이내로 입력해주세요.";
				document.getElementById("passwordAllowedNy").value = 0;
				return false;
			}else if(pw.search(/\s/) != -1){
				document.getElementById("ifmmPassword").classList.add('is-invalid');
				document.getElementById("passwordFeedback").classList.remove('valid-feedback');
				document.getElementById("passwordFeedback").classList.add('invalid-feedback');
				document.getElementById("passwordFeedback").innerText = "비밀번호는 공백 없이 입력해주세요.";
				document.getElementById("passwordAllowedNy").value = 0;
				return false;
			}else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
				document.getElementById("password").classList.add('is-invalid');
				document.getElementById("passwordFeedback").classList.remove('valid-feedback');
				document.getElementById("passwordFeedback").classList.add('invalid-feedback');
				document.getElementById("passwordFeedback").innerText = "영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.";
				document.getElementById("passwordAllowedNy").value = 0;
				return false;
			}else {
				document.getElementById("password").classList.add('is-valid');
				document.getElementById("password").classList.remove('is-invalid');
				document.getElementById("passwordFeedback").classList.remove('invalid-feedback');
				document.getElementById("passwordFeedback").classList.add('valid-feedback');
				document.getElementById("passwordFeedback").innerText = "사용 가능 합니다.";
				document.getElementById("passwordAllowedNy").value = 1;
			}
		});
		$("#passwordCheck").on("focusout", function(){
			if($('#password').val() != $('#passwordCheck').val()){
				document.getElementById("passwordCheck").classList.add('is-invalid');
				document.getElementById("passwordCheckFeedback").classList.remove('valid-feedback');
				document.getElementById("passwordCheckFeedback").classList.add('invalid-feedback');
				document.getElementById("passwordCheckFeedback").innerText = "비밀번호가 일치하지 않습니다.";
				document.getElementById("ifmmPasswordChkAllowedNy").value = 0;
	        } else{
	        	document.getElementById("passwordCheck").classList.add('is-valid');
				document.getElementById("passwordCheck").classList.remove('is-invalid');
				document.getElementById("passwordCheckFeedback").classList.remove('invalid-feedback');
				document.getElementById("passwordCheckFeedback").classList.add('valid-feedback');
				document.getElementById("passwordCheckFeedback").innerText = "비밀번호가 일치합니다.";
				document.getElementById("ifmmPasswordChkAllowedNy").value = 1;
	        }
		});
	</script>
	
	
	
	
	<!-- insert -->
	<script>
		var goUrlInsert = "/memberInsert";
		
		var form =$("form[name=form]");
		
		$("#btnSave").on("click", function() {
			form.attr("action",goUrlInsert).submit();
		})
	</script>
	<!-- insert end-->
	
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
		  } );
	  </script>
	  <!-- DatePicker end -->
	  
	  <script>
		validationInst = function() {
			
			var obj = document.getElementById("img").files;
			var obj2 = document.querySelector("#img2").files;
			
			alert(obj);
			alert(obj.length);
			alert(obj.name);
			
			for(var i=0, i<obj.length; i++){
				alert(obj[i].name + " : " + obj[i].size);
			}
			alert(obj2);
			alert(obj2.length);
			
			for(var i=0, i<obj2.length; i++){
				alert(obj2[i].name + ":" + obj2[i].size);
			}
		}
	</script>
	  
</body>
</html>