<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<link href="css/sb-admin.min.css" rel="stylesheet">

<title>MEGAHERTS-LOGIN</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

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
body {
	font-family: 'Do Hyeon', sans-serif;
	margin-left : 7%;
	margin-rigth: 7%;
}
</style>

</head>

<body class="bg-dark">
	<!-- heder -->
	<Header class="container-fluid text-center">
		<div>
			<a href="main.jsp"><img src="css/images/logo.png"
				style="width: 10%; height: 20% display: block; margin: auto;" /></a>
		</div>
	</Header>

	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Login</div>
			<div class="card-body">

				<form action=insert_member.jsp " method="post">
					<div class="form-group">
						<div class="form-label-group">
							Phone Number <input type="text" name="phone" class="form-control"
								required="required" autofocus="autofocus">
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							Name <input type="text" name="name" class="form-control"
								required="required">
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							Password <input type="password" name="password"
								class="form-control" required="required">
						</div>
					</div>
					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox" value="remember-me">
								Remember Password
							</label>
						</div> 
					</div>
					
					<a class="btn btn-primary btn-block" href="main.jsp">Login</a></br>

					<div class="text-center">
						<button type="submit" class="btn btn-primary btn-block">계정추가</button>
					</div>

				</form>

				<div class="text-right">
					<a class="d-block small mt-3" href="admin.jsp">관리자모드</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
