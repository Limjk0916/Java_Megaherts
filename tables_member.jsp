<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
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

<title>SB Admin - Tables</title>

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<link href="css/sb-admin.min.css" rel="stylesheet">

<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null;
	Statement stmt = null;

	ResultSet rs = null;

	String jdbcDriver = "jdbc:mysql://localhost:3306/megahertss?" + "useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPass = "54321";
%>

</head>

<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
		<a class="navbar-brand mr-1" href="admin.jsp">MegaHerts</a>
	</nav>
		<div id="wrapper">

			<!-- Sidebar -->
			<ul class="sidebar navbar-nav">
				<li class="nav-item"><a class="nav-link" href="admin.jsp">
						<i class="fas fa-fw fa-tachometer-alt"></i> <span>메인화면</span>
				</a></li>

				<li class="nav-item"><a class="nav-link"
					href="tables_member.jsp"> <i class="fas fa-fw fa-chart-area"></i>
						<span>회원정보</span>
				</a></li>

			</ul>

			<div id="content-wrapper">

				<div class="container-fluid">

					<!-- DataTables Example -->
					<div class="card mb-3">
						<div class="card-header">
							<i class="fas fa-table"></i> Data Table
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>회원이름</th>
											<th>전화번호</th>
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
										<tr>
											<td id="name"><%=rs.getString("name")%></td>
											<td id="phone"><%=rs.getString("phone")%></td>
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
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="card-footer small text-muted">Updated yesterday
							at 11:59 PM</div>
					</div>

					<p class="small text-center text-muted my-5">
						<em>More table examples coming soon...</em>
					</p>

				</div>
				<!-- /.container-fluid -->

				<!-- Sticky Footer -->
				<footer class="sticky-footer">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright © Your Website 2019</span>
						</div>
					</div>
				</footer>

			</div>
			<!-- /.content-wrapper -->

		</div>
		<!-- /#wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Page level plugin JavaScript-->
		<script src="vendor/datatables/jquery.dataTables.js"></script>
		<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="js/sb-admin.min.js"></script>

		<!-- Demo scripts for this page-->
		<script src="js/demo/datatables-demo.js"></script>
</body>

</html>
