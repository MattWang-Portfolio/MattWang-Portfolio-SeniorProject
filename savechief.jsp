<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page" />

<html>
<head>
</head>
<body>
    <h1>存各個長官的人名到資料庫</h1>
   <%
        Enumeration paramNames = request.getParameterNames();
           while(paramNames.hasMoreElements()) {
                  String paramName = (String)paramNames.nextElement();
                  out.print(paramName  + ":::::::::::::::paramName <br>");
                  //獲得第一個陣列:name(人名)
                  int start = paramName.indexOf("[");
                  int end = paramName.indexOf("]");
                  String array= paramName.substring(start+1, end);
                  out.print(array + "<br>");
                  
                  //獲得第二個陣列:職稱，像是醫療官
                  int comma = paramName.indexOf("positions");
                  start = paramName.indexOf("[",comma);
                  end = paramName.indexOf("]",comma);
                  String array1= paramName.substring(start+1, end);
                  out.print(array1 + "<br>");
                  
                  //轉成陣列
                  String[] split_line = array.split(",");
                  String[] split_line1 = array1.split(",");

                  for(int i = 0; i < split_line.length; i++){
                      //把"3"變成3
                      split_line[i]=split_line[i].replace("\"","");
                      split_line1[i]=split_line1[i].replace("\"","");
                      out.print("name:::"+split_line[i]);
                      out.print("position:::"+split_line1[i]);
                  }

                  beanDB.chiefSave(split_line,split_line1,session.getAttribute("account").toString());
            }
      %>

</body>
</html>