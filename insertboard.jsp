<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700|Noto+Serif+KR:200,300,400,500,600,700,900&display=swap&subset=korean"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>


<title>Insert title here</title>
<style type="text/css">
body {
	font-family: 'Do Hyeon', sans-serif;
	margin-left: 7%;
	margin-rigth: 7%;
}

h2 {
	color: white;
}

h1 {
	color: white;
}

h3 {
	color: white;
}

h4 {
	color: white;
}

h5 {
	color: white;
}

#custid {
	color: white;
}

#name {
	color: white;
}

#phone {
	color: white;
}

#cust_moviecount {
	color: white;
}

strong {
	color: white;
}

.recent-food {
	color: white;
}

.recent-movie {
	color: white;
}

.bodyform {
	background-image: css/images/body-bg.jpg
}

#searchbox {
	display: inline-block;
	margin-left: auto;
	margin-right: auto;
	margin-left: 80%;
	color: black;
}

#board table {
	width: 80%;
	vertical-align: middle;
	border-top: 1px solid #444444;
	border-collapse: collapse;
	font-size: 14px;
	font-weight: bold;
}

#board th {
	background-color: #4aa2a8;
}

#board td {
	background-color: #4aa2a8;
}

#board th, td {
	border-top: 1px solid #444444;
	border-bottom: 1px solid #444444;
	padding: 10px;
	text-align: left;
}

textarea {
	color: black;
}

footer {
	posidtion: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 100px;
	/* background-image: css/images/body-bg.gif; */
	background-color: #171616;
	color: #f2f2e6;
	text-align: center;
	font-size: 12px
}

.floating {
	background-color: #333;
	border: 2px solid #ffcc66;
	position: fixed;
	right: 50%;
	top: 180px;
	margin-right: -720px;
	text-align: center;
	width: 78px;
	border-radius: 8px;
	-webkit-border-radius: 8px;
	font-family: 'Do Hyeon', sans-serif;
	font-size: 18px;
}

.floating a {
	color: #f1f1f1;
	padding: 2px;
}

.floating div:nth-child(1) {
	border-radius: 8px;
	margin: 14px;
}

.floating div:nth-child(2) {
	border-radius: 8px;
}

.service {
	width: 600px;
	height: 300px;
	left: 100px;
	top: 50px;
}

</style>
</head>
<body>
	<!-- header -->
	<Header class="container-fluid text-center">
		<ul class="nav navbar-nav navbar-middle">
			<div>
				<img src="css/images/logo.png"
					style="width: 25%; height: 20%; display: block; margin-left: auto;" />
			</div>
		</ul>
	</Header>
	<!-- 사이드바 시작 -->
	<div class="floating">
		<a href="login.jsp"><div>로그인</div></a> <a href="Movie.jsp"><div>
				영화<br>예매<br>&<br>맛집<br>예약
			</div></a> <a href="Mypage.jsp"><div>
				마이<br>페이지
			</div></a>
	</div>

	<!-- 사이드바 끝 -->

	<form action="#" method="POST" id='bodyform'>
		<div id="board">
			<hidden input type="text" id='custid'> <hidden input
				type="date" id='currentDate'>
			<table summary="게시판 글쓰기 양식">
				<thead>
					<tr>
						<h3>게시판 글쓰기</h3>
					</tr>
				</thead>
				<tr>
					<td>게시판 글 제목</td>
					<td><textarea rows="3" cols="100" name="title"
							placeholder="게시판 제목 내용 입력해주세요" required="required"></textarea></td>
				</tr>
				<tr>
					<td>게시판 글 내용</td>
					<td><textarea rows="20" cols="100" name="content"
							placeholder="게시판 글 내용 입력해주세요" required="required"></textarea></td>
				</tr>
			</table>
			<div id="searchbox">
				<input type="submit" placeholder="한글로 입력해주세요" value="글쓰기"> <input
					type="reset" value="삭제"> <input type="button" value="글목록"
					onclick="javascript:location.href='Mypage.jsp'" />
			</div>
		</div>
		<br> <br> <br>
	</form>
	
	<footer>

		<br> <br> <br>

		<div>
			<p class="lf">
				Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved
			</p>
			<p class="rf">
				Design by <a href="http://chocotemplates.com/">ChocoTemplates.com</a>
			</p>
			<div style="clear: both;"></div>
		</div>
		<div class="address">
			<address>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
			<p class="vl">
				<span>대표이사 : 김선재 </span><span> 사업자등록번호 : 104-81-45690</span><span>통신판매업신고번호
					: 2017-서울용산-0662</span>
			</p>
			<p class="vl">
				<span>개인정보보호 책임자 : 정종민</span><span>대표이메일 : megaherts@mega.net</span><span>/MEGA
					HERTS고객센터 : 1544-1122</span>
			</p>
			<p class="copyright">© megaherts All Rights Reserved</p>
		</div>
		<br> <br>



	</footer>
</body>
</html>