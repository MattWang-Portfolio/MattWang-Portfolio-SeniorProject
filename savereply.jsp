<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page"/>

<html>
<head>
      <title>save reply 存回覆訊息</title>
</head>
<body>
    <h1>save reply</h1>
   <%
        String account = session.getAttribute("account").toString();
        String name = session.getAttribute("username").toString();

         Enumeration paramNames = request.getParameterNames();
           while(paramNames.hasMoreElements()) {
                  String paramName = (String)paramNames.nextElement();
                  //獲得id位置
                  out.print("<tr><td>" +"ids位置:" + paramName.indexOf("ids") + "</td>\n");
                  
                  //獲得回覆訊息
                  out.print("<tr><td>" +"reply位置:" + paramName.indexOf("reply") + "</td>\n");

                  //獲得表單id
                  //獲得回覆文字
                  String[] split_line = paramName.split("\"");
                  int ids = Integer.valueOf(split_line[3]);
                  String reply = split_line[7];
                  
                  //存回覆訊息
                  beanDB.replySave(reply,ids,account,name);
                  //beanDB.statusSave(1,ids,account,name);
            }
      %>
</body>
</html>