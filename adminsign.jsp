<!DOCTYPE html>
<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<%
   // Set refresh, autoload time as 30 seconds
   response.setIntHeader("Refresh", 30);
%>
<%
  if(session.getAttribute("username") != null){
    
  }
  else{
      response.sendRedirect("login.jsp");
  }
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>green999-病人動態</title>
  <link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
  <link rel="stylesheet" href="themes/bgtest1.min.css" />
  <link rel="stylesheet" href="libs/jquery.mobile.structure-1.4.5.min.css" />
  <script src="libs/jquery-1.11.1.min.js"></script>
  <script src="libs/jquery.mobile-1.4.5.min.js"></script>
 <link rel="stylesheet" href="./doctor.css">
  



<script>

</script>

</head>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <link rel="stylesheet" href="css/subject.css">
  <script src="js/subject.js"></script>

  <link rel="stylesheet" href="css/navebar.css">
  <script src="js/navebarp.js"></script>

  <link rel="stylesheet" href="css/patientstatus.css">

<body>
  <div data-role="page" id="page">
   <div data-role="header">

<subject>
</subject>
<navebar>
</navebar> 
</div>


<div data-role='content'>
   <div class='ui-grid-a'>

    <div class='ui-block-a' style="width:2%; visibility:hidden !important;">
      <div class="ui-bar ui-bar-a">
    </div>
</div>
<div style="margin: auto; width: 80%" link rel="stylesheet" href="css/table.css" />
        <sql:setDataSource var="emergency" driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/emergency"
            user="root" password="root" />
            
        <sql:query dataSource="${emergency}" var="result">
            SELECT * from recall_person Where sign like true && position like '行政人員';
         </sql:query>
        <table border="1" width="100%" class="one">
        <%
        
  %>
            <tr>
                <th>批次</th>
                <th>人員編號</th>
                 <th>名字</th>
                <th>位置</th>
                <th>電話號碼</th>
            </tr>

            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.Batch}" /></td>
                    <td><c:out value="${row.Person_id}" /></td>
                    <td><c:out value="${row.Person_name}" /></td>
                    <td><c:out value="${row.Position}" /></td>
                    <td><c:out value="${row.Phone_number}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <h1 align="center">
 <%     
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emergency","root","root");     
    Statement st=con.createStatement();
    String strQuery = "SELECT SUM(sign) FROM recall_person Where Position like '行政人員'";
    ResultSet rs = st.executeQuery(strQuery);

    String Countrun="0";
      while(rs.next()){
      Countrun = rs.getString(1);
      out.println("Total people :  " +Countrun);
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
%>
</h1>
</body>
</html>

