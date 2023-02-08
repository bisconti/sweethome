<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" scope="session"/>
<c:set value="${loginUser}" var="loginUser" scope="session"/>
<!DOCTYPE HTML>
<html>
<head>
	<title>따뜻한 세상, 스위트 홈</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${cp}/resources/assets/css/main.css" />
	<link rel="stylesheet" href="${cp}/resources/assets/css/noscript.css" />
</head>
<body class="is-preload">
	<!-- Sidebar -->
	<c:if test="${user != null}">
      <script>alert("${user.username}님 로그인되셨습니다.!");</script>
   </c:if>
	<section id="sidebar">
		<div class="inner">
			<nav>
				<ul>
					<li><a href="#intro">인사말</a></li>
					<li><a href="#one">스위트 홈 이란?</a></li>
					<li><a href="#two">우리 단체가 하는 일</a></li>
					<li><a href="#three">로그인</a></li>
				</ul>
			</nav>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
		</div>
	</section>
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Intro -->
		<section id="intro" class="wrapper style1 fullscreen fade-up">
			<div class="inner">
				<h1>SweetHome</h1>
				<p>가출 청소년을 지원하는 자선단체 스위트홈 홈페이지에 오신 것을 환영합니다.<br /></p>
				<ul class="actions">
					<li><a href="#one" class="button scrolly" id="toWhoareUs">더 알아보기</a></li>
				</ul>
			</div>
		</section>

		<!-- One -->
		<section id="one" class="wrapper style2 spotlights">
			<section>
				<div id="dormitory">
					<img src="${cp}/resources/images/기숙사.jpg" alt="" data-position="center center" id="dormitoryphoto" />
				</div>
				<div class="content">
					<div class="inner" style="color: black;">
						<h2>"아이들의 쉼터"</h2>
						<p>가정폭력에 노출되는 등 어떤 장소보다 따뜻해야 할 장소인 집에서 보호 받을 수 없는 청소년들을 위해 무료로 쉼터를 제공하고 있습니다.</p>
					</div>
				</div>
			</section>
			<section id="one">
				<div id="foryou">
					<img src="${cp}/resources/images/건네주는.jpg" alt="" data-position="top center" id="foryouphoto" />
				</div>
				<div class="content">
					<div class="inner">
						<h2>"생필품 지원"</h2>
						<p>경제활동이 불가능한 아이들에게 도움이 되는 약속하는 생필품을 무료로 지원하고 있습니다.</p>
						<ul class="actions">
							<li><a href="${cp}/user/shopping" class="button" id="doOrder">생필품 주문</a></li>
						</ul>
					</div>
				</div>
			</section>
			<section id="one">
				<div id="commu">
					<img src="${cp}/resources/images/커뮤니티.jpg" alt="" data-position="25% 25%" id="communityphoto" />
				</div>
				<div class="content">
					<div class="inner">
						<h2>서로간의 소통</h2>
						<p>같은 처지의 놓인 아이들이 서로에게 힘이 될 수 있도록 국내 청소년 지원 단체 중 최대 규모의 커뮤니티를 개설 및 관리하여 서로 간 도움이 될 수 있게끔 하고
							있습니다.</p>
						<ul class="actions">
							<li><a href="./community.html" class="button" id="doCommu">커뮤니티 이동</a></li>
						</ul>
					</div>
				</div>
			</section>
		</section>
		<!-- Two -->
		<section id="two" class="wrapper style3 fade-up">
			<div class="inner">
				<h2>여러분의 후원으로 청소년들의 미래를 만들어주세요.</h2>
				<p>
					평범한 일상이 간절한 아이들에게 그들이 올바른 길로 나아갈 수 있도록 도와주세요.<br>
					여러분의 후원은 청소년들이 바른 어른으로 자랄 수 있는 힘이 됩니다.
				</p>
				<div class="features">
					<section>
						<span class="icon solid major" style="background-image: url(${cp}/resources/images/man1.jpg); background-repeat : no-repeat;
						background-size : cover;"></span>
						<h3>허우진</h3>
						<p style="color: black;">"저도 청소년 시절 방황하던 시기가 있었습니다. 얼마나 위험하고 힘든 환경에 놓일지 알기 때문에 그들에게 미약하게 나마 안전하게 성장할 수 있는 발판을 마련해주고
							싶습니다."</p>
					</section>
					<section>
						<span class="icon solid major" style="background-image: url(${cp}/resources/images/girl1.jpg); background-repeat : no-repeat;
						background-size : cover;"></span>
						<h3>안병옥</h3>
						<p style="color: black;">"덜컥 두려움이 앞서는 낯선 변화들<br>어른이 되어가는 과정이<br>삶의 불행한 순간이 되지 않도록,<br>아이들에게 따스한 빛이 되어주세요."</p>
					</section>
					<section>
						<span class="icon solid major" style="background-image: url(${cp}/resources/images/man2.jpg); background-repeat : no-repeat;
						background-size : cover;"></span>
						<h3>황태원</h3>
						<p style="color: black;">"건강하지 못한 가정에서 자랄 수 밖에 없는 청소년들이 생각하는 것 보다 많습니다. 그 끔찍한 가정환경으로 나온 청소년들에게 더욱 비참한 현실이 존재한다는 것을 알기에
							아이들이 안전하게 머물 수 있도록 후원합니다."</p>
					</section>
					<section>
						<span class="icon solid major" style="background-image: url(${cp}/resources/images/girl2.jpeg); background-repeat : no-repeat;
						background-size : cover;"></span>
						<h3>노규영</h3>
						<p style="color: black;">"아이가 방황하던시기 걱정과 우려와는 달리 스위트홈을 통해 안전하고 건강하게 방황을 마쳤습니다. 받은 은혜를 환원하고 똑같은 환경에 놓인 아이들이 안전한 환경에서 머물
							수 있도록 도와주고 싶습니다."</p>
					</section>
					<section>
						<span class="icon solid major" style="background-image: url(${cp}/resources/images/man3.jpg); background-repeat : no-repeat;
						background-size : cover;"></span>
						<h3>배준태</h3>
						<p style="color: black;">"작은 후원이 모여 한명 한명을 인생의 갈림길에서 도와줄 수 있다고 생각해 후원했습니다."</p>
					</section>
					<section>
						<span class="icon solid major" style="background-image: url(${cp}/resources/images/girl3.jpg); background-repeat : no-repeat;
						background-size : cover;"></span>
						<h3>예경옥</h3>
						<p style="color: black;">"새로운 꿈을 꾸는 새해입니다. 2023년의 출발선에서 여러분이 희망의 천사가 되어주신다면 아이들에게 큰 도움이 될 수 있습니다."</p>
					</section>
				</div>
				<ul class="actions">
					<li><a href="/user/checkid" class="button" style="background-color: mediumseagreen;">후원하러 가기</a></li>
				</ul>
			</div>
		</section>
		<!-- shop-->

		<!-- Three -->
		<section id="three" class="wrapper style1 fade-up">
			<div class="inner">
				<a href="javascript:kakaoLogin();"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPUAAADOCAMAAADR0rQ5AAAAwFBMVEX////+5QAaGhwAAB3+4wD/8H3/6AD/+tP+5w3/5wD/6gD/7QCllREABBz/7gD23QBaUxeYiRQOEBzKtgrVwAgXFxwrKhl2bBYqKBoPERzhywWunQ/FsgupmQ6bjBAkIxrx2QDgygY7NxlCPRhnXhb//N7//ef/85n/6i//8Yj/+MP/9q3/+cv+6Tr/9KT//eofHxs0MRl+cxK4pg+MfhVeVRZTTRdLRhg2MxlAPBdsYxOHexJ4bhL/7mf/61n/60ki/TTxAAADv0lEQVR4nO3aCXObRhyH4az+eKtdLrGgC5AEsmI7SZ1KRhaN7bbf/1t1kRzdttPOmCP5PTM+NJgZXu9yDh8+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/HSurm+Y8a5Y+9PHqiuPfL5lJWh/qbrzwO9lNBe+Vl2656qUkV67qrp152tp0eyi6tad8oaa3f5RdexWedGsXZ/jeJnVv1Udu4VqVKMa1ahG9c9QzaXpaKYUv061NAJrtWjNF7NRyvgvUu34M0XDrqZo0g/N/WXircGXL0+POlcL945Ut/Wsa9N4b2ESpq9H8ywLXsquczV7oNa+rr3LltFi4r5abSpaygZWLw+jdTZl3zukRfR6tezfR82rFuGwe1TdGubJttreq+ZSSLn9lUu5/mQUfye5/mJH+fWtlidDralYnqmWwWg5ztxikUwtzxuNRpYrIyvgMrN8IxovR8nBLl7farOjTqtpzM9UL+dkE+WBHtNxixYToiElzpw8aa5o+o202cHuUN9qJx+eVtuP4qRaRkSWn11S7vKQ7HEY9mkVGGavqO6o+VOW6fNfKBpRfX6srZMZLpI/yXOkTG3KnIhsyaVP01A8V1PfkWYwIZ83olp6P7Zfi5CGgU5yv+nKmGzXdDLSR71ttcl4MGhKtUh6J8dwtTLYcbUu7RXVxoxmjOVqcvegiilxXC0bUc2EdXq+9uW56sG6+p4emBmpgVLTUbGHNHKs9XY/0sFoD1W03fR1tXie4ar4Z7hTGsuQBizRs9sUja1mhjXv7g30IttteVGdGK7Gkkvq68sSn7qxTKl7mef56jERDZ3hmhPbxRgPlbKp5yV7G66vSFXnvtPpzEKZET1F3pyeJHOeaGPFGzvWRVurq3Ldtozdg1tLPdZ6xmuTgItoqi9SBktXGN78IdHuFBnmoqi+31T3mlTtrJRtW3o3NeXRlbQI4w1fH9NkEmdxKplIFQX61O1ENjHux6ngQVzcbiZ+nOyvXe9qQ19KpudvnITc4N8/8OJkd0lTK4vuWuTx4j6Ebb4VPw5WrnW1PimNjf/03CjI13v1JHr9LrTW1Sw5fGj0Nm4aYZC65ks31o2oZv/jwajgb69U8+p3guqKoRrVqEY1qlHdrOp2edU39XnL7q/yqv+uunWntBelmVGnV6Uvyqq+rbr0wD/lRN/U6PXwwvXN+ze3L+rzmvSzj5+vL97Vpy/1OWkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD8kH8BsKdY7sd+d6AAAAAASUVORK5CYII="></a>
				<h2>로그인</h2>
				<div class="split style1">
					<section>
						<form method="post" action="${cp}/user/login" name="loginForm">
                     <div class="fields">
                        <div class="field half">
                           <label for="name" style="color: mediumseagreen;">아이디</label>
                           <input type="text" name="userid" id="name"
                              style="border: 1px solid mediumseagreen;" />
                        </div>
                        <div class="field half">
                           <label for="email" style="color: mediumseagreen;">비밀번호</label>
                           <input type="password" name="userpw" id="email"
                              style="border: 1px solid mediumseagreen;" />
                        </div>
                     </div>
                     <ul class="actions">
                        <li><a href="#" id="loginsubmit" class="button submit" style="background-color: mediumseagreen;">로그인</a>
                        </li>
                        <li><a href="${cp}/user/join" class="button" style="background-color: mediumseagreen;">회원가입</a>
                        </li>
                        <li><a href="${cp}/user/checkid" class="button" style="background-color: mediumseagreen;">id/pw찾기</a>
                        </li>
                     </ul>
                  </form>
					</section>
					<section>
						<ul class="contact">
							<li>
								<h3 style="color: mediumseagreen;">Address</h3>
								<span style="color: black;">서울시 강남구 테헤란로<br />
									36길 285<br />
									스위트홈 청소년 보금자리 제단</span>
							</li>
							<li>
								<h3 style="color: mediumseagreen;">Email</h3>
								<a href="#" style="color: black;">sweethome@gmail.com</a>
							</li>
							<li>
								<h3 style="color: mediumseagreen;">Phone</h3>
								<span style="color: black;">02-700-0000</span>
							</li>
							<li>
								<h3 style="color: mediumseagreen;">SNS</h3>
								<ul class="icons">
									<li><a href="#" class="icon brands fa-twitter" style="color: black;"><span
												class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands fa-facebook-f" style="color: black;"><span
												class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands fa-github" style="color: black;"><span
												class="label">GitHub</span></a></li>
									<li><a href="#" class="icon brands fa-instagram" style="color: black;"><span
												class="label">Instagram</span></a></li>
								</ul>
							</li>
						</ul>
					</section>
				</div>
			</div>
		</section>
	</div>
	<!-- Scripts -->
	<script src="${cp}/resources/assets/js/jquery.min.js"></script>
	<script src="${cp}/resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="${cp}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${cp}/resources/assets/js/browser.min.js"></script>
	<script src="${cp}/resources/assets/js/breakpoints.min.js"></script>
	<script src="${cp}/resources/assets/js/util.js"></script>
	<script src="${cp}/resources/assets/js/main.js"></script>
	

</body>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        //7818938cd5803cd1ddd17927327a20b1
        window.Kakao.init("7818938cd5803cd1ddd17927327a20b1");

         function kakaoLogin() {
            window.Kakao.Auth.login({
                scope:'profile_nickname, profile_image, account_email, gender, birthday',
                success: function(authObj){
                    console.log(authObj);
                    window.Kakao.API.request({
                        url:'/v2/user/me',
                        success: res => {
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account);
                        }
                });
                }
            });
        }
    </script>
</html>