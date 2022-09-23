<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="../../resources/css/loginForm.css" rel="stylesheet">
</head>
<body>
	
	<!-- start -->
    <div class="container-mb">
        <div style="height:80px">
            <!-- 여백 -->
        </div>
        <ul class="nav nav-pills offset-4 mb-3" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
            <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">일반회원</button>
            </li>
            <li class="nav-item" role="presentation">
            <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">딜러회원</button>
            </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
            <!-- 일반회원 로그인 -->
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
                    <div class="row">
                        <div class="col-12 mb-5 text-center">
                            <a href="../maine/mainForm.html">
                                <img alt="로그인 이미지" src="../../resources/images/loginbg.png">
                            </a>
                        </div>
                        <div class="col-4 offset-4">
                            <div class="form-floating mb-3">
                                <input type="id" class="form-control" id="floatingInput" placeholder="아이디">
                                <label for="floatingInput">아이디</label>
                            </div>
                            <div class="form-floating">
                                <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                                <label for="floatingPassword">비밀번호</label>
                            </div>
                            <div class="col-4 mt-2">
                                <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
                                <label class="form-check-label" for="flexSwitchCheckChecked">Auto login</label>
                            </div>
                            <div class="d-grid gap-2 col-6 offset-6 mb-2">
                                <a href="/main" class="btn btn-outline-warning" href="main" type="button">로그인</a>
                            </div>
                            <div class="col-4 offset-4">
                                <a href="../login/findIdPw.html" class="fs-6" mt-2 mt-sm-0 href="#">Find Id/Password</a>
                            </div>
                            <div class="col">
                                <hr>
                            </div>
                            <div class="col-4 mb-4">
                                <img src="../../resources/images/btnNaver.jpg" width="620px" height="70px">
                            </div>
                            <div class="col-4 mb-4">
                                <img src="../../resources/images/klogin.jpg" width="620px" height="70px">
                            </div>
                            <div class="col-4">
                                <img src="../../resources/images/btnGoogle.png" width="620px" height="70px">
                            </div>
                        </div>
                    </div>
                </div>
            <!-- 일반회원 로그인 end -->
            <!-- 딜러 로그인 -->
            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
                <div class="row">
                    <div class="col-12 mb-5 text-center">
                        <a href="main">
                            <img alt="로그인 이미지" src="../../resources/images/loginbg.png">
                        </a>
                    </div>
                    <div class="col-4 offset-4 form-floating mb-3">
                        <input type="id" class="form-control" id="mid" placeholder="딜러아이디">
                        <label for="floatingInput">딜러아이디</label>
                    </div>
                    <div class="col-4 offset-4 form-floating mb-3">
                        <input type="password" class="form-control" id="mpw" placeholder="비밀번호">
                            <label for="floatingInput">비밀번호</label>
                    </div>
                    <div class="col-4 offset-4 mb-3">
                        <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
                        <label class="form-check-label" for="flexSwitchCheckChecked">자동 로그인</label>
                    </div>
                    <div class="col-4 offset-4 mb-3">
                        <a href="../login/findIdPw.html">
                            <button type="button" class="btn btn-outline-warning col-3">ID찾기</button>
                        </a>
                        <a href="../login/findIdPw.html">
                            <button type="button" class="btn btn-outline-warning col-3" style="margin-left: 70px; margin-right: 70px;">PW찾기</button>
                        </a>
                        <a href="../member/joinMemberForm.html">
                            <button type="button" class="btn btn-outline-warning col-3">회원가입</button>
                        </a>
                    </div>
                    <a href="">
                        <div class="col-8 offset-2 d-grid mb-3">
                            <a href="main">
                            <div class="d-grid gap-2 col-6 mx-auto">
                                    <button class="btn btn-warning" type="button">로그인</button>
                                </div>
                            </a>
                        </div>
                    </a>
                    <div class="col-12 text-center mb-3">
                        <i>COPVRIGHT 2018 KB CAPITAL.CO.LTD.ALL RIGHTS RESERVED.</i>
                    </div>
                    <div class="col-1 offset-5 mb-3">
                        <img alt="" src="../images/kbfoot.png" style="margin-left: 100px;">
                    </div>
                </div>
            </div>
            <!-- 딜러 로그인 end -->
        </div>
    </div>
	
	<!-- end -->
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v14.0" nonce="GE4xuZTk"></script>
	<script >
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