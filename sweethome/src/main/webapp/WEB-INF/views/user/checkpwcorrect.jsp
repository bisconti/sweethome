<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Hyperspace by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
<style>
    h2 {
        text-align: center;
    }

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

<head>
    <title>Untitled</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript>
        <link rel="stylesheet" href="assets/css/noscript.css" />
    </noscript>
</head>

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
                <h1 class="major">비밀번호 변경 페이지</h1>
            </div>
        </section>
    </div>
    <div id="all">
        <br><br><br>
        <form action="${cp}/user/updatepw.us" name="joinForm" method="post" onsubmit="return pwcheck();">
            <input type="hidden" name="userid" id="userid" value="${userid}">
            <div class="idsearchbox">
                <label for="userpw">변경할 비밀번호</label>
                <input type="password" name="userpw" id="userpw" placeholder="비밀번호를 입력해주세요" />
            </div>
            <div class="idsearchbox">
                <label for="userpw_re">비밀번호 확인</label></th>
                <input type="password" name="userpw_re" id="userpw_re" placeholder="비밀번호 확인" />
            </div>
            <div class="idsearchbox pwsubmit">
                <input type="submit" value="변경하기" id="submit">
            </div>
            <br>
        </form>
    </div>


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

</html>