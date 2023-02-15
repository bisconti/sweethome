<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${cp}/resources/assets/css/main.css" />
    <title>Document</title>
</head>
<body>
    <!-- Header -->
	<header id="header">
		<div id="logobox"><a href="${cp}/" class="title" id="logo_"><img src="${cp}/resources/images/sweethome.png" alt="사진"
					id="logo"></a></div>
		<div id="mypage">
			<a href=""><img src="${cp}/resources/images/basicprofile.jpg" alt="" id="myprofile"></a>
			<h5 id="welcome">환영합니다! <br>${user.username}님</h5>
		</div>
		<div class="dropdown help" onmouseover="helphover()" onmouseout="helphoverout()">
			<div class="dropbtn" id="help">MENU</div>
               <div class="dropdown-content">
                  <a href="#">커뮤니티</a>
                  <a href="#">문의내역</a>
                  <a href="#">마이페이지</a>
                  <a href="${cp}/user/basket">나의장바구니</a>
                  <a href="${cp}/user/order">주문내역</a>
               </div>
            </div>
            <div id="logout">
				<a href="${cp}/user/logout"><input type="button" value="로그아웃"></a>
			</div>
	</header>
    <div id="wrapper">
        <!-- Main -->
        <section id="main" class="wrapper">
            <div class="lor-content joinbox">
                <form name="joinForm" method="post" action="${cp}/user/userjoinok.us" onsubmit="return sendit();">
                    <div class="joinbox">
                        <p id="result" colspan="2" style="color: black !important;"></p> 
                     </div>
                    <div class="joinbox">
                        <input type="text" name="userid" id="userid-field" class="logi                                                                                                                                   n-form-field"
                            placeholder="아이디를 입력해주세요">
                        <input type="button" id="user_id_btn" value="중복검사" onclick="checkId()">
                    </div>
                    <div class="joinbox">
                        <input type="password" name="password" id="userpw-field" class="login-form-field" id="userpw"
                            placeholder="비밀번호를 입력해주세요">
                    </div>
                    <div class="joinbox">
                        <input type="password" name="userpw_re" class="login-form-field" id="userpw_re"
                            placeholder="비밀번호를 다시 입력해주세요">
                    </div>
                    <div class="username joinbox">
                        <input type="text" name="username" class="login-form-field" id="username"
                            placeholder="이름을 입력해주세요">
                    </div>
                    <div class="gender_area joinbox">
                        <select name="gender" class="gender" style="color: mediumseagreen !important;">
                            <option value="" style="cursor: pointer;">성별 선택</option>
                            <option value="남">남</option>
                            <option value="여">여</option>
                        </select>
                    </div>
                    <div class="zipcode_area joinbox">
                        <input readonly name="zipcode" type="text" id="sample6_postcode" placeholder="우편번호">
                        <input type="button" onclick="sample6_execDaumPostcode()" id="sample6_postcode_btn"
                            value="우편번호 찾기">
                    </div>
                    <div class="addr_area joinbox">
                        <input readonly name="useraddr" type="text" id="sample6_address" placeholder="주소">
                    </div>
                    <div class="joinbox">
                        <input name="useraddrdetail" type="text" id="sample6_detailAddress" placeholder="상세주소">
                    </div>
                    <div class="info joinbox" id="userbirth" name="userbirth">
                        <fieldset id="birth">
                            <legend class="birth">생년 월 일 선택</legend>
                            <input type="date" class="userbirth">
                        </fieldset>
                    </div>
                    <div class="joinbox">
                        <input type="text" name="userphone" id="userphone" placeholder="핸드폰번호 입력" maxlength="13"
                            onkeyup="addHypen(this);" />
                        <input type="button" value="인증번호" id="userphone_btn">
                    </div>
                    <div class="joinbox">
                        <input type="text" name="check_number" id="userNum" placeholder="인증번호를 입력해주세요">
                        <input type="button" value="인증확인" id="correct_check">
                    </div>
                    <div class="btn-submit joinbox">
                        <input type="submit" value="회원가입" id="login-form-submit"></input>
                    </div>
                </form>
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
</body>
<script>
    const cp = "${cp}";
 </script>
 <script>
 var code2= "";
 $('#userphone_btn').click(function() {
     const userphone = $('#userphone').val();
       const xhr = new XMLHttpRequest();
       if(userphone == ""){
       alert("핸드폰 번호를 입력하세요 !");
       userid.focus();
       return false;
    }
    else if(userphone.length == 13){
    xhr.onreadystatechange = function(){
       if(xhr.readyState == 4){
          if(xhr.status == 200){
             let txt = xhr.responseText;
             txt = txt.trim();
             if(txt == "O"){
                alert("사용할 수 있는 번호");
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
             else{
                alert("이미 가입된 번호입니다.")
                userphone.value = "";
                userphone.focus();
             }
          }
       }
    }
    }else {
        alert('휴대폰번호를 정확하게 입력해주세요 !')
    } 
    xhr.open("GET",cp+"/user/checkphoneok.us?userphone="+userphone,true);
    xhr.send();
 });
</script>
<script src="${cp}/views/user/user.js"></script>
</html>