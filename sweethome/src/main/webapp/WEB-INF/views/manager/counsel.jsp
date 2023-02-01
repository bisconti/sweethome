<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Untitled</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="../../../resources/assets/css/main.css" />
    <noscript>
        <link rel="stylesheet" href="../../../resources/assets/css/noscript.css" />
    </noscript>
</head>
<style>
    #wrapper {
        margin: 0 auto;
        height: 700px !important;
    }

    #head>td {
        font-weight: bold !important;
        color: floralwhite !important;
    }

    td {
        color: rgb(76, 75, 75) !important;
        border-bottom: 1px solid mediumseagreen !important;
    }

    #table {
        margin: 0 auto;
        width: 80%;
        text-align: center;
    }

    #counsel_title {
        text-decoration: none !important;
    }

    #counsel_title:hover {
        color: black;
    }

    footer {
        clear: both;
    }

    .page-link {
        color: mediumseagreen;
    }

    .page-item {
        display: inline-block;
        font-size: 110%;
        border: 1px solid rgba(128, 128, 128, 0.386);
        padding: 0.2% 1% 0.2% 1% !important;
        list-style: none;
        border-radius: 50%;
    }

    .page {
        width: 100%;
        height: 100px;
        margin-top: 2% !important;

    }

    .pagination {
        height: 100px;
        padding: 0 !important;
        text-align: center !important;
    }

    #previous {
        border-radius: 50%;
    }

    #next {
        border-radius: 50%;
    }

    .page-link:hover {
        color: rgb(37, 156, 152);
    }

    .page-item:hover {
        background-color: rgba(128, 128, 128, 0.136);
    }

    section>div.inner {
        margin: 0 auto !important;
        text-align: center;
    }

    .search {
        width: 80% !important;
        margin: 3% 10% 0% 10% !important;
        text-align: center;
    }

    .donate_name {
        border: 1px solid mediumseagreen;
        border-radius: 20px;
        padding: 1% 0% 1% 2%;
        color: black !important;
        background-color: floralwhite;
    }

    input::placeholder {
        color: gray !important;
        text-align: center !important;
    }

    table tbody tr:nth-child(1) {
        background-color: mediumseagreen !important;
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
    <div id="wrapper">
        <section id="main" class="wrapper">
            <div class="inner">
                <h1 class="major" style="color: black;">상담신청 관리</h1>
            </div>
        </section>
        <div class="table_zone">
            <table id="table">
                <tr id="head">
                    <td>신청자</td>
                    <td>제목</td>
                    <td>작성일</td>
                </tr>
                <tr>
                    <td>신청자</td>
                    <td><a href="#" id="counsel_title">제목</a></td>
                    <td>작성일</td>
                </tr>
                <tr>
                    <td>신청자</td>
                    <td><a href="#" id="counsel_title">제목</a></td>
                    <td>작성일</td>
                </tr>
                <tr>
                    <td>신청자</td>
                    <td><a href="#" id="counsel_title">제목</a></td>
                    <td>작성일</td>
                </tr>

            </table>
        </div>
        <div class="search">
            <input type="search" name="" id="" class="donate_name" placeholder="이름으로 검색해주세요.">
        </div>
        <nav aria-label="Page navigation example" class="page">
            <ul class="pagination nav justify-content-center">
                <li class="page-item" id="previous">
                    <a class="page-link Previous" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item" id="next">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <!-- Footer -->
    <footer id="footer" class="wrapper alt">
        <div class="inner">
            <div id="external_link">
                <div id="twitter">
                    <a href="https://twitter.com"><img src="../../../resources/images/트위터.png" alt="" id="twitter_pic"></a>
                </div>
                <div id="facebook">
                    <a href="https://facebook.com"><img src="../../../resources/images/페이스북.png" alt="" id="facebook_pic"></a>
                </div>
                <div id="instagram">
                    <a href="https://instagram.com"><img src="../../../resources/images/인스타그램.png" alt="" id="instagram_pic"></a>
                </div>
                <div id="youtube">
                    <a href="https://youtube.com"><img src="../../../resources/images/유튜브.png" alt="" id="youtube_pic"></a>
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
    <script src="../../../resources/assets/js/jquery.min.js"></script>
    <script src="../../../resources/assets/js/jquery.scrollex.min.js"></script>
    <script src="../../../resources/assets/js/jquery.scrolly.min.js"></script>
    <script src="../../../resources/assets/js/browser.min.js"></script>
    <script src="../../../resources/assets/js/breakpoints.min.js"></script>
    <script src="../../../resources/assets/js/util.js"></script>
    <script src="../../../resources/sassets/js/main.js"></script>
</body>
</html>