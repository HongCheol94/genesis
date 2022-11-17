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
    <link href="../../resources/css/loginForm.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- 네이버 로그인 -->
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	<!-- 네이버 로그인 -->
	<!-- 카카오 로그인 스크립트 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<!-- 카카오 로그인 스크립트 -->
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
                            <a href="main">
                                <img alt="로그인 이미지" src="../../resources/images/loginbg.png">
                            </a>
                        </div>
                        <div class="col-4 offset-4">
                            <div class="form-floating mb-3">
                                <input type="id" class="form-control" id="id" placeholder="아이디">
                                <label for="floatingInput">아이디</label>
                            </div>
                            <div class="form-floating">
                                <input type="password" class="form-control" id="password" placeholder="Password">
                                <label for="floatingPassword">비밀번호</label>
                            </div>
                            <div class="col-4 mt-2">
                                <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
                                <label class="form-check-label" for="flexSwitchCheckChecked">Auto login</label>
                            </div>
                            <div class="d-grid gap-2 col-6 offset-6 mb-2">
                                <button class="btn btn-outline-warning" type="button" id="btnLogin">로그인</button>
                            </div>
                            <div class="col-4 offset-4">
                                <a href="/findIdPw" class="fs-6">Find Id/Password</a>
                            </div>
                            <div class="col-4 offset-4">
                                <a href="/joinMember" class="fs-6" >회원가입</a>
                            </div>
                            <div class="col">
                                <hr>
                            </div>
                           <div class="col-4 mb-4">
	                           <!--  <button type="button" onclick="location.href='javascript:naverLoginClick()';" style="background:none; border-style:none;"> -->
	                             <button type="button" id="naverIdLogin" style="background:none; border-style:none;">
	                                <img src="../../resources/images/btnNaver.jpg" width="620px" height="70px">
	                            </button>
                            </div>
                            <!-- kakao login -->
                            <form name="form">
								<input type="hidden" name="name"/>
								<input type="hidden" name="snsId"/>
								<input type="hidden" name="phone"/>
								<input type="hidden" name="email"/>
								<input type="hidden" name="gender"/>
								<input type="hidden" name="dob"/>
								<input type="hidden" name="snsImg"/>
								<input type="hidden" name="token"/>
								<input type="hidden" name="naver" value="${sessSeq }"/>
							</form>
                            <div class="col-4 mb-4">
                            	 <button type="button" id="kakaoBtn" style="background:none; border-style:none;">
                                	<img src="../../resources/images/klogin.jpg" width="620px" height="70px">
                                </button>
                            </div>
                            <div class="col-4">
                            	 <button type="button" style="background:none; border-style:none;">
                                	<img src="../../resources/images/btnGoogle.png" width="620px" height="70px">
                                </button>
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
                        <a href="/member/memberRegForm">
                            <button type="button" class="btn btn-outline-warning col-3">회원가입</button>
                        </a>
                    </div>
                    <a href="">
                        <div class="col-8 offset-2 d-grid mb-3">
                            <div class="d-grid gap-2 col-6 mx-auto">
                                    <button class="btn btn-warning"  type="button">로그인</button>
                            </div>
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

	
	<!-- 로그인 페이지 전환 -->
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
	<!-- 로그인 페이지 전환 end-->
	
	<!-- 로그인 -->
	<script >
	
 	$("#btnLogin").on("click", function(){
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "password" : $("#password").val(), "autoLogin" : $("#autoLogin").is(":checked")}
			,success: function(response) {
				if(response.rt == "success") {
						location.href = "main";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});  
 	
	</script >
	<!-- 로그인 end -->
	
	<!-- 네이버 로그인 -->
	<script>
	var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "sC4dLjDEajg7ebDdXZoF", 
				callbackUrl: "http://localhost:8080/login",
				isPopup: true
			}
		);
		
		naverLogin.init();
			
			$("#naverIdLogin").on("click", function() {
				naverLogin.getLoginStatus(function (status) {
					if (!status) {
						naverLogin.authorize();
					} else {
					setLoginStatus();
					}
				});
		})
			
		window.addEventListener('load', function () {
			if (naverLogin.accessToken != null) { 
	  			naverLogin.getLoginStatus(function (status) {
	  				if (status) {
	  					setLoginStatus();
	  				}
					});
			}
			});
   		
   		function setLoginStatus() {
			$.ajax({
				async: true
				,cache: false
				,type:"POST"
				,url: "/member/naverLoginProc"
				,data: {"name": naverLogin.user.name, "snsId": "네이버로그인"}
				,success : function(response) {
					if (response.rt == "success") {
						window.location.href = "/main";
						return false;
					} else {
						alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
					}
				},
				error : function(jqXHR, status, error) {
					alert("알 수 없는 에러 [ " + error + " ]");
				}
			});
		}
    	</script>
	<!-- 네이버 로그인end -->
	
	
	<!-- 카카오 로그인 -->
	<script>
	Kakao.init('a4110429842172d8d27ea6bb34d77957'); // test 용
    	console.log(Kakao.isInitialized());
/*     	Kakao.init('ec2655da82c3779d622f0aff959060e6');
    	console.log(Kakao.isInitialized()); */
    	
    	$("#kakaoBtn").on("click", function() {
    		/* Kakao.Auth.authorize({
   		      redirectUri: 'http://localhost:8080/member/kakaoCallback',
   		    }); */
    		
    		Kakao.Auth.login({
   		      success: function (response) {
   		        Kakao.API.request({
   		          url: '/v2/user/me',
   		          success: function (response) {
   		        	  
   		        	  var accessToken = Kakao.Auth.getAccessToken();
   		        	  Kakao.Auth.setAccessToken(accessToken);

   		        	  var account = response.kakao_account;
   		        	  
   		        	  console.log(response)
   		        	  console.log("email : " + account.email);
   		        	  console.log("name : " + account.name);
  	        	  
	  	        	  $("input[name=snsId]").val("카카오로그인");
	  	        	  $("input[name=email]").val(account.email);
	  	        	  $("input[name=token]").val(accessToken);
	  	        	  
					
	  	        	  $.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/member/kakaoLoginProc"
						,data: {"name": $("input[name=name]").val(), "snsId": $("input[name=snsId]").val(), "phone": $("input[name=phone]").val(), "email": $("input[name=email]").val(), "gender": $("input[name=gender]").val(),"token": $("input[name=token]").val()}
						,success : function(response) {
							if (response.rt == "fail") {
								alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
								return false;
							} else {
								window.location.href = "/main";
							}
						},
						error : function(jqXHR, status, error) {
							alert("알 수 없는 에러 [ " + error + " ]");
						}
					});
   		          },
   		          fail: function (error) {
   		            console.log(error)
   		          },
   		        })
   		      },
   		      fail: function (error) {
   		        console.log(error)
   		      },
   		    })
		});
   	</script>
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>