<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>장바구니</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Header -->
		<header id="header">
			<div id="logobox"><a href="index.html" class="title" id="logo_"><img src="./images/sweethome.png" alt="사진" id="logo"></a></div>
			<div id="mypage">
				<a href=""><img src="./images/basicprofile.jpg" alt="" id="myprofile"></a>
					<h5 id="welcome">환영합니다! <br>유저님</h5>
			</div>
			<div class="dropdown">
				<button class="dropdown-button">MENU</button>
				<div class="dropdown-content">
					<a href="#">커뮤니티</a>
					<a href="#">문의내역</a>
					<a href="./mypage.html">마이페이지</a>
					<a href="#">나의 장바구니</a>
				</div>
			</div>
		</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div class="inner">
							<h1 class="major">장바구니</h1>
							<div id="basket">
								<div id="myproduct1">
									<div id="product_img">
										<img src="./product/생리대.png" alt="" id="product_img1">
									</div>
									<div id="product_name">
										<p>생리대 1pack(1pack에 32개의 생리대가 들어있습니다)</p>
									</div>
									<div id="product_amount">
										<p>수량: 1</p>
										<input type="button" value="삭제" id="delete">
									</div>
								</div>
							</div>
							<div id="order">
								<a href=""><input type="button" value="주문하기" id="orderbutton"></a>
							</div>
						</div>
				</section>
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