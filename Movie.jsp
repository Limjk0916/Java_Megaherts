<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8");%>
<html lang="en">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript">
	$(document).ready(function(){
		$("#img1").click(function(){
			$("#container").load('1_MV/MV1.html');
		});
		$("#img2").click(function(){
			$("#container").load('1_MV/MV2.html'); 
		});
		$("#img3").click(function(){
			$("#container").load('1_MV/MV3.html');
		});	
		$("#img4").click(function(){
			$("#container").load('1_MV/MV4.html');
		});
		$("#img5").click(function(){
			$("#container").load('1_MV/MV5.html');
		});
		$("#img6").click(function(){
			$("#container").load('1_MV/MV6.html');
		});
		$("#img7").click(function(){
			$("#container").load('1_MV/MV7.html');
		});
		$("#img8").click(function(){
			$("#container").load('1_MV/MV8.html');
		});
		$("#img9").click(function(){
			$("#container").load('1_MV/MV9.html');
		});
		$("#img10").click(function(){
			$("#container").load('1_MV/MV10.html');
		});
	});
	
	$(document).ready(function(){
		$("#button1").click(function(){
			$("#container2").load('1_CompleteTime/CompleteTime_10.html');
		});
		$("#button2").click(function(){
			$("#container2").load('1_CompleteTime/CompleteTime_20.html');			
		});
		$("#button3").click(function(){
			$("#container2").load('1_CompleteTime/CompleteTime_30.html');			
		});
		$("#button4").click(function(){
			$("#container2").load('1_CompleteTime/CompleteTime_40.html');			
		});
		$("#button5").click(function(){
			$("#container2").load('1_CompleteTime/CompleteTime_50.html');			
		});
		$("#button6").click(function(){
			$("#container2").load('1_CompleteTime/CompleteTime_60.html');			
		});
	});
	
	$(window).scroll(function(){
		var scrollTop = $(document).scrollTop();
		if (scrollTop < 180) {
		 scrollTop = 180;
		}
		$("#followquick").stop();
		$("#followquick").animate( { "top" : scrollTop });
		});
		
</script>

<style>
body{
	font-family: 'Do Hyeon', sans-serif;
	margin-left : 7%;
	margin-rigth: 7%;
}

.carousel-inner {
	width: 100%; /* Set width to 100% */
	margin-left: 200px;
	margin-top: 10px;
	min-height: 200px;
}

.container text-center {
	padding-top: 70px;
	padding-bottom: 70px;
	margin: 0;
	color: white;
}

.row.content {
	height: 550px
}

@media screen and (max-width: 767px) {
	.row.content {
		height: auto;
	}
}

h1 {
	text-align: left;
	font-size: 45px;
	color: white;
	font-family: 'Do Hyeon', sans-serif;
}

h2 {
	color: white;
	float: left;
	font-family: 'Do Hyeon', sans-serif;
}

h4 {
	color: white;
	font-family: 'Do Hyeon', sans-serif;
	font-size: 25px;
}

h5 {
	color: white;
	float: left;
	margin-left: 40px;
}

.info {
	float: left;
	margin-left: 10%;
	margin-top: 20%;
}

.movie-image2 {
	float: left;
	width: 152px;
	height: 214px;
	position: relative;
	margin-left: 70px;
}

#rate {
	font-size: small;
	color: white;
}

#movieContent {
	font-size: 15px;
	color: white;
	margin-top: 2%;
	float: left;
	text-align: justify;
	font-family: 'Nanum Gothic Coding', monospace;
}

#mzSort {
	font-size: medium;
}

#mzAddress {
	font-size: medium;
}

#mzPhone {
	font-size: medium;
}

#menuNm {
	font-size: medium;
}

#menuPrice {
	font-size: medium;
}

#foodinfo {
	color: white;
	float: left;
	margin-left: 10px;
	margin-top: 50px;
}

#button7 {
	margin-left: 400px;
	margin-top: 260px;
}

.container {
	padding: 80px 120px;
}

.carousel-caption h3 {
	color: #fff !important;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
}

.bg-1 h3 {
	color: #fff;
}

.bg-1 p {
	font-style: italic;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
	font-family: 'Noto Serif KR', serif;
}

.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
	font-family: 'Nanum Gothic Coding', monospace;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}

