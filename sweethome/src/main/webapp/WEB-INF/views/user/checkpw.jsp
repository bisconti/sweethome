<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Hyperspace by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>

<head>
    <title>Untitled</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript>
        <link rel="stylesheet" href="assets/css/noscript.css" />
    </noscript>
</head>
<style>
    input {
        color: black !important;
    }

    /* 이승규 css수정파일 공용 */
    input::placeholder {
        color: #000 !important;
    }

    input::-webkit-input-placeholder {
        color: #000;
    }

    input:-ms-input-placeholder {
        color: #000;
    }

    label {
        color: black;
    }

    input[type="text"],
    input[type="password"],
    input[type="email"],
    input[type="tel"],
    select,
    textarea {
        background: rgba(255, 255, 255, 0.05);

        border: solid 2px #3cb371;

    }
</style>

<body class="is-preload">

        <!-- Header -->
	<header id="header">
		<div id="logobox"><a href="index.html" class="title" id="logo_"><img src="./images/sweethome.png" alt="사진"
					id="logo"></a></div>
		<div id="mypage">
			<a href=""><img src="./images/basicprofile.jpg" alt="" id="myprofile"></a>
			<h5 id="welcome">환영합니다! <br>유저님</h5>
		</div>
		<div class="dropdown">
			<div class="dropbtn">MENU</div>
			<div class="dropdown-content">
				<a href="">커뮤니티</a>
				<a href="/contactus/email_index">문의내역</a>
				<a href="/map/map_index">마이페이지</a>
				<a href="/map/map_index">나의 장바구니</a>
			</div>
		</div>
		<div id="logout">
			<a href=""><input type="button" value="로그아웃"></a>
		</div>
	</header>

    <!-- Wrapper -->
    <div id="wrapper">
        <!-- Main -->
        <section id="main" class="wrapper">
            <div class="inner">
                <h1 class="major">비밀번호 찾기</h1>
            </div>
        </section>
    </div>
    <form name="joinForm" method="post" action="${cp}/user/searchpwok.us" onsubmit="return pwSearch();"></form>
        <div class="checkid">
            <div class="idsearchbox">
                <label for="name">아이디</label>
                <input type="text" name="userid" id="userid" placeholder="아이디를 입력해주세요" />
            </div>
            <div class="idsearchbox">
                <label for="userphone">핸드폰번호</label>
                <input type="text" name="userphone" id="userphone" onkeyup="addHypen(this);" placeholder="핸드폰번호 입력"
                    maxlength="13" />
                <input type="button" value="인증번호" id="userphone_btn">
            </div>
            <div class="idsearchbox">
                <label for="userphone">인증번호</label>
                <input type="text" id="userNum" name="check_number" placeholder="인증번호를 입력해주세요">
                <input type="button" value="인증확인" id="correct_check">
            </div>
            <div class="idsearchbox pwsubmit">
                <input type="submit" value="확인" id="submit">
            </div>
        </div>
    </form>


<!-- Footer -->
<footer id="footer" class="wrapper alt">
    <div class="inner">
        <div id="external_link">
            <div id="twitter">
                <a href="https://twitter.com"><img src="./images/트위터.png" alt="" id="twitter_pic"></a>
            </div>
            <div id="facebook">
                <a href="https://facebook.com"><img src="./images/페이스북.png" alt="" id="facebook_pic"></a>
            </div>
            <div id="instagram">
                <a href="https://instagram.com"><img src="./images/인스타그램.png" alt="" id="instagram_pic"></a>
            </div>
            <div id="youtube">
                <a href="https://youtube.com"><img src="./images/유튜브.png" alt="" id="youtube_pic"></a>
            </div>
        </div>
        <ul class="menu">
            <li>고객센터</li>
            <li>대표: 이준민</li>
            <li>기관메일: sweethome@gmail.com</li>
            <li>대표전화: 02-700-0000</li>
            <li>&copy; Sweethome. All rights reserved.</li>
        </ul>
    </div>
</footer>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrollex.min.js"></script>
    <script src="assets/js/jquery.scrolly.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>

</body>
<script>
var code2 = "";
$('#userphone_btn').click(function() {
    const userphone = $('#userphone').val();
     if(userphone.length == 13){ 
      alert('인증번호가 전송되었습니다. 확인해주세요 !');
      $.ajax ({
         url: '${cp}/user/send_msg.us',
         type: 'GET',
         async: false,
         data: {
            "userphone" : userphone
         },
          success: function(data) {
            var checkNum = data;
            alert(data);
            alert('checkNum:'+ checkNum);
            
            $('#correct_check').click(function() {   
               const userNum = $('#userNum').val();
               
               if(checkNum == userNum) {
                  alert('인증 성공하였습니다.');
                  $("#userphone").attr("readonly",true);
                  code2 = data;
                  console.log(code2);
               }
               else {
                  alert('인증 실패하였습니다. 다시 입력해주세요.');
               }
            });
            
         }
      });
     }
    else {
       alert('휴대폰번호를 정확하게 입력해주세요 !')
    } 
   });
   
   
function pwSearch() {
const joinForm = document.joinForm;
    
    const userid = joinForm.userid;
    if(userid.value == ""){
        alert("아이디를 입력하세요!")
        userid.focus();
        return false;
    }
    if(userid.value.length < 5 || userid.value.length > 12){
        alert("아이디는 5자 이상 12자 이하로 입력하세요!");
        userid.focus();
        return false;
    }
    
    const userphone = joinForm.userphone;
    if(userphone.value.length != 13){
       alert("휴대폰번호를 입력해주세요 !");
       return false;
    }
    if(code2 == ""){
       alert("휴대폰번호 인증 실패입니다!")
       return false;
    }
    return true;
}
</script>
<script src="${cp}/app/user/user.js"></script>
</html>