<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link rel="stylesheet" href="../css/memberFrom.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- datePicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- datePicker end -->
</head>
<body>
	
	<!-- start -->
	<div class="contanier">
		<div class="dwidth">
			<div class="height">
				<!-- 여백 -->
			</div>
			<div class="row ">
				<div class="col-5">
					<label>ID</label>
					<input type="text" class="form-control">
				</div>
				<div class="col-5">
					<label>NAME</label>
					<input type="text" class="form-control">
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-5">
					<label>PASSWORD</label>
					<input type="text" class="form-control">
				</div>
				<div class="col-5">
					<label>PASSWORD CHECK</label>
					<input type="text" class="form-control">
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-5">
					<label>Email</label>
					<input type="text" class="form-control">
				</div>
				<div class="col-5 mt-4">
					<select class="form-select form-select" aria-label=".form-select-sm example">
						<option selected>::Email::</option>
						<option value="1">네이버</option>
						<option value="2">다음</option>
						<option value="3">네이트</option>
					</select>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-5">
					<label>Date of birth</label>
					<input type="text" class="form-control" id="datepicker">
				</div>
				<div class="col-5 mt-4">
					<select class="form-select form-select" aria-label=".form-select-sm example">
						<option selected>::성별::</option>
						<option value="1">남성</option>
						<option value="2">여성</option>
						<option value="3">기타</option>
					</select>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-2 mt-4">
					<select class="form-select form-select" aria-label=".form-select-sm example">
						<option selected>::통신사::</option>
						<option value="1">SKT</option>
						<option value="2">KT</option>
						<option value="3">LGU</option>
					</select>
				</div>
				<div class="col-5">
					<label>전화번호</label>
					<input type="text" class="form-control">
				</div>
				<div class="col mt-4">
					<button type="button" class="btn btn-primary">인증번호전송</button>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col">
					<div class="row">
						<div class="col-3">
							<label>우편번호</label>
							<input type="text" class="form-control" id="sample4_postcode">
						</div>
						<div class="col mt-4">
							<button type="button" class="btn btn-primary" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">우편번호</button>
						</div>
							<!-- 지도 -->
							<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
							<!-- 지도 end-->
						<div class="row mt-2">
							<div class="col-5">
								<input type="text" class="form-control" id="sample4_roadAddress">
							</div>
						</div>
						<div class="row mt-2">
							<div class="col-5">
								<input type="text" class="form-control" id="sample4_jibunAddress">
							</div>
							<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-4 offset-4 mt-3">
					<button type="button" class="btn btn-primary">&nbsp취&nbsp&nbsp소&nbsp</button>
					<button type="button" class="btn btn-primary">회원가입</button>
				</div>
			</div>
		</div>
	</div> <!-- contanier end -->
	
	
	<!-- end -->

	<!-- script -->

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
	                
	                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
			           mapOption = {
			               center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
			               level: 5 // 지도의 확대 레벨
			           };
		
			       //지도를 미리 생성
			       var map = new daum.maps.Map(mapContainer, mapOption);
			       //주소-좌표 변환 객체를 생성
			       var geocoder = new daum.maps.services.Geocoder();
			       //마커를 미리 생성
			       var marker = new daum.maps.Marker({
			           position: new daum.maps.LatLng(37.537187, 127.005476),
			           map: map
			       });
			       
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
	                            var addr = data.address; // 최종 주소 변수

	                            // 주소 정보를 해당 필드에 넣는다.
	                            document.getElementById("sample4_postcode").value = addr;
	                            // 주소로 상세 정보를 검색
	                            geocoder.addressSearch(data.address, function(results, status) {
	                                // 정상적으로 검색이 완료됐으면
	                                if (status === daum.maps.services.Status.OK) {

	                                    var result = results[0]; //첫번째 결과의 값을 활용

	                                    // 해당 주소에 대한 좌표를 받아서
	                                    var coords = new daum.maps.LatLng(result.y, result.x);
	                                    // 지도를 보여준다.
	                                    mapContainer.style.display = "block";
	                                    map.relayout();
	                                    // 지도 중심을 변경한다.
	                                    map.setCenter(coords);
	                                    // 마커를 결과값으로 받은 위치로 옮긴다.
	                                    marker.setPosition(coords)
	                                }
	                            });
	            }
	        }).open();
	    }
	</script>
	<!-- 우편번호 end -->


	
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>