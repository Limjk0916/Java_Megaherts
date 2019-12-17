<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
	
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.js"></script>
<title>MEGAHERTS-MYPAGE</title>
<script src="http://code.jquery.com/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('a.tit_notice1').click(function() {
			$("#successTable").load('board1.html');
		});
		$('a.tit_notice2').click(function() {
			$("#successTable").load('board2.html');
		});
		$('a.tit_notice3').click(function() {
			$("#successTable").load('board3.html');
		});
		
	});
</script>

<style type="text/css">
body {
	font-family: 'Do Hyeon', sans-serif;
	margin-left : 7%;
	margin-rigth: 7%;
}
h2{
color: white;
}
h1{
color: white;
}
h3{
color: white;
}
h4{
color: white;
}
h5{
color: white;
}
#custid{
color:white;
}
legend{
color:white;
}

#phone{
color:white;
}
#cust_moviecount{
color:white;
}
strong{
color:white;
}
.recent-food{
color:white;
}
.recent-movie{
color:white;
}
td{
color:white;
}

.bigbox {
	column-count: 2;
	column-gap: 0;
}

.box {
	width: 100%;
	border: 1px solid #000;
	text-align: left;
}

.customerComent {
	text-align: left;
	text-indent: 2.5%;
}

.box img {
	width: 200px;
	height: 200px;
	vertical-align: middle;
	margin-left: 5%;
	margin-bottom: 7%;
}

table {
	font-size: 12px;
	margin: 20%, 20%, 30%;
	width: 80%;
	border-collapse: collapse;
}

#board {
	font-size: 14px;
	font-weight: bold;
	width: 95%;
	margin-left: auto;
	margin-right: auto;
}

#board table {
	width: 90%;
	vertical-align: middle;
	border-top: 1px solid #444444;
	border-collapse: collapse;
	font-size: 14px;
	font-weight: bold;
}

#board th {
	background-color:#4aa2a8;
}
th {
	color:white;
	background:#4aa2a8;
}

#board td {
	background-color:#4aa2a8;
}

#board th, td {
	border-top: 1px solid #444444;
	border-bottom: 1px solid #444444;
	padding: 10px;
	text-align: center;
}

.recent-movie, .recent-food {
	text-align: left;
	text-indent: 5%;
	font-size: 20px;
	padding: 20px;
}

#searchbox {
	display: inline-block;
	margin-left: 90%;
}

#table-data {
	width: 100%;
	text-align: left;
	margin-bottom: 20px;
	margin-left: auto;
	margin-right: auto;
}

#theadtable {
	text-align: center;
}

#items {
	text-align: center;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

#dataListTable {
	font-size: 12px;
	width: 80%;
	border-top: 2px solid #384d75;
	word-wrap: break-word;
	border-collapse: collapse;
	margin-right: 10%;
	margin-left: 10%;
}

#dataListTable th, td {
	padding: 10px;
	box-sizing: border-box;
	height: 55px;
}

#dataListTable th {
	border-bottom: 1px solid #ccc;
	background:#4aa2a8;
	font-size: 18px;
}

#dataListTable td {
	text-align: center;
	line-height: 1.3;
	border-bottom: 1px solid #ccc;
	font-size: 15px;
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
	padding : 2px;
	
}

.floating div:nth-child(1) {
	border-radius: 8px;
	margin : 14px;
}

.floating div:nth-child(2) {
	border-radius: 8px;
}

footer {
	posidtion: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 100px;
	background-image: css/images/body-bg.jpg;
	background-color: #171616;
	color: #f2f2e6;
	text-align: center;
	font-size: 12px
}


</style>

</head>

