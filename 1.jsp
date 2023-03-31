<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %> <%@ page
import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="css/table.css" />
  </head>

  <body>
    <div style="margin: auto; width: 80%">
      <sql:setDataSource
        var="emergency"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost/emergency"
        user="root"
        password="root"
      />

      <sql:query dataSource="${emergency}" var="result">
        SELECT * from recall_person Where Batch like "1";
      </sql:query>
      <table border="1" width="100%">
        <tr>
          <th>批次</th>
          <th>人員編號</th>
          <th>名字</th>
          <th>位置</th>
          <th>電話號碼</th>
        </tr>

        <c:forEach var="row" items="${result.rows}">
          <tr>
            <td>
              <c:out value="${row.Batch}" />
            </td>
            <td>
              <c:out value="${row.Person_id}" />
            </td>
            <td>
              <c:out value="${row.Person_name}" />
            </td>
            <td>
              <c:out value="${row.Position}" />
            </td>
            <td>
              <c:out value="${row.Phone_number}" />
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
    <input class='popuptest' type="button" value="發送簡訊">
    <p class='show'></p>

    <script>
        var button = document.querySelector('.popuptest');
        var showtxt = document.querySelector('.show');

        function popup2(e) {
            if (confirm('確定發送簡訊給第一批人員嗎?') == true) {
				alert('送出成功');
            } else {
                alert('取消發送');
            }

        };
        button.addEventListener('click', popup2);
    </script>

    <input
      type="button"
      name="index"
      value="回首頁"
      onclick="window.location.href='index.jsp'"
    />
  </body>
</html>
