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
    input[type="submit"],
    input[type="reset"],
    input[type="button"],
    button,
    .button {
        background-color: #3cb371;
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
                <h1 class="major">상품 관리</h1>
            </div>
        </section>
    </div>
    <div class="tablesheet" style="margin: 0 auto; width: 1000px; margin-top: -50px;">
        <form>
            <table class="tg">
                <thead>
                    <tr>
                        <th class="tg-0lax"></th>
                        <th class="tg-1wig">상품</th>
                        <th class="tg-1wig">현재재고</th>
                        <th class="tg-1wig">입고</th>
                        <!-- <th class="tg-1wig">저장</th> -->
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="tg-0lax">1</td>
                        <td class="tg-0lax">상품명</td>
                        <td class="tg-0lax">db상갯수</td>
                        <td class="tg-0lax"><input type="text"
                                style="width: 90px; height: 30px; margin: 0 auto; border : none; color: black !important;"
                                maxlength="3"></td>
                        <!-- <td class="tg-0lax"><input type="button" id="id_check" class="btn btn-outline-primary" value="저장"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">2</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">3</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">4</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">5</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">6</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">7</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">8</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">9</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">10</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">11</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>
                    <tr>
                        <td class="tg-0lax">12</td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <td class="tg-0lax"></td>
                        <!-- <td class="tg-0lax"></td> -->
                    </tr>

                </tbody>
            </table>
            <div class="idsearchbox">
                <input type="submit" value="저장하기" id="submit"
                    style="width: 300px; line-height: 40px; display: block; text-align: center; ">
            </div>
        </form>
    </div>

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

</html>