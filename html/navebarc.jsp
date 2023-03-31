<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page" />

<navebar>
  <style>
    /*ui-bar*/
    .ui-bar {
      background-color: #0000e3 !important;
      box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.7) !important;
    }
    /*page顏色更改*/
    .ui-page {
      background-color: #66b3ff !important;
    }
  </style>
  <table style="background-color: #ffffff">
    <tr>
      <td width="50%">
        <departmentext></departmentext>
      </td>
      <td width="1%">
        <a
          onclick="location.href='chiefpassa.jsp'"
          class="ui-btn ui-corner-all ui-message ui-all"
          >指揮中心
        </a>
      </td>
      <td width="1%">
        <a
          onclick="location.href='chiefpassb.jsp'"
          class="ui-btn ui-corner-all ui-message ui-all"
          >執行部門
        </a>
      </td>
      <td width="1%">
        <a
          onclick="location.href='chiefpassc.jsp'"
          class="ui-btn ui-corner-all ui-people ui-all"
          >計劃部門
        </a>
      </td>
      <td width="1%">
        <a
          onclick="location.href='chiefpassd.jsp'"
          class="ui-btn ui-corner-all ui-message ui-all"
          >後勤部門
        </a>
      </td>

      <!-- <td width="1%">
        <a
          onclick="location.href='replyc.jsp'"
          class="ui-btn ui-reply ui-corner-all ui-receive ui-all"
          >訊息接收(<span><count></count></span>)
          <script>
            setInterval(function () {
              Autofresh();
            }, 2000);
            function Autofresh() {
              $.ajax({
                url: "showcount.jsp",
                type: "POST",
                data: {
                  department: "c",
                },
                success: function (data) {
                  //  console.log('Submission was successful.');
                  var start = data.indexOf("<count>");
                  var end = data.indexOf("</count>");
                  var count = data.substring(start + 7, end);
                  console.log(count);
                  /*把html拿過來*/
                  $("count").html(count);
                },
                error: function (XMLHttpRequest, status, error) {
                  console.log(error);
                },
              });
            }
            Autofresh();
          </script>
        </a>
      </td>
      <td width="1%">
        <a
          class="ui-btn ui-corner-all ui-complete ui-all"
          onclick="location.href='comc.jsp'"
          >完成事項
        </a>
      </td> -->

      <td width="3%">
        <a
          class="ui-btn ui-corner-all ui-people-submit ui-all"
          onclick="location.href='peoplesubmitd.jsp'"
          >人力召回/報到</a
        >
      </td>
      <td width="1%">
        <a
          onclick="location.href='peoplestatus.jsp'"
          class="ui-btn ui-corner-all ui-message ui-all"
          >組織人力
        </a>
      </td>

      <td width="50%" class="username">
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
