<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <%String product =  request.getParameter("product2"); %>   
    
    <% ArrayList<String> arr2 =(ArrayList)(session.getAttribute("arr2")); %> 
    <!-- "arr"이라는 속성을 세션에서 받아온다 -->
    
    <%  
    if(arr2==null){arr2 = new ArrayList<String>();}
    arr2.add(product);
    session.setAttribute("arr2", arr2); /* 세션에 "arr"이름으로 arr을 속성으로 추가한다  */
    %>
    
    <script> alert("상품이 추가되었습니다"); history.back()</script>    
</body>
</html>

