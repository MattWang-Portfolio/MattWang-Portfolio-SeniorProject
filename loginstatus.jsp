<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<!--create session 使用者名字，使用者帳號-->
<html>
<head>
</head>


<body>
<%
String username = request.getParameter("username");
String account = request.getParameter("account");
if(username!=null && username.length()!=0 && account!=null && account.length()!=0){
    session.setAttribute("username",username);
    session.setAttribute("account",account);
    //session如果再3000秒之內沒人用，會取消session
    //session.setMaxInactiveInterval(3000);
}
else{
    response.sendRedirect("login.jsp");
}
%>

</body>

</html>