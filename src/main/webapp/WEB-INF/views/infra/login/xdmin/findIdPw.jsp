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
    <link href="../../resources/css/findIdPw.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
</head>
<body>
	
	<!-- start -->
	
	<div class="container">
        <!-- <div class="row border" style="max-width: 65%; margin-left: 15%;"> -->
         <div class="row" style="box-sizing : border-box;">
            <div class="col-12 mb-3 text-center">
                <a href="../maine/mainForm.html">
                    <img alt="로그인 이미지" src="../../resources/images/loginbg.png">
                </a>
                <span class="fs-2">아이디 찾기</span>
            </div>
            <div class="col-4 offset-4 form-floating mb-3">
                <input type="name" class="form-control" id="name" placeholder="이름">
                   <label for="floatingInput">이름</label>
            </div>
            <div class="col-4 offset-4 form-floating mb-3">
                <input type="text" class="form-control" id="dob" placeholder="생년월일">
                <label for="floatingInput">생년월일</label>
            </div>
            <div id="idHidden" style="display: none; text-align: center;">
            	<h4>회원님의 아이디는 <strong class="personerId"></strong>입니다.</h4>
           	</div>
            <div class="col-8 offset-2 d-grid mb-3">
                <div class="d-grid gap-2 col-6 mx-auto">
                <button class="btn btn-warning" type="button" id="findId">
                    <span class="fs-5">아이디 찾기</span>
                </button>
               	</div>
            </div>
            <div class="col-12 mb-3 text-center">
                <a href="../maine/mainForm.html">
                    <img alt="로그인 이미지" src="../../resources/images/loginbg.png">
                </a> 
                <span class="fs-2">비밀번호 찾기</span>
            </div>
            <div class="col-4 offset-4 form-floating mb-3">
                <input type="id" class="form-control" id="mid" placeholder="아이디">
                <label for="floatingInput">아이디</label>
            </div>
            <div class="col-4 offset-4 form-floating mb-3">
                <input type="text" class="form-control" id="" placeholder="생년월일">
                   <label for="floatingInput">생년월일</label>
            </div>
             <div class="col-4 offset-4 form-floating mb-3">
                <input type="text" class="form-control" id="" placeholder="전화번호">
                   <label for="floatingInput">전화번호</label>
            </div>
            <a href="../listChoice/choicList.html">
                <div class="col-8 offset-2 d-grid mb-3">
                    <a href="../listChoice/choicList.html">
                    <div class="d-grid gap-2 col-6 mx-auto">
                            <button class="btn btn-warning" type="button">
                                <span class="fs-5">비밀번호 찾기</span>
                            </button>
                        </div>
                    </a>
                </div>
            </a>
            <div class="col-12 text-center mb-3">
                <i>COPVRIGHT 2018 KB CAPITAL.CO.LTD.ALL RIGHTS RESERVED.</i>
            </div>
            <div class="col-1 offset-5 px-5  mb-3">
                <img alt="" src="../images/kbfoot.png">
            </div>
        </div>
    </div> 
	<!-- end -->
	
	<!-- ------------------------------------- script----------------------------------------------- -->
	<script type="text/javascript">
	
	$("#findId").on("click", function() {
			
			$.ajax({
				async: true
				,cache: false
				,type:"POST"
				,url: "findId"
				,data: {"name": $("#name").val(), "dob": $("#dob").val()}
				,success : function(response) {
					if (response.rt == "success") {
						$("#idHidden").css("display", "")
						$(".personerId").html(response.id.id);
					} else {
						alert("정확한 정보를 입력해주세요!!!");
					}
				},
				/* error : function(jqXHR, status, error) {
					alert("알 수 없는 에러 [ " + error + " ]");
				} */
				error : function(jqXHR, status, error) {
					$(".personerId").html("없는 정보");
					alert("등록된 회원 정보가 없습니다.!!");
				}
			});
		})
	</script>
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>