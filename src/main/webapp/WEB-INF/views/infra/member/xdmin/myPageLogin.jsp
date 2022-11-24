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
	<link href="../../resources/css/myPageLogin.css" rel="stylesheet">
	<!-- chat css -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    	<style>
		div	{
			/* border: solid 1px orange; */
		}
	    .card {
            height: 700px;
            border-radius: 15px !important;
            background-color: rgba(0, 0, 0, 0.4) !important;
        }

        .contacts_body {
            padding: 0.75rem 0 !important;
            overflow-y: auto;
            white-space: nowrap;
            background: #1F2122;
        }

        .msg_card_body {
            overflow-y: auto;
            background: #1F2122;
        }

        .card-header {
            border-radius: 15px 15px 0 0 !important;
            border-bottom: 0 !important;
            background: #1F2122;
        }

        .card-footer {
            border-radius: 0 0 15px 15px !important;
            border-top: 0 !important;
            background: #1F2122;
        }

        .container {
            align-content: center;
        }

        .search {
            border-radius: 15px 0 0 15px !important;
            background-color: rgba(0, 0, 0, 0.3) !important;
            border: 0 !important;
            color: white !important;
        }

        .search:focus {
            box-shadow: none !important;
            outline: 0px !important;
        }

        .type_msg {
            background-color: rgba(0, 0, 0, 0.3) !important;
            border: 0 !important;
            color: white !important;
            height: 60px !important;
            overflow-y: auto;
        }

        .type_msg:focus {
            box-shadow: none !important;
            outline: 0px !important;
        }

        .attach_btn {
            border-radius: 15px 0 0 15px !important;
            background-color: rgba(0, 0, 0, 0.3) !important;
            border: 0 !important;
            color: white !important;
            cursor: pointer;
        }

        .send_btn {
            border-radius: 0 15px 15px 0 !important;
            background-color: rgba(0, 0, 0, 0.3) !important;
            border: 0 !important;
            color: white !important;
            cursor: pointer;
        }

        .search_btn {
            border-radius: 0 15px 15px 0 !important;
            background-color: rgba(0, 0, 0, 0.3) !important;
            border: 0 !important;
            color: white !important;
            cursor: pointer;
        }

        .contacts {
            list-style: none;
            padding: 0;
        }

        .contacts li {
            width: 100% !important;
            padding: 5px 10px;
            margin-bottom: 15px !important;
        }

        .active {
            background-color: #27292A;
        }

        .user_img {
            height: 60px;
            width: 60px;
            border: 1.5px solid #f5f6fa;
        }

        .img_cont {
            display: flex;
            align-items: center;
            position: relative;
            height: 70px;
            width: 70px;
        }

        .chat_product_img {
            border-radius: 5px;
            align-items: center;
            position: relative;
            height: 50px;
            width: 50px;
        } 

        .chat_product_info {
            margin-top: 10px;
            margin-bottom: auto;
            margin-left: 0px;
            overflow: hidden;
            white-space: nowrap;
        }

        .chat_product_info .title {
            font-size: 12px;
            color: white;
        }

        .chat_product_info .status {
            font-size: 12px;
            color: white;
            font-weight: bold;
            margin-right: 5px;
        }

        .chat_product_info p {
            font-size: 12px;
            color: rgba(255, 255, 255, 0.6);
        }

        .msg_cotainer {
            margin-top: auto;
            margin-bottom: auto;
            margin-left: 10px;
            border-radius: 25px;
            background-color: #27292A;
            color: white;
            padding: 10px;
            position: relative;
        }

        .msg_cotainer_send {
            margin-top: auto;
            margin-bottom: auto;
            margin-right: 10px;
            border-radius: 25px;
            background-color: #E75E8D;
            color: white;
            padding: 10px;
            position: relative;
        }

        .msg_time {
            position: absolute;
            left: 0;
            margin-left: 10px;
            min-width: 100px;
            bottom: -15px;
            color: rgba(255, 255, 255, 0.5);
            font-size: 10px;
        }

        .msg_time_send {
            position: absolute;
            right: 0;
            margin-right: 10px;
            min-width: 100px;
            bottom: -15px;
            color: rgba(255, 255, 255, 0.5);
            font-size: 10px;
            text-align:end; 
        }

        .msg_head {
            position: relative;
            background: #1F2122;
        }

        /* width */

        ::-webkit-scrollbar {
            width: 10px;
        }


        /* Track */

        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }


        /* Handle */

        ::-webkit-scrollbar-thumb {
            background: #888;
        }


        /* Handle on hover */

        ::-webkit-scrollbar-thumb:hover {
            background: #555;
        }

        @media(max-width: 576px) {
            .contacts_card {
                margin-bottom: 15px !important;
            }
        }
	</style>
