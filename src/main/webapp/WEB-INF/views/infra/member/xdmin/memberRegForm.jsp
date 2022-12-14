<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
	<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<style type="text/css">

	.addScroll{
		overflow-y:auto;
		height: 200px;
		background-color:#E9ECEF;
		padding-top:5px; 
		padding-left:5px;
	}
		.input-file-button{
		padding: 4px 25px;
		background-color:#FF6600;
		border-radius: 4px;
		color: white;
		cursor: pointer;
	}
	</style>
</head>
<body>
	
	<!-- start -->
	<form method="post" action="" id="member" name="form">
	<c:set var="listCodeEmail" value="${CodeServiceImpl.selectListCachedCode('16')}" />
	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}" />
	
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<input type="hidden" name="seq" value="<c:out value="${vo.seq}"/>">
	
	
	<!-- ?????? ????????? -->
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
		            <a class="nav-link" href="#" style="text-align: end;">?????????</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#" style="text-align: end;">????????????</a>
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
		        <a class="nav-link" href="#">??????????????????</a>
		        <a class="nav-link" href="#">????????????</a>
		        <a class="nav-link disabled">????????????</a>
		      </div>
		    </div>
		</nav>
		<!-- ?????? ????????? end -->
		<!-- ???????????? ????????? -->
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-md-2">
					<image alt="" src="../images/cUpListbg.jpg" width="300px"></image>
				</div>
				<div class="col-md-4 mt-5 px-0">
					<p class="fs-1">????????????</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mb-2">
					  <input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id }"/>" placeholder="ID" <c:if test="${not empty item.id }">readonly</c:if>>
					  <div id="ifmmIdFeedback"></div>
					  <label for="floatingInput">?????????</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4 mt-1">
					<div class="form-floating">
					  <input type="hidden" id="passwordAllowedNy" name="passwordAllowedNy">
					  <input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password }"/>" placeholder="Password" <c:if test="${not empty item.password }">readonly</c:if>>
					  <div class="invalid-feedback" id="passwordFeedback"></div>
					  <label for="floatingPassword">????????????</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4 mt-3">
					<div class="form-floating">
					  <input type="hidden" id="passwordAllowedNy" name="passwordAllowedNy">
					  <input type="password" class="form-control" id="passwordCheck" name="passwordCheck" value="<c:out value="${item.password }"/>" placeholder="passwordCheck" <c:if test="${not empty item.password }">readonly</c:if>>
					  <div class="invalid-feedback" id="passwordCheckFeedback"></div>
					  <label for="floatingPassword">???????????? ??????</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4 mt-3">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name }"/>" placeholder="??????">
						<label for="floatingInput">??????</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2 mt-3 offset">
					<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="gender" id="gender">
						<option value="0">??????</option>
						<c:forEach items="${listCodeGender }" var="listGender" varStatus="statusGender">
							<option value="${listGender.seq }" <c:if test="${item.gender eq listGender.seq }">selected</c:if>>${listGender.codeGroupCode }</option>
						</c:forEach>
					  </select>
				</div>
				<div class="col-md-2 form-floating mt-3 md-4">
					<input type="date" class="form-control" id="datepicker" name="dob" value='<fmt:formatDate value="${item.dob}" pattern="yyyy-MM-dd" />' placeholder="????????????">
					<label for="floatingadress">????????????</label>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mt-3">
						<input type="text" class="form-control" id="" name="emailId" value="<c:out value="${item.email }"/>"  placeholder="??????????????????">
						<label for="floatingEmail">?????????</label>
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
					  <label for="floatingPassword">????????????</label>
				  </div>
			  </div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2 form-floating mt-3 md-4">
					<input type="text" class="form-control" id="sample4_postcode" name="postNumber" value="<c:out value="${item.postNumber }"/>" placeholder="????????????">
					<label for="floatingadress">????????????</label>
				</div>
				<div class="col-md-2 mt-3 btn-group">
					<button type="button" onclick="sample4_execDaumPostcode()" value="???????????? ??????" class="btn btn-outline-warning btn-lg">????????????</button>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mb-3 mt-3">
						<input type="text" class="form-control" id="sample4_roadAddress" name="roadAddress"value="<c:out value="${item.roadAddress }"/>" placeholder="???????????????">
						<label for="floatingInput">???????????????</label>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-floating mb-3 mt-3">
						<input type="text" class="form-control" id="sample4_jibunAddress" name="numberAddress" value="<c:out value="${item.numberAddress }"/>" placeholder="????????????">
						<label for="floatingInput">????????????</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-2">
					<div class="form-floating mb-3 mt-3">
						<input type="text" class="form-control" id="lng" name="lng" placeholder="??????">
						<label for="floatingInput">??????</label>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-floating mb-3 mt-3">
						<input type="text" class="form-control" id="lat" name="lat" placeholder="??????">
						<label for="floatingInput">??????</label>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-floating mt-3">
					  <input type="text" class="form-control" id="floatingPassword" name="detailedAddress" value="<c:out value="${item.detailedAddress }"/>"  placeholder="callnumber">
					  <label for="floatingaddress">????????????</label>
				  </div>
			  </div>
			</div>
			<div class="row justify-content-center">
				<div class="input col-4 mb-3 mt-3">
				  <input type="file" class="form-control" id="img" multiple="multiple">
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-4">
					<input type="button" onclick="validationInst()" value="??????">
				</div>
			</div>
		<!-- ???????????? -->
			 <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmUploadedImage" class="form-label input-file-button">???????????????</label>
 			<input class="form-control form-control-sm" id="ifmmUploadedImage" name="ifmmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
			<div class="addScroll">
				<ul id="ulFile1" class="list-group">
				</ul>
			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifmmUploadedFile" class="form-label input-file-button">????????????</label>
			<input class="form-control form-control-sm" id="ifmmUploadedFile" name="ifmmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedFile', 2, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="ulFile2" class="list-group">
				</ul>
			</div>
        </div>
    </div>

    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmUploadedImage" class="form-label input-file-button">???????????????</label>
 			<input class="form-control form-control-sm" id="ifmmUploadedImage" name="ifmmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
 			<div class="addScroll">
				<div style="display: inline-block; height: 95px;">
					<img src="/resources/common/image/default_111.jpg" class="rounded" width= "85px" height="85px">
					<div style="position: relative; top:-85px; left:5px"><span style="color: red;">X</span></div>
				</div>
 			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifmmUploadedFile" class="form-label input-file-button">????????????</label>
			<input class="form-control form-control-sm" id="ifmmUploadedFile" name="ifmmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedFile', 2, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="ulFile2" class="list-group">
				</ul>
			</div>
        </div>
    </div>
    	<!-- ???????????? end-->
			<div class="row justify-content-center">
				<div class="col-2 p-4 offset-1 px-0">
					  <button type="button" class="btn btn-outline-warning" id="btnSave">????????????</button>
					<a href=""> 
					  <button type="button" class="btn btn-outline-warning">&nbsp;???&nbsp;&nbsp;&nbsp;&nbsp;???&nbsp;</button>
					</a> 	
				</div>
			</div>
			<!-- ???????????? ????????? end -->
			<!-- ?????? ?????? -->
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
					        <h5 class="modal-title" id="exampleModalLabel">?????? ????????????? ?????? ???????</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        ?????????????????????????
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">?????????</button>
					        <button type="button" class="btn btn-warning" id="btnDelete">???</button>
					      </div>
					    </div>
					  </div>
					</div>
				</div>
			</div>
			<!-- ?????? ?????? end -->
			<!-- ????????? -->
			<div class="foot">
				<div class="row justify-content-center">
					<div class="col text-center">
						<br><image alt="" src="../../resources/images/kbfoot.png"></image>
						<br>
						<br>???????????? ??? ???????????????????????? ??? ????????????????????? ????????????
						<br>
						<br>KB???????????? ???????????? ???????????? ????????? ???????????? ??? ?????? ???????????? ????????? ?????????, ?????? ????????? ?????? ????????? ???????????? ??????????????? ????????? ??????????????????.
						<br>??? ?????????/??? ?????? ?????? ??????, ?????????, UI ?????? ?????? ?????? ??????, ??????, ???????????? ?????? ????????? ?????? ????????? ????????? ???????????????.
						<br>
						<br>??????????????? ????????? ???????????? 301 ?????????????????? KB????????????
						<br>????????????: ?????????
						<br>????????????????????? : 214-85-08573
						<br>??????????????? ????????? ?????? : 20201101-0007
						<br>COPYRIGHT 2018 KB CAPITAL.CO.,LTD. ALL RIGHTS RESERVED.
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- ????????? end-->
		
	
	<!-- end -->
	
	<!-- ------------------------------------------script---------------------------------------------------- -->
	
	<!-- ????????????API -->
	<!-- ???????????? --> 
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a4110429842172d8d27ea6bb34d77957&libraries=services"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    //??? ??????????????? ????????? ?????? ?????? ????????? ?????? ????????? ??????, ???????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ???????????????.
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
	
	                // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
	                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
	                var roadAddr = data.roadAddress; // ????????? ?????? ??????
	                var extraRoadAddr = ''; // ?????? ?????? ??????
	
	                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
	                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
	                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // ???????????? ??????, ??????????????? ?????? ????????????.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	          /*       // ???????????? ???????????? ?????? ?????? ?????? ????????? ?????????.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // ???????????? '?????? ??????'??? ????????? ??????, ?????? ???????????? ????????? ?????????.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(?????? ????????? ?????? : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(?????? ?????? ?????? : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                } */
			<!-- ??????/?????? -->
			/* lat and lng from address s */
				
			// ??????-?????? ?????? ????????? ??????
			var geocoder = new daum.maps.services.Geocoder();
			
			// ????????? ????????? ??????
			geocoder.addressSearch(roadAddr, function(result, status) {
			 
				// ??????????????? ????????? ???????????????,
				if (status == daum.maps.services.Status.OK) {
					
					document.getElementById("lng").value=result[0].y;
					document.getElementById("lat").value=result[0].x;
				}
			});
			/* lat and lng from address e */
		<!-- ??????/?????? end -->
	            }
	        }).open();
	    }
	</script>
	<!-- ???????????? end -->
	<!-- ????????????API end -->
	
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
   <!-- id ???????????? -->
	<script>
	$("#id").on("focusout", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkId" /* checkId??? dto?????? ?????????????????? */
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						/* document.getElementById("ifmmIdFeedback").classList.remove('invalid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('valid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "?????? ?????? ?????????."; */
						 $("#ifmmIdFeedback").text("????????????");
					} else {
						/* document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "?????? ????????? ?????????"; */
						$("#ifmmIdFeedback").text("?????? ????????? ?????????");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	});
	</script>
	<!-- id ????????????end -->
	
	<!-- ???????????? ?????? ?????? -->
	<script type="text/javascript">
		$("#password").on("focusout", function(){
			var pw = $("#password").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|?????????'???";:???/?]/gi);
			
			if(pw.length < 10 || pw.length > 20){
				document.getElementById("password").classList.add('is-invalid');
				document.getElementById("passwordFeedback").classList.remove('valid-feedback');
				document.getElementById("passwordFeedback").classList.add('invalid-feedback');
				document.getElementById("passwordFeedback").innerText = "10?????? ~ 20?????? ????????? ??????????????????.";
				document.getElementById("passwordAllowedNy").value = 0;
				return false;
			}else if(pw.search(/\s/) != -1){
				document.getElementById("ifmmPassword").classList.add('is-invalid');
				document.getElementById("passwordFeedback").classList.remove('valid-feedback');
				document.getElementById("passwordFeedback").classList.add('invalid-feedback');
				document.getElementById("passwordFeedback").innerText = "??????????????? ?????? ?????? ??????????????????.";
				document.getElementById("passwordAllowedNy").value = 0;
				return false;
			}else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
				document.getElementById("password").classList.add('is-invalid');
				document.getElementById("passwordFeedback").classList.remove('valid-feedback');
				document.getElementById("passwordFeedback").classList.add('invalid-feedback');
				document.getElementById("passwordFeedback").innerText = "??????,??????, ???????????? ??? 2?????? ????????? ???????????? ??????????????????.";
				document.getElementById("passwordAllowedNy").value = 0;
				return false;
			}else {
				document.getElementById("password").classList.add('is-valid');
				document.getElementById("password").classList.remove('is-invalid');
				document.getElementById("passwordFeedback").classList.remove('invalid-feedback');
				document.getElementById("passwordFeedback").classList.add('valid-feedback');
				document.getElementById("passwordFeedback").innerText = "?????? ?????? ?????????.";
				document.getElementById("passwordAllowedNy").value = 1;
			}
		});
		$("#passwordCheck").on("focusout", function(){
			if($('#password').val() != $('#passwordCheck').val()){
				document.getElementById("passwordCheck").classList.add('is-invalid');
				document.getElementById("passwordCheckFeedback").classList.remove('valid-feedback');
				document.getElementById("passwordCheckFeedback").classList.add('invalid-feedback');
				document.getElementById("passwordCheckFeedback").innerText = "??????????????? ???????????? ????????????.";
				document.getElementById("ifmmPasswordChkAllowedNy").value = 0;
	        } else{
	        	document.getElementById("passwordCheck").classList.add('is-valid');
				document.getElementById("passwordCheck").classList.remove('is-invalid');
				document.getElementById("passwordCheckFeedback").classList.remove('invalid-feedback');
				document.getElementById("passwordCheckFeedback").classList.add('valid-feedback');
				document.getElementById("passwordCheckFeedback").innerText = "??????????????? ???????????????.";
				document.getElementById("ifmmPasswordChkAllowedNy").value = 1;
	        }
		});
	</script>
	<!-- ???????????? ?????? ??????  end-->
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
		       closeText: '??????',
		        prevText: '?????????',
		        nextText: '?????????',
		        currentText: '??????',
		        monthNames: ['1???(JAN)','2???(FEB)','3???(MAR)','4???(APR)','5???(MAY)','6???(JUN)',
		        '7???(JUL)','8???(AUG)','9???(SEP)','10???(OCT)','11???(NOV)','12???(DEC)'],
		        monthNamesShort: ['1???','2???','3???','4???','5???','6???',
		        '7???','8???','9???','10???','11???','12???'],
		        dayNames: ['???','???','???','???','???','???','???'],
		        dayNamesShort: ['???','???','???','???','???','???','???'],
		        dayNamesMin: ['???','???','???','???','???','???','???'],
		        weekHeader: 'Wk',
		        dateFormat: 'yy-mm-dd',
		        firstDay: 0,
		        showMonthAfterYear: true,
		        changeMonth: true,
		        changeYear: true,
		        yearRange: 'c-99:c+99',
		    });
		 
		  $( function() {
		    $( "#datepicker").datepicker();
		  } );
	  </script>
	  <!-- DatePicker end -->
	  
	  
	  <!-- ???????????? -->
	  <script>
	  upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
			
			const BOOTSTRAP5_SM_DIMENSIONS = "576";

			const URL_INDEX_ADMIN = "/index/indexView";
			const URL_LOGIN_FORM = "/member/loginForm";
			const URL_CHANGE_PWD_FORM = "/member/changePwdForm";

			const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
			const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
			const MAX_TOTAL_FILE_NUMBER = 5;				//	5

			function kbToMb(bytes) {
			    var e = Math.floor(Math.log(bytes)/Math.log(1024));

			    if(e == "-Infinity") return 0;
			    else return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2).slice(0, -3);
			}
			
			checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, fileCount) {
				if(allowedMaxTotalFileNumber < fileCount){
					alert("?????? ?????? ????????? "+ allowedMaxTotalFileNumber +"??? ?????? ???????????????.");
//					$("#file"+seq).val("");
//					obj.val("");
					return false;
				}
			}


			checkUploadedExt = function(objName, seq, div) {
				var ext = objName.split('.').pop().toLowerCase();
				var extArray = eval("extArray" + div);
				
				if(extArray.indexOf(ext) == -1) {
					alert("????????? ???????????? ????????????.");
//					$("#file"+seq).val("");
					return false;
				}
			}


			checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

				if(obj.size > allowedEachFileSize){
					alert("??? ?????? ?????? ???????????? "+kbToMb(allowedEachFileSize)+"MB ????????? ?????? ???????????????.");
					$("#file"+seq).val("");
					return false;
				}
			}


			checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
				if(totalSize > allowedTotalFileSize){
					alert("?????? ????????? "+kbToMb(allowedTotalFileSize)+"M??? ?????? ??? ????????????.");
					$("#file"+seq).val("");
					return false;
				}
			}