.modal-header, .modal-body {
	padding: 40px 50px;
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

.service {
	width: 600px;
	height: 300px;
	left: 100px;
	top: 50px;
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

<title>MEGAHERTS-MOVIE</title>
</head>

<body>

	<!-- Header -->
	<Header class="container-fluid text-center">
	<ul class="nav navbar-nav navbar-middle">
		<li><a href="main.jsp"><img src="css/images/logo.png"
				style="max-width: 20%; margin-left: 75%;"></a></li>
	</ul>
	</Header>

	<!-- Header 끝 -->


	<!-- 현재 상영 영화 줄 -->
	<div class="container-fluid text-center">
		<div class="col-sm-1 sidenav hidden-xs"></div>
		<div class="col-sm-7">
			<h1>현재 상영 영화</h1>
		</div>
	</div>
	<br>

	<!-- 현재 상영 영화중 끝 -->


	<!-- 배너 -->
	<br>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">


		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="movie-image">
					<a href="#" id="img1"><img src="css/images/movie1.jpg"></a>
				</div>
				<div class="movie-image2">
					<a href="#" id="img2"><img src="css/images/movie2.jpg"></a>
				</div>
				<div class="movie-image2">
					<a href="#" id="img3"><img src="css/images/movie3.jpg"></a>
				</div>
				<div class="movie-image2">
					<a href="#" id="img4"><img src="css/images/movie4.jpg"></a>
				</div>
				<div class="movie-image2">
					<a href="#" id="img5"><img src="css/images/movie5.jpg"></a>
				</div>
			</div>


			<div class="item">
				<div class="movie-image">
					<a href="#" id="img6"><img src="css/images/movie6.jpg"></a>
				</div>
				<div class="movie-image2">
					<a href="#" id="img7"><img src="css/images/movie7.jpg"></a>
				</div>
				<div class="movie-image2">
					<a href="#" id="img8"><img src="css/images/movie8.jpg"></a>
				</div>
				<div class="movie-image2">
					<a href="#" id="img9"><img src="css/images/movie9.jpg"></a>
				</div>
				<div class="movie-image2">
					<a href="#" id="img10"><img src="css/images/movie10.jpg"></a>
				</div>
			</div>
		</div>




		<!-- 좌우 옆 버튼 -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>


	<!-- 배너 끝 -->


	<!-- 영화구역 -->
	<div class="container-fluid text-center">
		<br> <br> <br>
		<div class="col-sm-1 sidenav hidden-xs"></div>
		<div class="col-sm-12">
			<div class="col-sm-8">
				<h1 style="margin-left: 100px">
					<strong>영화 정보</strong>
				</h1>
				<br>
				<div id="container" style="margin-left: 15%;">영화 예매 하기 전</div>
			</div>
			<div class="col-sm-3" style="border: 2px solid white; margin-top: 7%">
				<h1>영화 예매</h1>
				<br>
				<h4>영화 선택</h4>
				<form action="add1.jsp" method="post">
					<select name="product1">
						<option value="X-MAN">X-MAN</option>
						<option value="SPIDER2">SPIDER2</option>
						<option value="SPIDER3">SPIDER3</option>
						<option value="VARKYRIE">VARKYRIE</option>
						<option value="GLADIATOR">GLADIATOR</option>
						<option value="ICE AGE">ICE AGE</option>
						<option value="TRANSFORMERS">TRANSFORMERS</option>
						<option value="X-MAN2">X-MAN2</option>
						<option value="KUNGFU PANDA">KUNGFU PANDA</option>
						<option value="EAGLE EYE">EAGLE EYE</option>
					</select> <input type="submit" value="추가">
				</form>
				<h4>장소 선택</h4>
				<form action="add.jsp" method="post">
					<select name="product">
						<option value="잠실">잠실</option>
						<option value="메가박스EOE4">메가박스EOE4</option>
						<option value="자유로">자유로</option>
						<option value="덕소파랑새 ">덕소파랑새</option>
						<option value="평택호">평택호</option>
						<option value="용인">용인</option>
					</select> <input type="submit" value="추가">
				</form>
				<h4>시간 선택</h4>
				<form action="add2.jsp" method="post">
					<select name="product2">
						<option value="PM 8:30">PM 8:30</option>
						<option value="PM 11:00">PM 11:00</option>
						<option value="AM 1:20">AM 1:20</option>
					</select> <input type="submit" value="추가">
				</form>
				<br> <br>
				<form name="go" action="Mypage.jsp" method="post">
					<input type="submit" value="장바구니 가기"><br>
				</form>
				<br> <br>
			</div>
		</div>
		<br>
	</div>

	<!-- 영화 구역 끝 -->


	<!-- 맛집 구역 -->
	<div class="container-fluid text-center">
		<br>
		<div class="col-sm-1 sidenav hidden-xs"></div>
		<div class="col-sm-7">
			<h1>
				<strong>맛집 예약</strong>
			</h1>
		</div>
		<div class="col-sm-4" style="margin-top: 40px;">
			<div id="button1" style="float: left;">
				<button type="button">10분</button>
			</div>
			<div id="button2" style="float: left;">
				<button type="button">20분</button>
			</div>
			<div id="button3" style="float: left;">
				<button type="button">30분</button>
			</div>
			<div id="button4" style="float: left;">
				<button type="button">40분</button>
			</div>
			<div id="button5" style="float: left;">
				<button type="button">50분</button>
			</div>
			<div id="button6" style="float: left;">
				<button type="button">60분</button>
			</div>
		</div>
		<div class="col-sm-2 sidenav hidden-xs"></div>
		<div class="col-sm-12">
			<div id="container2">음식 예매 하기 전</div>
		</div>
		<br> <br>
	</div>
	<br>

	<!-- 맛집 구역 끝 -->


	<!-- 플로팅 배너 시작 -->

	<div class="floating">
		<a href="login.jsp"><div>로그인</div></a>
		<a href="Movie.jsp"><div>영화<br>예매<br>&<br>맛집<br>예약</div></a>
		<a href="Mypage.jsp"><div>마이<br>페이지</div></a>
	</div>

	<!-- 플로팅 배너 끝 -->


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


