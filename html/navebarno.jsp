<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page" />

<navebar>
  <table style="background-color: #ffffff">
    <tr>
      <td width="50%">
        <departmentext></departmentext>
      </td>

      <td width="99%" class="username">
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
