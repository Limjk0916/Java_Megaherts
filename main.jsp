<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<title>MEGAHERTS-MAIN</title>
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
   $(function() {
      $('img').click(function() {
         $('#container').load('resource.html');
      });
   });
</script>


<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
   margin-bottom: 0;
   border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
/* footer {
   background-color: #f2f2f2;
   padding: 25px;
} */
.carousel-inner img {
   width: 100%; /* Set width to 100% */
   margin: auto;
   min-height: 200px;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
   .carousel-caption {
      display: none;
   }
}

h1 {
   margin-left: 40px;
   text-align: left;
   font-size: 30px;
   color: white;
   font-family: 'Do Hyeon', sans-serif;
}

h2 {
   float: left;
   margin-left: 40px;
   margin-top: 40px;
   color: white;
   font-family: 'Do Hyeon', sans-serif;
}

h5 {
   float: left;
   margin-left: 40px;
   color: white;
   font-family: 'Do Hyeon', sans-serif;
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
         <li><a href="main.jsp"><img src="css/images/logo.png"
               style="width: 25%; height: 25%; display: block; margin-left: auto;" /></a></li>
      </ul>
   </Header>

   <!-- 메인 광고 배너 -->
   <div id="myCarousel" class="carousel slide" data-ride="carousel">

      <!-- Indicators -->
      <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>

      <!-- Wrapper for slides-->
      <div class="carousel-inner" role="listbox">


         <div class="item active">
            <img src="css/images/coverlogan.png" alt="Image">
            <div class="carousel-caption"></div>
         </div>


         <div class="item">
            <img src="css/images/coverspiderman.png" alt="Image">
            <div class="carousel-caption"></div>
         </div>

         <div class="item">
            <img src="css/images/coverkungfu.jpg" alt="Image">
            <div class="carousel-caption"></div>
         </div>
         <div class="item">
            <img src="css/images/covertransformer.jpg" alt="Image">
            <div class="carousel-caption"></div>
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

   <div id="container">
      <!-- 영화배너 시작 -->
      <br>
      <br>
      <h1 style="text-align: center;">현재 상영 영화</h1>
      <div id="myCarousel1" class="carousel slide" data-ride="carousel">

         <br> <br>

         <!-- Wrapper for slides -->
         <div class="carousel-inner" role="listbox">
         <div class="item active">
            <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie1.jpg"
                     style="margin-left: 140px;" alt=""></a>
               </div>
               <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie2.jpg"
                     style="margin-left: 240px;" alt=""></a>
               </div>
               <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie3.jpg"
                     style="margin-left: 340px;" alt=""></a>
               </div>
               <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie4.jpg"
                     style="margin-left: 440px;" alt=""></a>
               </div>
               <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie5.jpg"
                     style="margin-left: 540px;" alt=""></a>
               </div>
            </div>


            <div class="item">
               <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie6.jpg"
                     style="margin-left: 140px;" alt=""></a>
               </div>
               <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie7.jpg"
                     style="margin-left: 240px;" alt=""></a>
               </div>
               <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie8.jpg"
                     style="margin-left: 340px;" alt=""></a>
               </div>
               <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie9.jpg"
                     style="margin-left: 440px;" alt=""></a>
               </div>
               <div class="movie-image">
                  <a href="Movie.jsp"><img src="css/images/movie10.jpg"
                     style="margin-left: 540px;" alt=""></a>
               </div>
            </div>
         </div>




         <a class="left carousel-control" href="#myCarousel1" role="button"
            data-slide="prev"> <span
            class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
         </a> <a class="right carousel-control" href="#myCarousel1" role="button"
            data-slide="next"> <span
            class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
         </a>
      </div>


      <!-- 영화 배너 끝 -->

      <!--맛집 시작 -->
      <div id="myCarousel2" class="carousel slide" data-ride="carousel">
         <br> <br>
         <h1 style="text-align: center;">영화관 주변 맛집</h1>
         <br> <br>


         <!-- Wrapper for slides -->
         <div class="carousel-inner" role="listbox">

<!-- 좌우 옆 버튼 -->
            <!-- 좌우 옆 버튼 -->
            <a class="left carousel-control" href="#myCarousel2" role="button"
               data-slide="prev"> <span
               class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
               <span class="sr-only">Previous</span>
            </a> <a class="right carousel-control" href="#myCarousel2" role="button"
               data-slide="next"> <span
               class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
               <span class="sr-only">Next</span>
            </a>
<div id="myCarousel2" class="carousel slide" data-ride="carousel">


      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
   <!-- 좌우 옆 버튼 -->

            <div class="item active">
               <div class="food-image">
                  <a href="https://www.google.com/maps/?hl=ko"> <img
                     src="css/images/그림1.jpg" style="margin-left: 140px;" alt=""></a>
               </div>
               <div class="food-image">
                  <a href="https://www.google.com/maps/?hl=ko"> <img
                     src="css/images/그림2.jpg" style="margin-left: 240px;" alt=""></a>
               </div>
               <div class="food-image">
                  <a href="https://www.google.com/maps/?hl=ko"> <img
                     src="css/images/그림3.jpg" style="margin-left: 340px;" alt=""></a>
               </div>
               <div class="food-image">
                  <a href="https://www.google.com/maps/?hl=ko"> <img
                     src="css/images/그림4.jpg" style="margin-left: 440px;" alt=""></a>
               </div>

            </div>


            <div class="item">
               <div class="food-image">
                  <a href="#"> <img src="css/images/그림5.jpg"
                     style="margin-left: 140px;" alt=""></a>
               </div>
               <div class="food-image">
                  <a href="https://www.google.com/maps/?hl=ko"> <img
                     src="css/images/그림6.jpg" style="margin-left: 240px;" alt=""></a>
               </div>
               <div class="food-image">
                  <a href="https://www.google.com/maps/?hl=ko"> <img
                     src="css/images/그림7.jpg" style="margin-left: 340px;" alt=""></a>
               </div>
               <div class="food-image">
                  <a href="https://www.google.com/maps/?hl=ko"> <img
                     src="css/images/그림8.jpg" style="margin-left: 440px;" alt=""></a>
               </div>

            </div>



         </div>
      </div>
      <!-- 좌우 옆 버튼 -->
      <a class="left carousel-control" href="#myCarousel2" role="button"
         data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
         aria-hidden="true"></span> <span class="sr-only">Previous</span>
      </a> <a class="right carousel-control" href="#myCarousel2" role="button"
         data-slide="next"> <span
         class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
         <span class="sr-only">Next</span>
      </a>
   </div>



   <!-- 맛집 배너 끝 -->

   <!-- 사이드바 시작 -->
   <div class="floating">
      <a href="login.jsp"><div>로그인</div></a> <a href="Movie.jsp"><div>
            영화<br>예매<br>&<br>맛집<br>예약
         </div></a> <a href="Mypage.jsp"><div>
            마이<br>페이지
         </div></a><br>
   </div>

   <!-- 사이드바 끝 -->


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