</head>
<body>
	
	<!-- start -->
	<!-- 좌측메뉴 -->
	<div id="sidebar">
		<div>
			<h1>
				<a href="../maine/mainForm.html">
					<img src="../../resources/images/kblogo.png">
				</a>
			</h1>
			<ul>
				<li>
					<a href="myPage" style="color:black;">
						<p class="myPage mt-5 mb-5">
							마이페이지
						</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>내차사기 주문관리</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>내차팔기 신청관리</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>렌트 신청내역</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p><hr></p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>직영점 방문예약 신청내역</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>보증수리 접수내역</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p><hr></p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>관심차량</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>판매준비차량 알림</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p><hr></p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>찜한 차량</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>최근 본 차량</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p><hr></p>
					</a>
				</li>
				<li>
					<a href="../member/memberModForm.html" style="color:red;">
						<p>회원정보</p>
					</a>
				</li>
				<li>
					<a href="snsLogin" style="color:black;">
						<p>SNS 로그인 설정</p>
					</a>
				</li>
				<li>
					<a href="#" style="color:black;">
						<p>맞춤정보설정</p>
					</a>
				</li>
			</ul>
			<div>
				<img src="../../resources/images/sideHero.png">
			</div>
		</div>
	</div>
	
	<!-- 좌측메뉴 end -->
	<nav>
		<p class="fs-3">마이페이지</p>
	</nav>
	<main>
		<!-- 채팅박스	 -->
		<div class="container">
        <div class="page-content">
        	<form id="mainForm" method="POST">
        		<input type="hidden" id="selectedRoom">
	        	<div class="row justify-content-center h-100">
	                <div class="col-md-4 col-xl-3 chat">
	                    <div class="card mb-sm-3 mb-md-0 contacts_card">
	                        <div class="card-header">
	                            <div class="input-group">
																	<input type="text" placeholder="add ChatUser Seq..." id="cuMember" name="cuMember" class="form-control search">
	                                <span class="input-group-text search_btn" onclick="addChat()"><i class="fa-solid fa-plus"></i></span>
	                            </div>
	                        </div>
	                        <div class="card-body contacts_body">
	                            <ui class="contacts" id="chatList">
	                            
	                            	<c:forEach items="${list}" var="list" varStatus="status">
	                            		
											<li class="room" id="${list.chatSeq}" onclick="selectChatRoom(${list.chatSeq})">
		                                    <div class="d-flex bd-highlight">
		                                        <div class="img_cont">
																								<!-- 아래 path 와 uuidname 도 본인의 dto field에 맞게 수정 -->
		                                            <img src="
													<c:if test = "${list.path ne null}">
														${list.path}${list.uuidName}
													</c:if>
		                                                " class="rounded-circle user_img">
		                                        </div>
		                                        <div class="chat_product_info">
																								<!-- 아래 mmNickName  도 본인의 dto field에 맞게 수정 -->
		                                            <span class="status"><c:out value="${list.mmNickName }"/></span>
					                                 			<p>TEST TEXT FIELD</p>
		                                        </div>
		                                    </div>
		                                </li>
	                            			
	                            	</c:forEach>
	                             
	                            </ui>
	                        </div>
	                        <div class="card-footer"></div>
	                    </div>
	                </div>
	                <div class="col-md-8 col-xl-6 chat">
	                    <div class="card">	                       
	                        <div id="chatBox" class="card-body msg_card_body">
			<!-- 채팅박스 end -->
			 </div>
	                        <div class="card-footer">
	                            <div class="input-group">
	                                <span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>
	                                <textarea id="chatMessage" class="form-control type_msg"
	                                    placeholder="Type your message..."></textarea>
	                                <span class="input-group-text send_btn" id="sendBtn"><i class="fas fa-location-arrow"></i></span>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	          
	
	            
            </form>
        </div>
	</div>
		</div>
	<!-- 회원정보 end -->
	</main>
	<footer>
			<div class="row mt-5">
				<hr>
				<div class="col">
					<br><image alt="" src="../../resources/images/kbfoot.png"></image>
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
		</footer>
	<div id="fb-root"></div>
	<!-- end -->
	
	<!-- 로그인 페이지 전환 -->
	<!-- script -->
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v14.0" nonce="u6wxcWyc"></script>
	<script>
		const triggerTabList = document.querySelectorAll('#myTab button')
			triggerTabList.forEach(triggerEl => {
			const tabTrigger = new bootstrap.Tab(triggerEl)

			triggerEl.addEventListener('click', event => {
				event.preventDefault()
				tabTrigger.show()
			})
			})
	</script>
	<!-- 로그인 페이지 전환 end -->
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
						location.href = "myPageForm";
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
	<script type="module">

	import { initializeApp } from "https://www.gstatic.com/firebasejs/9.12.1/firebase-app.js";
	
  //Firebase 프로젝트에서 추출한 정보 입력
	const firebaseConfig = {
  		 apiKey: "AIzaSyCwGaOKgdZZNHfxw8Xlpu05JRGbGRQQzDo",
    authDomain: "my-chat-d7386.firebaseapp.com",
    databaseURL: "https://my-chat-d7386-default-rtdb.firebaseio.com",
    projectId: "my-chat-d7386",
    storageBucket: "my-chat-d7386.appspot.com",
    messagingSenderId: "29005941556",
    appId: "1:29005941556:web:310105715efb295ea1f361"
	};		
	// Initialize Firebase
	const app = initializeApp(firebaseConfig);

	import { getDatabase, ref, set, onValue }	from "https://www.gstatic.com/firebasejs/9.12.1/firebase-database.js";
	
	const db = getDatabase();

	var insMsg = document.getElementById("chatMessage");
	insMsg.addEventListener('keyup',enterKey);

	var sendBtn = document.getElementById("sendBtn");
	sendBtn.addEventListener('click',sendMessage);


	function enterKey() {
		
		var keycode = event.keyCode;
		
		if(keycode == 13) //Enter
			sendMessage();
	};
		
	function sendMessage(){

		var room = $("#selectedRoom").val();
	
		if(room == "") {
			//채팅방을 선택하지 않고 메세지 보내면 동작하지 않도록
			$("#chatMessage").val("");
			return;
		}

		var message = $("#chatMessage").val();

		//메시지 입력창 초기화
		$("#chatMessage").val("");
		
		//새 메세지 추가하면 채팅방에 이전 기록도 다시 다 불러와서 한번 비워줌
		$("#chatBox").html(""); 	
	
		//새 메세지를 Firebase / realtime database / chat / 채팅방seq / 시간대 / 작성자 / 메세지에 입력합니다.
		set(ref(db,'chat/'+room+'/'+getnow()+'/'+${sessSeq} ),{
			Masseage: message
		})

		//스크롤을 제일 아래로 유지
		$("#chatBox").scrollTop($("#chatBox")[0].scrollHeight);
	};
	
	function readMessage(e){

		const room = e.id; 
		$("#selectedRoom").val(room);
		
		const dbRef = ref(db, 'chat/'+room);
		const txt = "";
        onValue(dbRef,(snapshot) => {
            if(snapshot.key == $("#selectedRoom").val()){
				//채팅을 누르면 기존 채팅은 지우고 새로 불러오게
				$("#chatBox").html("");
                snapshot.forEach((childSnapshot) => {
                    const timetable = childSnapshot.key;
                    console.log(timetable); 
                    onValue(ref(db,'chat/'+room+'/'+timetable),(snapshot2) => {
                        snapshot2.forEach((childSnapshot2) => {
                            const writer = childSnapshot2.key
                            console.log(writer);
                        
                            onValue(ref(db,'chat/'+room+'/'+timetable+'/'+writer),(snapshot3) => {
                                snapshot3.forEach((childSnapshot3) => {
                                        const message = childSnapshot3.val()
                                        console.log(message);
                                            
                                        var txt = '';
                                        txt += '<div class="d-flex mb-4 justify-content-';
                                        txt += writer == ${sessSeq} ? 'end' : 'start';
                                        txt += '">';
                                        txt += '<div class="msg_cotainer';
                                        txt += writer == ${sessSeq} ? '_send' : '';
                                        txt += '">';
                                        txt += message;
                                        txt += '<span class="msg_time';
                                        txt += writer == ${sessSeq} ? '_send' : '';
                                        txt += '">';
                                        txt += getTimeFormat(timetable);
                                        txt += '</span>';
                                        txt += '</div>';
                                        txt += '</div>';

                                        $("#chatBox").append(txt);
                                        $("#chatBox").scrollTop($("#chatBox")[0].scrollHeight);
                                    });
                                }); 
                            }); 
                        });
                    });
                 }		
            });	
	}

	$(".room").click(function(){
		readMessage(event.currentTarget);
				
	}); 
	function getTimeFormat(timetable){
		//221105080634 
		return timetable.substring(0,2)+"-"+timetable.substring(2,4)+"-"+timetable.substring(4,6)+" "+timetable.substring(6,8)+":"+timetable.substring(8,10)+":"+timetable.substring(10,12);	
	}

	</script>
	
	<script>
				
		getnow = function() {
				
			var timestamp = new Date().getTime();
			
			var date = new Date(timestamp); //타임스탬프를 인자로 받아 Date 객체 생성
			
			var year = date.getFullYear().toString().slice(-2); //년도 뒤에 두자리
			var month = ("0" + (date.getMonth() + 1)).slice(-2); //월 2자리 (01, 02 ... 12)
			var day = ("0" + date.getDate()).slice(-2); //일 2자리 (01, 02 ... 31)
			var hour = ("0" + date.getHours()).slice(-2); //시 2자리 (00, 01 ... 23)
			var minute = ("0" + date.getMinutes()).slice(-2); //분 2자리 (00, 01 ... 59)
			var second = ("0" + date.getSeconds()).slice(-2); //초 2자리 (00, 01 ... 59)
			
			return year+month+day+hour+minute+second;
		};
	
		selectChatRoom = function (roomNo) {
            
            var roomArray = $("li[name=room]");
            roomArray.each(function (index, item) {
                if (index != roomNo - 1)
                    item.classList.remove("active");
                else
                    item.classList.add("active");
            });


        };

		addChat = function(){
			
					$.ajax({
						url: '/chat/insChat'
						,type: 'POST'
						,datatype:'json'
						,data:{
							cuMember : $("#cuMember").val()
						}
						,success:function(result){
							if(result.rt=="success"){
								
								$("#cuMember").val("");
								var txt="";
								txt+='<li class="room" id="';
								txt+=result.newChat.chatSeq;
								txt+='" onclick="selectChatRoom(';
								txt+=result.newChat.chatSeq;
								txt+=')">';
								txt+='<div class="d-flex bd-highlight">';
								txt+='<div class="img_cont">';
								//아래 path 와 uuidname 도 본인의 dto field에 맞게 수정
								txt+='<img src="';
								if(result.newChat.upPath != null)
								{
									txt+=result.newChat.path + result.newChat.uuidName;
								}
								txt+='" class="rounded-circle user_img">';
								txt+='</div>';
								txt+='<div class="chat_product_info">';
								txt+='<span class="status">';
								txt+=result.newChat.id;
								txt+='</span>';
								txt+='<p>TEST TEXT FIELD</p>';
								txt+='</div>';
								txt+='</div>';
								txt+='</li>';
								$("#chatList").prepend(txt);
							}else{
								alert("fail..!");
							}
						}
						,error:function(){
							alert("ajax error..!");
						}
					});
			
				}
    </script>
	<script src="https://kit.fontawesome.com/df50a53180.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>