<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//post방식
request.setCharacterEncoding("EUC-KR");
//request처리
String stitle=request.getParameter("title");
String scontent=request.getParameter("content");
String sdate=request.getParameter("date");

%>
<div><%=stitle%></div>
<div><%=scontent%></div>
<div><%=sdate%></div>
<%

//DB에 insert
Class.forName("com.mysql.jdbc.Driver");

Connection conn = null;
PreparedStatement pstmt = null; //insert update 때 미완성으로 만들어서 값이라 매치시키기

String sql="insert into books(title,content,date)" 
			+"values(?,?,?)";

try{
	String url = "jdbc:mysql://localhost:3306/mydb?"+
				"useUnicode=true&characterEncoding=utf8";
	String user = "root";
	String pw = "54321";
	conn = DriverManager.getConnection(url, user, pw);
	pstmt=conn.prepareStatement(sql);//미완성된 맵핑
	pstmt.setString(1, stitle);
	pstmt.setString(2, scontent);
	pstmt.setString(3, sdate);
	int result = pstmt.executeUpdate(); //SQL DML에 대하여 1번(노카운트를 입력) 아니면 2번(0을 리턴)
	
	if(result>0){
		//out.write("삽입성공");
		response.sendRedirect("Mypage.jsp");
	}else{
		//실패했어요 메세지와 함께, 전상태페이지로
%>
	<script>
		window.alert("등록실패");
		history.go(-1);//go(index)인데 -1을 넣는다면 방금 전을 알 수 있다.
		//location.href="";
	</script>	
<%	}
}catch(SQLException ex){
	out.println(ex.getMessage());
	ex.printStackTrace();
}finally{
	if(pstmt!=null){ try{pstmt.close();} catch(SQLException ex) {}}
	if(conn!=null){ try{conn.close();} catch(SQLException ex) {}}
}
%>
