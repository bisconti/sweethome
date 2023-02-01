<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
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
				<h1 class="major">마이페이지</h1>
				<div id="left_area">
					<form action="" id="mypageform">
						<fieldset id="myprofilefield" style="margin-bottom: 20px;">
							<legend style="color: black; font-weight: bold;">PROFILE IMAGE</legend>
							<table>
								<tr>
									<td>
										<div id="myprofile_img">
											<img alt="" src="./images/basicprofile.jpg" id="userphoto">
										</div>
										<div class="filebox">
											<label for="ex_file" id="uploadbutton">업로드</label>
											<input type="file" id="ex_file" name="userphoto"
												accept=".jpg, .png, .jpeg, .gif">
										</div>
										<input type="submit" value="수정하기" id="modify" onclick="sendit()">
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset id="myinfofield" style="margin-bottom: 800px;">
							<legend style="color: black; font-weight: bold;">INFO</legend>
							<table>
								<tr>
									<th><label for="username" style="color: black;">이름</label></th>
									<td>
										<input type="text" name="username" id="username" value="이름" readonly disabled
											style="border: 1px solid mediumseagreen; color: black;" />
								</tr>
								<tr>
									<th><label for="userid" style="color: black;">아이디</label></th>
									<td>
										<input type="text" name="userid" id="userid" value="아이디" readonly disabled
											style="border: 1px solid mediumseagreen; color: black;" />
									</td>
								</tr>
								<tr>
							</table>
						</fieldset>
					</form>
				</div>
				<div id="right_area">
					<fieldset id="phonefield" style="margin-bottom: 260px;">
						<legend style="color: black; font-weight: bold;">PHONE</legend>
						<table>
							<tr>
								<th><label for="userid" style="color: black;">휴대폰번호</label></th>
								<td>
									<input type="text" name="userid" id="userid" value="01011112222" style="border: 1px solid mediumseagreen; width: 50%;" />
									<input type="button" value="인증번호" id="certificationNum"/>
								</td>
							</tr>
							<tr>
								<th><label for="userid" style="color: black;">인증번호입력</label></th>
								<td>
									<input type="text" name="userid" id="userid" style="border: 1px solid mediumseagreen; width: 50%;"/>
									<input type="button" value="인증확인" id="certificationVerify"/>
									<input type="button" value="변경" id="modification" style="background-color: mediumseagreen; color: black;"/>
								</td>
							</tr>
						</table>
					</fieldset>
					<fieldset id="passwordfield" style="margin-bottom: 156px;">
						<legend style="color: black; font-weight: bold;">PASSWORD</legend>
						<table>
							<tr>
								<th><label for="userpw" style="color: black;">현재 비밀번호</label></th>
								<td>
									<input type="password" name="userpw" id="userpw" style="border: 1px solid mediumseagreen; color: black;"/>
								</td>
							</tr>
							<tr>
								<th><label for="userpw" style="color: black;">비밀번호</label></th>
								<td>
									<input type="password" name="userpw" id="userpw" style="border: 1px solid mediumseagreen; color: black;"/>
								</td>
							</tr>
							<tr>
								<th><label for="userpw_re" style="color: black;">비밀번호 확인</label></th>
								<td>
									<input type="password" name="userpw_re" id="userpw_re" onkeyup="pwcheck()" style="border: 1px solid mediumseagreen;"/>
									<input type="button" value="변경" id="modification1" style="background-color: mediumseagreen; color: black;"/>
								</td>
							</tr>
						</table>
					</fieldset>
					<fieldset id="addressfield" style="border: 2px solid mediumseagreen; margin-bottom: 30px;">
						<legend style="color: black; font-weight: bold;">ARRDRESS</legend>
						<table>
							<tr class="zipcode_area">
								<th style="color: black;">우편번호</th>
								<td>
									<input type="text" id="sample6_postcode" placeholder="우편번호" name="zipcode"
										value="333021" onclick="sample6_execDaumPostcode()" style="color: black; border: 1px solid mediumseagreen; margin-bottom: 40px; width: 50%;"/>
									<input type="button" value="우편번호" onclick="sample6_execDaumPostcode()" id="addressNum"/>
								</td>
							</tr>
							<tr class="addr_area">
								<th style="color: black;">주소</th>
								<td>
									<input type="text" id="sample6_address" placeholder="주소" name="addr" value="경기도 평택시"
										readonly style="color: black; border: 1px solid mediumseagreen; margin-bottom: 40px;"/>
								</td>
							</tr>
							<tr>
								<th style="color: black;">상세주소</th>
								<td>
									<input type="text" id="sample6_detailAddress" placeholder="상세주소" value="고속도로 422"
										name="addrdetail" style="color: black; border: 1px solid mediumseagreen; margin-bottom: 40px;"/>
								</td>
							</tr>
							<tr>
								<th style="color: black;">참고항목</th>
								<td>
									<input type="text" id="sample6_extraAddress" placeholder="참고항목" name="addretc"
										value="10335" readonly disabled style="color: black; border: 1px solid mediumseagreen; margin-bottom: 40px;"/>
									<input type="button" value="변경" id="modification2" style="background-color: mediumseagreen; color: black;"/>
								</td>
							</tr>
						</table>
					</fieldset>
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