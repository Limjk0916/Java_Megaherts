<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dbTest</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String jdbcDriver = "jdbc:mysql://localhost:3306/megahertss?" + "useUnicode=true&characterEncoding=utf-8";
			String dbUser = "root";
			String dbPass = "54321";
			
			String img = null;
			String query = "select img from movie where opendate >= '2019-07-01' limit 10";

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

			stmt = conn.createStatement();

			rs = stmt.executeQuery(query);
			
			while(rs.next()){
	%>
	<div>
		<img src="../images/<%=rs.getString("img") %>" />		
	</div>

	<%		}
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

</body>
</html>