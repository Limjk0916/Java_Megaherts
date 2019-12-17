<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEGAHERTS-ADMIN</title>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<link href="css/sb-admin.min.css" rel="stylesheet">

<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null;
	Statement stmt = null;
	Statement stmt1 = null;
	Statement stmt2 = null;
	Statement stmt3 = null;

	ResultSet rs = null;
	ResultSet rs1 = null;
	ResultSet rs2 = null;
	ResultSet rs3 = null;

	String jdbcDriver = "jdbc:mysql://localhost:3306/megahertss?" + "useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPass = "54321";
%>
</head>
<body id="page-top">

	<!-- Navbar -->
	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
		<a class="navbar-brand mr-1" href="login.jsp">MegaHerts</a>
	</nav>

	<div id="wrapper">
		<!-- Sidebar -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="admin.jsp">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>관리자 메인화면</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="main.jsp"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>홈페이지 메인화면</span>
			</a></li>
		</ul>

		<!-- Contents -->
		<div id="content-wrapper">

			<!-- MAIN STATICS -->
			<div class="container-fluid">
				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item">주요 통계</li>
					<li class="breadcrumb-item active">Overview</li>
				</ol>
				<div class="card mb-3">
					<div class="card-body">
						<%
							try {
								conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
								stmt = conn.createStatement();
								stmt1 = conn.createStatement();
								stmt2 = conn.createStatement();
								stmt3 = conn.createStatement();

								String query = "select count(phone) from login";
								String query1 = "select count(*) from movie";
								String query2 = "select count(mzCd) from matzip";

								rs = stmt.executeQuery(query);
								rs1 = stmt1.executeQuery(query1);
								rs2 = stmt2.executeQuery(query2);

								if (rs.next() && rs1.next() && rs2.next()) {
						%>
						총 회원수 :
						<%=rs.getInt(1)%>
						<br /> 총 영화수 :
						<%=rs1.getInt(1)%>
						<br /> 총 맛집수 :
						<%=rs2.getInt(1)%>
						<br />
						<%
							}
							} catch (SQLException ex) {
								out.println(ex.getMessage());
								ex.printStackTrace();
							} finally {
								if (rs != null && rs1 != null && rs2 != null)
									try {
										rs.close();
										rs1.close();
										rs2.close();
									} catch (SQLException ex) {
									}
								if (stmt != null && stmt1 != null && stmt2 != null)
									try {
										stmt.close();
										stmt1.close();
										stmt2.close();
									} catch (SQLException ex) {
									}
								if (conn != null)
									try {
										conn.close();
									} catch (SQLException ex) {
									}
							}
						%>

					</div>
				</div>
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> 회원정보 리스트
					</div>
					<div class="card mb-3">
						<div class="card-body">
							<div class="card-body">
								<div class="row">
									<div class="col-sm-12 col-md-6"></div>
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											width="100%" cellspacing="0">
											<thead>
												<tr>
													<th>주문코드</th>
													<th>회원코드</th>
												</tr>
											</thead>
											<tbody>
												<%
													try {
														conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
														stmt = conn.createStatement();
														String query = "select * from login";
														rs = stmt.executeQuery(query);

														while (rs.next()) {
												%>
												<tr id="login">
													<td id="name"><%=rs.getString("name")%></td>
													<td id="phone"><%=rs.getString("phone")%></td>
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
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- ORDER -->
			<div class="container-fluid">
				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">주문 통계</a></li>
					<li class="breadcrumb-item active">Overview</li>
				</ol>
				<div class="card mb-3">
					<div class="card-body">
						<div class="card mb-3">
							<div class="card-header">
								<i class="fas fa-table"></i> 주문정보 리스트
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-sm-12 col-md-6"></div>
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											width="100%" cellspacing="0">
											<thead>
												<tr>
													<th>주문코드</th>
													<th>회원코드</th>
													<th>영화코드</th>
													<th>메뉴코드</th>
													<th>총결제금액</th>
												</tr>
											</thead>
											<tbody>
												<%
													try {
														conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
														stmt = conn.createStatement();
														String query = "select * from orders";
														rs = stmt.executeQuery(query);

														while (rs.next()) {
												%>
												<tr id="orders">
													<td id="orderCd"><%=rs.getString("orderCd")%></td>
													<td id="phone"><%=rs.getString("phone")%></td>
													<td id="movieCd"><%=rs.getString("movieCd")%></td>
													<td id="menuCd"><%=rs.getString("menuCd")%></td>
													<td id="totalPrice"><%=rs.getString("totalPrice")%></td>
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin.min.js"></script>

	<!-- Demo scripts for this page-->
	<script src="js/demo/datatables-demo.js"></script>
	<script src="js/demo/chart-area-demo.js"></script>
</body>
</html>