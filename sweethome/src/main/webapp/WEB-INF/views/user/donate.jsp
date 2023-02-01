<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
<style>
    #wrapper {
        margin-bottom: 200px;
    }

    section>div.inner {
        margin: 0 auto !important;
        text-align: center;
    }

    #table {
        width: 70%;
        margin: 0 auto;
        text-align: center !important;
    }

    th {
        height: 40px !important;
        border: 1px solid rgba(0, 0, 0, 0.395) !important;
        color: rgba(255, 255, 255, 0.954) !important;
        padding: 2px !important;
        text-align: center !important;
        font-size: 140% !important;
    }

    tr {
        border-bottom: 0px !important;
        border-top: 0px !important;
    }

    td {
        border-right: 0px solid #000 !important;
        border-left: 0px solid #000 !important;
        color: black !important;
        font-weight: bold !important;
    }

    hr {
        border: 1px solid mediumseagreen !important;
        margin: 0 auto !important;
        width: 69.8%;
    }

    #content1 {
        border-left: 1px solid mediumseagreen !important;
        border-right: 1px solid mediumseagreen !important;
    }

    input::placeholder {
        color: gray !important;
    }

    footer {
        clear: both;
    }

    .page-link {
        color: rgb(37, 156, 152);
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
        color: mediumseagreen;
    }

    .page-item:hover {
        background-color: rgba(128, 128, 128, 0.136);
    }

    .search {
        width: 80% !important;
        margin: 0% 5% 2% 5% !important;
        text-align: right;
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

    #donate_action {
        width: 70% !important;
        margin: 0 auto;
        text-align: right !important;
    }

    
    .donate_action {
        padding: 0% 5% !important;
        height: auto !important;
        font-size: 18px !important;
        background-color: mediumseagreen !important;
    }

    label,
    input[type="text"] {
        color: black !important;
    }

    input[type="text"] {
        border: 1px solid #000 !important;
        width: 30% !important;
        float: left !important;
    }

    .model-content {
        border-color: floralwhite !important;
    }

    .mb-3 {
        clear: both !important;
    }

    .span {
        color: black !important;
        font-size: 140% !important;
        margin-left: 1% !important;
    }

    .button {
        background-color: mediumseagreen !important;
        padding: 0% 2% 2% 2% !important;
        border-radius: 10% !important;
        font-size: 80% !important;
        font-weight: bold !important;
    }
    table tbody tr:nth-child(1) {
        background-color: mediumseagreen !important;
    }
</style>
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
                <h1 class="major" style="color: black;">후원 및 후원내역</h1>
            </div>
        </section>
        <div class="table_zone">
            <form>
                <div class="search">
                    <input type="search" name="" id="" class="donate_name" placeholder="이름으로 검색해주세요.">
                </div>
                <table id="table">
                    <tr>
                        <th>후원자</th>
                        <th>후원금액</th>
                        <th>비고</th>
                    </tr>
                    <tr class="content">
                        <td id="content">김정호</td>
                        <td id="content1">100만원</td>
                        <td id="content">ㅁㄴㅁㄴㅇ</td>
                    </tr>
                    <tr class="content">
                        <td id="content">김정호</td>
                        <td id="content1">100만원</td>
                        <td id="content">ㅁㄴㅁㄴㅇ</td>
                    </tr>
                </table>
                <hr>
            </form>
            <div id="donate_action">
                <form>
                    <input type="button" value="후원하기" class="donate_action" data-bs-toggle="modal"
                        data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap"
                        style="color: floralwhite; font-size: 130%;">
                </form>
            </div>
            <div class="modal fade modalcolor" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title fs-5" id="exampleModalLabel">후원하기</h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form>
                            <div class="modal-body">
                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">이름</label>
                                    <input type="text" class="form-control" id="recipient-name" name="qnatitle">
                                </div>
                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">후원금액</label>
                                    <input type="text" class="form-control" id="recipient-name" name="qnatitle">
                                    <span class="span">원</span>
                                </div>
                                <div class="mb-3">
                                    <label for="message-text" class="col-form-label">비고</label>
                                    <textarea style="height: 250px;" class="form-control" id="message-text"
                                        name="qnacontents"></textarea>
                                </div>
                                <input type="hidden" name="userid" value="">
                            </div>
                            <span class="span">후원해주셔서 감사합니다.</span>
                            <div class="modal-footer">
                                <button type="button" class="button" data-bs-dismiss="modal">닫기</button>
                                <button type="submit" class="button">후원하기</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <nav aria-label="Page navigation example" class="page">
            <ul class="pagination justify-content-center">
                <li class="" id="previous">
                    <a class="page-link Previous" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class=""><a class="page-link" href="#">1</a></li>
                <li class=""><a class="page-link" href="#">2</a></li>
                <li class=""><a class="page-link" href="#">3</a></li>
                <li class=""><a class="page-link" href="#">4</a></li>
                <li class=""><a class="page-link" href="#">5</a></li>
                <li class="" id="next">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
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