//			objName ??? seq ??? jsp ????????? ?????? ????????? ???.
//			memberProfileImage: 1
//			memberImage: 2
//			memberFile : 3
			
			var extArray1 = new Array();
			extArray1 = ["jpg","gif","png","jpeg","bmp","tif","jfif"];
			
			var extArray2 = new Array();
			extArray2 = ["txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];
			
			var totalFileSize = 0;
			var obj = $("#" + objName +"")[0].files;	
			var fileCount = obj.length;
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedTotalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; } 
			
			for (var i = 0 ; i < fileCount ; i++) {
				if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }

				totalFileSize += $("#" + objName +"")[0].files[i].size;
			}

			if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
			
			if (uiType == 1) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} else if(uiType == 2) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} else if (uiType == 3) {
				var fileReader = new FileReader();
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
				
				 fileReader.onload = function () {
					 $("#imgProfile").attr("src", fileReader.result);		/* #-> */
				 }		
			} else {
				return false;
			}
			return false;
		}
		
		
		addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li = li + name;
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li = li + '</li>';
			
			$("#ulFile"+seq).append(li);
		}
		
		
		delLi = function(seq, index) {
			$("#li_"+seq+"_"+index).remove();
		}
	<!-- ????????????end -->
	<script>
	
		validationInst = function(){
			const TOTAL_SIZE = 10;
			/* var obj = document.getElementById("img").files; */
			var obj = $("#img")[0].files;
			var fileSize = 0;
			var fileCount = obj.length;
			
			alert("????????? ????????? " + obj.length + "??? ?????????.");
			
			for(i=0; i<obj.length; i++){
			 	alert((i+1) + "?????? ????????? ????????? " + Math.round(obj[i].size/1024) + "MB ?????????.");
			}
			
			for(i=0; i<obj.length; i++){
				fileSize=fileSize + obj[i].size;
			}
			
			if(Math.round(fileSize/1024)>TOTAL_SIZE){
				alert("????????? 2MB?????? ?????????");
			}else{
				alert("??? ????????? " + Math.round(fileSize/1024) + "MB??? ?????? ???????????????");
			}
		};
	</script>
	
	
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>