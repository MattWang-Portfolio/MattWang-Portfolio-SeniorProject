<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>

<html>
<head>
<style>
</style>
</head>


<body>
<%
  /*session取消，就是登出*/
  session.invalidate();
  //response.sendRedirect("login.jsp");
%>
</body>
</html>