<body>
	
	<!-- header -->
	<Header class="container-fluid text-center">
		<ul class="nav navbar-nav navbar-middle">
			<li><a href="main.jsp"><img src="css/images/logo.png"
					style="width: 25%; height: 20%; display: block; margin-left: auto;" /></a></li>
		</ul>
	</Header>

	<div id="container">
		<section>
			<h2>My page</h2>
			<fieldset>
				<legend class="name">
				 OOO 의 페이지입니다
				</legend>
				<ul>
					<li><div id="phone">
							핸드폰번호 : 로그인 비연동
						</div> <br></li>
				</ul>
			</fieldset>
			
			<div class="bigbox">
				<form action="Movie.jsp" method="post">
					<div class="box">
						<div class="recent-movie">
							<h2>최근 예매한 영화</h2><br>
							<br> <img src="css/images/movie1.jpg" alt="최근 영화 1위">
							<img src="css/images/movie2.jpg" alt="최근 영화 2위"> <img
								src="css/images/movie3.jpg" alt="최근 영화 3위">
						</div>
					</div>
				</form>

				<div class="box">
					<div class="recent-food">
						<h2>최근 주문한 음식</h2><br>
						<br> <img src="css/images/foodtaco.jpg" alt="최근 주문한 음식">
						<img src="css/images/foodkim.jpg" alt="다음으로 주문한 음식"> <img
							src="css/images/foodsubway.jpg" alt="다음으로 주문한 음식">
					</div>
				</div>
			</div>
			<div class="table-data">
				<div class="box">
					<h2 style="text-align: center; margin: 3%;">고객의 소리</h2>
					<div><input type="button" value="글쓰기" style="font-size: 18px; float: right; margin-right:150px;"
							onclick="javascript:location.href='insertboard.jsp'" /></div><br><br><br>
					<div id="successTable">
						<table id="dataListTable" summary="문의내역 및 답변내역에 대한 정보 제공">
							<colgroup>
								<col width="4%">
								<col width="50%">
								<col width="20%">
								<col width="9%">
								<col width="9%">
							</colgroup>
							<thead id="theadtable">
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제 목</th>
									<th scope="col">작성자</th>
									<th scope="col">조회수</th>
									<th scope="col">등록일</th>
								</tr>
							</thead>
							<tbody id="items">
								<tr>
									<td>1</td>
									<td><a href="javascript:" border="0" class="tit_notice1">
											기분좋게 저희 집 반려묘와 같이 영화 라이언킹 보다가.... </a></td>
									<td>라이언킴</td>
									<td>773</td>
									<td>2019-07-22</td>
								</tr>
								<tr>
									<td>2</td>
									<td><a href="javascript:" border="0" class="tit_notice2">
											연애의 맛2 오창석♥이채은 커플이 자동차극장을 통해서 만났는데 나는 왜.... 안될까요?</a></td>
									<td>모태솔로28살</td>
									<td>1813</td>
									<td>2019-07-14</td>
								</tr>
								<tr>
									<td>3</td>
									<td>
											남편이랑 분위기 좋게 닭꼬치와 같이 먹으려고 사와서 기생충 영화 차 안에서 보다가......</td>
									<td>기생충꼬치</td>
									<td>1001</td>
									<td>2019-07-08</td>
								</tr>
								<tr>
									<td>4</td>
									<td>
											스파이더맨 파 프롬 홈 보면서 쿠키영상이 2개라며요? 못기다리고 탈주행</td>
									<td>맨투더쿠키</td>
									<td>902</td>
									<td>2019-07-02</td>
								</tr>
								<tr>
									<td>5</td>
									<td>
											김밥 일번가 김치치즈덮밥이 강식당 시즌2의'김치밥이 피오씁니다' 따라한거 아닌가요?</td>
									<td>김치피오치즈</td>
									<td>123</td>
									<td>2019-06-14</td>
								</tr>
							</tbody>
						</table>
						 <br>
						<br>
					</div>
				</div>
			</div>


		</section>
	</div>
	<!-- id = container -->
	
		<!-- 플로팅 배너 시작 -->

	<div class="floating">
		<a href="login.jsp"><div>로그인</div></a>
		<a href="Movie.jsp"><div>영화<br>예매<br>&<br>맛집<br>예약</div></a>
		<a href="Mypage.jsp"><div>마이<br>페이지</div></a>
	</div>

	<!-- 플로팅 배너 끝 -->
	
	<!--  footer -->
	<footer> <br>
	<br>
	<br>

	<div id="footer">
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
			<span>개인정보보호 책임자 : 정종민</span><span>대표이메일 : megaherts@mega.net</span><span>MEGA
				HERTS고객센터 : 1544-1122</span>
		</p>
		<p class="copyright">© megaherts All Rights Reserved</p>
	</div>
	<br>
	<br>
	</footer>
</body>
</html>