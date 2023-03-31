<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.sql.*, java.util.*"%>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page" />

<navebar>
  <table style="background-color: #ffffff">
    <tr>
      <th>
        <a>簽到人數
        </a>
   
		<td>
		<%
		try { 
			Class.forName("com.mysql.jdbc.Driver"); // 啟動 JDBC 驅動程式
			try {	// 例外處理
				String url="jdbc:mysql://localhost/emergency"; 
				Integer sql=""; 
				Connection con=DriverManager.getConnection(url,"root","root"); 
				if(con.isClosed()) // con.isClosed() 
				   out.println("警告：連線建立失敗！"); 
				else { 
						Statement stmtB = con.createStatement();
						ResultSet rsB = stmtB.executeQuery("select count(*) from recall_person where sign="1";
						while(rsB.next())
							int count = rsB.getInt(1);
								or
							while(rsB.next())
						int count = rsB.getInt("total");
					}
				}
			catch (SQLException sExec) {
				   out.println("警告：MySQL 錯誤！"+sExec.toString()); // MySQL 錯誤警告
			}
		}
		catch (ClassNotFoundException err) {
		   out.println("警告：class 錯誤！"+err.toString()); // JDBC 錯誤警告
		}
		%>
		</td>
      <td width="95%" class="username">
          <% if(session.getAttribute("username") != null){ String sessionName =
        (String) session.getAttribute("username"); out.println(sessionName); }
        else{ /*response.sendRedirect("");*/ } %>
      </td>

      <td width="1%">
        <button
          class="logout ui-corner-all ui-btn ui-shadow"
          onclick="logout()"
        >
          <logout-text>登出</logout-text>
        </button>
      </td>
    </tr>
  </table>
</navebar>
