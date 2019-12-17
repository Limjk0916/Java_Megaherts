<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.SQLException"%>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>MEGAHERTS-MATZIPMAP</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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

<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String jdbcDriver = "jdbc:mysql://localhost:3306/megahertss?" + "useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPass = "54321";
%>


<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

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
	margin-left: 130px;
	text-align: left;
	font-size: 30px;
	color: white;
}

h2 {
	float: left;
	margin-left: 40px;
	margin-top: 40px;
	color: white;
}

h5 {
	float: left;
	margin-left: 40px;
	color: white;
}
</style>

<!-- side bar시작 -->















<!-- side bar끝 -->




</head>
<body>

	<nav class="navbar navbar-inverse">


		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li>
			<li><a href="Mypage.jsp"><span
					class="glyphicon glyphicon-log-in"></span> 마이페이지</a></li>
		</ul>

	</nav>

	<!-- heder -->
	<Header class="container-fluid text-center">

		<ul class="nav navbar-nav navbar-middle">
			<div>
				<img src="css/images/logo.png"
					style="width: 25%; height: 25%; display: block; margin-left: auto;" " />
			</div>
		</ul>
		<div class="container-fluid text-center">
			<div class="col-sm-1 sidenav hidden-xs"></div>
			<div class="col-sm-7">
				<h1>영화관주변 맛집</h1>
			</div>
			<div class="col-sm-4">
				<select name="극장 선택" onchange="location = this.value;"
					style="margin-top: 20px;">
					<option value="극장 선택" selected="selected">극장 선택</option>
					<option value="http://localhost:8989/PROJECT3/Main4.jsp">잠실점</option>
					<option value="http://localhost:8989/PROJECT3/Main4.jsp">메가박스EOE4점</option>
					<option value="http://localhost:8989/PROJECT3/Main4.jsp">자유로점</option>
					<option value="http://localhost:8989/PROJECT3/Main4.jsp">덕소파랑새점</option>
					<option value="http://localhost:8989/PROJECT3/Main4.jsp">평택호점</option>
					<option value="http://localhost:8989/PROJECT3/Main4.jsp">용인점</option>


				</select>
			</div>
		</div>

	</Header>

	<header class="map">
		<div>
			<div id="map"
				style="width: 1300px; height: 700px; margin-left: 135px;"></div>
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1c55498d94630ef0f9b86e1235d37b3e"></script>
			<script>
				var container = document.getElementById('map');
				var options = {
					center : new kakao.maps.LatLng(33.450701, 126.570667),
					level : 3
				};

				var map = new kakao.maps.Map(container, options);
			</script>
		</div>
	</header>
	<!-- 현정이가 준 표 -->
	<div>
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%"
				cellspacing="0">
				<thead>
					<tr>
						<th>맛집종류</th>
						<th>맛집이름</th>
						<th>맛집주소</th>
						<th>맛집 전화번호</th>
						<th>극장위치</th>
					</tr>
				</thead>
				<tbody>
					<%
						try {
							conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
							stmt = conn.createStatement();
							String query = "select * from matzip";
							rs = stmt.executeQuery(query);

							while (rs.next()) {
					%>
					<tr id="matzip_table">
						<td id="mzSort"><%=rs.getString("mzSort")%></td>
						<td id="mzNm"><%=rs.getString("mzNm")%></td>
						<td id="mzAddress"><%=rs.getString("mzAddress")%></td>
						<td id="mzPhone"><%=rs.getString("mzPhone")%></td>
						<td id="cinemaCd"><%=rs.getString("cinemaCd")%></td>
					</tr>
					<%
						}
						} catch (SQLException ex) {
							out.println(ex.getMessage());
							ex.printStackTrace();
						} finally {
							if (rs != null)
								try {
									rs.close();
								} catch (SQLException ex) {
								}
							if (stmt != null)
								try {
									stmt.close();
								} catch (SQLException ex) {
								}
							if (conn != null)
								try {
									conn.close();
								} catch (SQLException ex) {
								}
						}
					%>
				</tbody>
			</table>
		</div>

	</div>

</body>
</html>