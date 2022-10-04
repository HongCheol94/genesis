<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl"
	class="com.hongcheol.march.modules.code.CodeServiceImpl" />
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
	<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	
	<!-- start -->
	<form method="post" action="" id="member" name="form">
	<c:set var="listCodeEmail" value="${CodeServiceImpl.selectListCachedCode('16')}" />
	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}" />
	
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<input type="hidden" name="seq" value="<c:out value="${vo.seq}"/>">
	
	
	<!-- 상단 나브바 -->
		<nav class="navbar sticky-top">
		    <a class="navbar-brand" href="/main" id="">
		    	<image alt="" src="../../resources/images/kbcar.jpg" width="70px">
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
		            <a class="nav-link" href="#" style="text-align: end;">로그인</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#" style="text-align: end;">로그아웃</a>
		          </li>
		          <hr>
		      </div>
		    </div>
		</nav>
		<nav class="navbar navbar-expand-lg" style="background-color:lightyellow">
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
		<!-- 상단 나브바 end -->
		<!-- 회원가입 입력란 -->
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-md-2">
					<image alt="" src="../images/cUpListbg.jpg" width="300px"></image>
				</div>
				<div class="col-md-4 mt-5 px-0">
					<p class="fs-1">회원가입</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mb-2">
					  <input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id }"/>" placeholder="ID" <c:if test="${not empty item.id }">readonly</c:if>>
					  <div id="ifmmIdFeedback"></div>
					  <label for="floatingInput">아이디</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4 mt-1">
					<div class="form-floating">
					  <input type="hidden" id="passwordAllowedNy" name="passwordAllowedNy">
					  <input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password }"/>" placeholder="Password" <c:if test="${not empty item.password }">readonly</c:if>>
					  <div class="invalid-feedback" id="passwordFeedback"></div>
					  <label for="floatingPassword">비밀번호</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4 mt-3">
					<div class="form-floating">
					  <input type="hidden" id="passwordAllowedNy" name="passwordAllowedNy">
					  <input type="password" class="form-control" id="passwordCheck" name="passwordCheck" value="<c:out value="${item.password }"/>" placeholder="passwordCheck" <c:if test="${not empty item.password }">readonly</c:if>>
					  <div class="invalid-feedback" id="passwordCheckFeedback"></div>
					  <label for="floatingPassword">비밀번호 확인</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4 mt-3">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name }"/>" placeholder="이름">
						<label for="floatingInput">이름</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2 mt-3 offset">
					<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="gender" id="gender">
						<option value="0">성별</option>
						<c:forEach items="${listCodeGender }" var="listGender" varStatus="statusGender">
							<option value="${listGender.seq }" <c:if test="${item.gender eq listGender.seq }">selected</c:if>>${listGender.codeGroupCode }</option>
						</c:forEach>
					  </select>
				</div>
				<div class="col-md-2 form-floating mt-3 md-4">
					<input type="date" class="form-control" id="datepicker" name="dob" value='<fmt:formatDate value="${item.dob}" pattern="yyyy-MM-dd" />' placeholder="생년월일">
					<label for="floatingadress">생년월일</label>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mt-3">
						<input type="text" class="form-control" id="" name="emailId" value="<c:out value="${item.email }"/>"  placeholder="인증번호입력">
						<label for="floatingEmail">이메일</label>
					</div>
				</div>
				<div class="col-md-2 mt-3">
					<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name = "email">
					  <option selected>@Email</option>
					  <c:forEach items="${listCodeEmail}" var="listEmail" varStatus="statusEmail">
							<option value="${listEmail.seq}" <c:if test="${item.email eq listEmail.seq}">selected</c:if>>${listEmail.codeGroupCode}</option>
					  </c:forEach>
					</select>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mt-3">
					  <input type="text" class="form-control" id="floatingPassword" name="number" value="<c:out value="${item.number }"/>" placeholder="callnumber">
					  <label for="floatingPassword">전화번호</label>
				  </div>
			  </div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2 form-floating mt-3 md-4">
					<input type="text" class="form-control" id="sample4_postcode" name="postNumber" value="<c:out value="${item.postNumber }"/>" placeholder="우편번호">
					<label for="floatingadress">우편번호</label>
				</div>
				<div class="col-md-2 mt-3 btn-group">
					<button type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn btn-outline-warning btn-lg">우편번호</button>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mb-3 mt-3">
						<input type="text" class="form-control" id="sample4_roadAddress" name="roadAddress"value="<c:out value="${item.roadAddress }"/>" placeholder="도로명주소">
						<label for="floatingInput">도로명주소</label>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-floating mb-3 mt-3">
						<input type="text" class="form-control" id="sample4_jibunAddress" name="numberAddress" value="<c:out value="${item.numberAddress }"/>" placeholder="지번주소">
						<label for="floatingInput">지번주소</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mb-3 mt-3">
						<input type="text" class="form-control" id="lng" name="lng" placeholder="위도">
						<label for="floatingInput">위도</label>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-floating mb-3 mt-3">
						<input type="text" class="form-control" id="lat" name="lat" placeholder="경도">
						<label for="floatingInput">경도</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mt-3">
					  <input type="text" class="form-control" id="floatingPassword" name="detailedAddress" value="<c:out value="${item.detailedAddress }"/>"  placeholder="callnumber">
					  <label for="floatingaddress">상세주소</label>
				  </div>
			  </div>
			</div>
			<div class="row justify-content-center">
				<div class="col-2 p-4 offset-1 px-0">
					  <button type="button" class="btn btn-outline-warning" id="btnSave">회원가입</button>
					<a href=""> 
					  <button type="button" class="btn btn-outline-warning">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
					</a> 	
				</div>
			</div>
			<!-- 회원가입 입력란 end -->
			<!-- 하단 버튼 -->
			<div class="row justify-content-center">
				<div class="col-4 offset-4">
	                   <a href="codeGroupList.html">
	                       <button type="button" id="btnModalUelete" style="background-color: red;">
	                           <i class="fa-solid fa-xmark" style="color:white;"></i>
	                       </button>
	                   </a>
					<button type="button" id="btnModalDelete" data-bs-toggle="modal" data-bs-target="#exampleModal" style="background-color: white;">
					   <i class="fa-solid fa-trash-can" style="color:red"></i>
					</button>
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">정말 지울거야? 후회 안해?</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        삭제하시겠습니까?
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
					        <button type="button" class="btn btn-warning" id="btnDelete">예</button>
					      </div>
					    </div>
					  </div>
					</div>
				</div>
			</div>
			<!-- 하단 버튼 end -->
			<!-- 바닥글 -->
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
		</div>
	</form>
	<!-- 바닥글 end-->
		
	
	<!-- end -->
	
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
	
	<!-- insert -->
  	<script type="text/javascript">
        
    	var goUrlList = "/member/member"; 					/* #-> */
    	var goUrlInst = "/member/memberInst"; 				/* #-> */
   		var goUrlUpdt = "/member/memberUpdt";				/* #-> */
    	var goUrlUele = "/member/memberUelete";				/* #-> */
    	var goUrlDele = "/member/memberDelete";				/* #-> */
    	
		var seq = $("input:hidden[name=seq]");				/* #-> */
    	
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
    	
    	$("#btnUelete").on("click", function(){
    		form.attr("action", goUrlUelete).submit();
    	});
    	
    	$("#btnDelete").on("click", function(){
    		form.attr("action", goUrlDelete).submit();
    	});
    	
   /*  	$("#btnModalUelete").on("click", function(){
    		form.attr("action", goUrlUele).submit();
    	});
    	*/
    	
    	$("#btnModalDelete").on("click", function(){
    		form.attr("action", goUrlDele).submit();
    	}); 
      
   </script>
   <!-- insert end -->
   <!-- id 중복확인 -->
	<script>
	$("#id").on("focusout", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkId" /* checkId는 dto부터 만들어야한다 */
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						/* document.getElementById("ifmmIdFeedback").classList.remove('invalid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('valid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "사용 가능 합니다."; */
						 $("#ifmmIdFeedback").text("사용가능");
					} else {
						/* document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "사용 불가능 합니다"; */
						$("#ifmmIdFeedback").text("사용 불가능 합니다");
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
// 패스워드 확인
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
	<!-- 비밀번호 일치 확인  end-->
	<!-- gender DB -->
	<script>
		 // $_POST is way cooler than $_REQUEST
		  if (isset($_POST['gender']) && !empty($_POST['gender'])) {
		
		      // sql injection sucks
		      $gender = my_real_escape_string($_POST['gender']);
		
		      // cast it as an integer, sql inject impossible
		      $id = intval($_GET['id']);
		
		      if($id) {
		          // spit out the boolean INSERT result for use by client side JS
		          if(mysql_query("UPDATE users SET gender=$gender WHERE id=$id")) {
		              echo '1';
		              exit;
		          } else {
		              echo '0';
		              exit;
		          }
		      }
		  }
	</script>
	<!-- gender DB end -->
	
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
	
	
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>