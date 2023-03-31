<%@ page session="true" pageEncoding="UTF-8" contentType="text/html;
charset=UTF-8"%> <%@ page import="java.io.*" %> <%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %> <%@ page import="java.util.Enumeration" %>
<%@ page import="java.text.*" %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page" />

<navebar>
  <style>
    /*ui-bar*/
    .ui-bar {
      background-color: #bf0060 !important;
      box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.7) !important;
    }
  </style>
  <table style="background-color: #ffffff">
    <tr>
      <td width="50%">
        <departmentext></departmentext>
      </td>

      <td width="1%">
        <a
          onclick="location.href='doctorsign.jsp'"
          class="logout ui-btn ui-corner-all ui-message ui-all"
          >醫生
        </a>
      </td>
      <td width="1%">
        <a
          onclick="location.href='nursesign.jsp'"
          class="logout ui-btn ui-corner-all ui-message ui-all"
          >護士
        </a>
      </td>
      <td width="1%">
        <a
          onclick="location.href='adminsign.jsp'"
          class="logout ui-btn ui-corner-all ui-message ui-all"
          >行政人員
        </a>
      </td>
      <td width="1%">
        <a
          onclick="location.href='nurseadminsign.jsp'"
          class="logout ui-btn ui-corner-all ui-message ui-all"
          >醫技人員
        </a>
      </td>
      <td width="1%">
        <a
          onclick="location.href='patientstatus.jsp'"
          class="logout ui-btn ui-corner-all ui-message ui-all"
          >簽到表
        </a>
      </td>

      <td width="10%" class="username">
          <% if(session.getAttribute("username") != null){ String sessionName =
        (String) session.getAttribute("username"); out.println(sessionName); }
        else{ /*response.sendRedirect("");*/ } %>
      </td>
      <td width="10%">
        <button
          class="logout ui-corner-all ui-btn ui-shadow"
          onclick="logout()"
        >
          登出
        </button>
      </td>
    </tr>
  </table>
</navebar>
