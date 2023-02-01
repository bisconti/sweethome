<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Hyperspace by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<style>
   #wrapper{
      margin: 0 auto;
      height: 600px !important;
   }
   .first_line{
      width: 40%;
      height: 150px;
      clear: both;
      float: left;
      padding:  5% 5% 0% 5%;
      margin-left: 7%;
      margin-right: 4%;
      font-size: 170%;

   }
   .second_line{
      width: 40%;
      height: 150px;
      margin: 0px;
      float: left;
      padding:  5% 5% 0% 5%;
      font-size: 170%;


   }
   #name{
      margin: 0 0;
      color: black;
      font-weight: bold;
   }
   #line{
      color: black !important;
      margin: 0;
   }
   hr{
      border: 1px solid mediumseagreen !important;
   }


</style>
<html>
   <head>
      <title>Untitled</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
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
         <div id="wrapper" >

            <div class="first_line">
               <a href="#"><p id="name">●상담 관리</p></a>
               <hr id="line">
            </div>
            <div class="second_line">
               <a href="#"><p id="name">●상품 관리</p></a>
               <hr id="line">
            </div>
            <div class="first_line">
               <a href="#"><p id="name">●회원 관리</p></a>
               <hr id="line">
            </div>
            <div class="second_line">
               <a href="#"><p id="name">●후원 관리</p></a>
               <hr id="line">
            </div>
            <div class="first_line">
               <a href="#"><p id="name">●추가 예정</p></a>
               <hr id="line">
            </div>
            <div class="second_line">
               <a href="#"><p id="name">●추가 예정</p></a>
               <hr id="line">
            </div>
         </div>

      <!-- Footer -->
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