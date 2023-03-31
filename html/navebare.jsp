<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page" />

<navebar>
  <table style="background-color: #ffffff">
    <tr>
      <td width="7%">
        <a
          onclick="location.href='listmission.jsp'"
          class="ui-btn ui-corner-all ui-mission"
          >任務執掌
        </a>
      </td>
      <!-- <td width="10%" class="replytext">
                  訊息回覆
            </td>-->
      <td width="1%">
        <a
          class="ui-btn ui-corner-all ui-e"
          onclick="location.href='listmessagee.jsp'"
          >全院訊息
        </a>
      </td>
      <td width="1%">
        <a
          class="ui-btn ui-corner-all ui-a"
          onclick="location.href='listmessagea.jsp'"
          >指揮訊息
        </a>
      </td>
      <td width="1%">
        <a
          class="ui-btn ui-corner-all ui-b"
          onclick="location.href='listmessageb.jsp'"
          >執行訊息
        </a>
      </td>
      <td width="1%">
        <a
          class="ui-btn ui-corner-all ui-c"
          onclick="location.href='listmessagec.jsp'"
          >計畫訊息
        </a>
      </td>
      <td width="1%">
        <a
          class="ui-btn ui-corner-all ui-d"
          onclick="location.href='listmessaged.jsp'"
          >後勤訊息
        </a>
      </td>
      <td width="80%" class="username">
          <% if(session.getAttribute("username") != null){ String sessionName =
        (String) session.getAttribute("username"); out.println(sessionName); }
        else{ /*response.sendRedirect("");*/ } %>
      </td>

      <td width="3%">
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
