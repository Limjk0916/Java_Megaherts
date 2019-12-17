<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");

		String jdbcDriver = "jdbc:mysql://localhost:3306/megahertss?" + "useUnicode=true&characterEncoding=utf-8";
		String dbUser = "root";
		String dbPass = "54321";

		Connection conn = null;
		PreparedStatement pstmt = null;

		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		String password = request.getParameter("password");

		Class.forName("com.mysql.jdbc.Driver");

		try {

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println(conn);
			System.out.println(conn.getClass());

			pstmt = conn.prepareStatement("INSERT INTO login VALUES (?, ?, ?)");
			System.out.println(pstmt);
			System.out.println(pstmt.getClass());

			pstmt.setString(1, phone);
			pstmt.setString(2, name);
			pstmt.setString(3, password);
			System.out.println(pstmt);

			pstmt.executeUpdate();

		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
	%>
	<script>
		alert("저장 성공!");
		location.href = "login.jsp";
	</script>

</body>
</html>