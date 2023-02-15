<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="${cp}/resources/assets/css/main.css" />
</head>
<body class="is-preload">
   <!-- Header -->
   <header id="header" class="alt">
      <a class="logo" href="${cp}/">Spring <span>Board</span></a>
      <nav id="nav">
         <ul>
            <c:choose>
               <c:when test="${loginUser == null}">
                  <li class="current"><a href="${cp}/">Home</a></li>
                  <li><a href="${cp}/user/join">Join</a></li>
                  <li><a href="${cp}/user/login">Login</a></li>
               </c:when>
               <c:otherwise>
                  <li>${loginUser.username}님 환영합니다!</li>
                  <li class="current"><a href="${cp}/">Home</a></li>
                  <li><a href="${cp}/board/list">Board</a></li>
                  <li><a href="${cp}/user/logout">Logout</a></li>
               </c:otherwise>
            </c:choose>
               
               
         </ul>
      </nav>
   </header>

<!-- Banner -->
   <div id="banner">
      <div class="wrapper style1 special">
         <div class="board">
            <h1 class="heading alt" style="color:mediumseagreen;">커뮤니티</h1>
            <p>게시판 수정</p>
            <a href="${cp}/board/list${cri.listLink}" class="" style="float:right; color: mediumseagreen;">목록 보기</a>
            <div class="write_area" style="clear:both;">
               <form name="boardForm" method="post" action="${cp }/board/regist">
                  <div class="col-12">
                     <h4>제목</h4>
                     <input name="boardtitle" type="text" value="${board.boardtitle }" id="titlediv">
                  </div>
                  <div class="col-12">
                     <h4>내용 <input name="userid" type="text" value="작성자 ${user.userid}" style="width: 15%; float: right;" readonly></h4>  
                     <textarea name="boardcontents" rows="10" id="contentdiv">${board.boardcontents}</textarea>
                  </div>
                  <div  style="width: 10%; margin:0 auto;">
                     <input type="submit" value="수정" class="" style="margin-top:10px;">
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
      <!-- Footer -->
   <footer id="footer" class="wrapper alt">
      <div class="inner">
         <div id="external_link">
            <div id="twitter">
               <a href="https://twitter.com"><img src="${cp}/resources/images/트위터.png" alt="" id="twitter_pic"></a>
            </div>
            <div id="facebook">
               <a href="https://facebook.com"><img src="${cp}/resources/images/페이스북.png" alt="" id="facebook_pic"></a>
            </div>
            <div id="instagram">
               <a href="https://instagram.com"><img src="${cp}/resources/images/인스타그램.png" alt="" id="instagram_pic"></a>
            </div>
            <div id="youtube">
               <a href="https://youtube.com"><img src="${cp}/resources/images/유튜브.png" alt="" id="youtube_pic"></a>
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
   <script src="${cp}/resources/assets/js/jquery.min.js"></script>
   <script src="${cp}/resources/assets/js/jquery.dropotron.min.js"></script>
   <script src="${cp}/resources/assets/js/browser.min.js"></script>
   <script src="${cp}/resources/assets/js/breakpoints.min.js"></script>
   <script src="${cp}/resources/assets/js/util.js"></script>
   <script src="${cp}/resources/assets/js/main.js"></script>
</body>
</html>