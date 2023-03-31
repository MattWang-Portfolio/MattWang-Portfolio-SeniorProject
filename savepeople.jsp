<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page" />

<html>
<head>
</head>
<body>
    <h1>存 人力召回</h1>
   <%
        Enumeration paramNames = request.getParameterNames();
           while(paramNames.hasMoreElements()) {
                  String paramName = (String)paramNames.nextElement();
                  //out.print(paramName  + ":::::::::::::::paramName <br>");

                  //獲得第一個陣列:number(個數)
                  int start = paramName.indexOf("[");
                  int end = paramName.indexOf("]");
                  String array= paramName.substring(start+1, end);
                  out.print(array + "<br>");
                  
                  //獲得第二個陣列:職稱，像是醫師
                  int comma = paramName.indexOf("positions");
                  start = paramName.indexOf("[",comma);
                  end = paramName.indexOf("]",comma);
                  String array1= paramName.substring(start+1, end);
                  out.print(array1 + "<br>");
                  
                  //轉成陣列
                  String[] numbers = array.split(",");
                  String[] positions = array1.split(",");
 
                  int[] numbers1 = new int[numbers.length];

                  for(int i = 0; i < numbers.length; i++){
                      //把"3"變成3
                      numbers[i]=numbers[i].replace("\"","");
                      positions[i]=positions[i].replace("\"","");

                      numbers1[i] = Integer.parseInt(numbers[i]);

                      out.print("number:::"+numbers[i]);
                      out.print("position:::"+positions[i]);
                  }

                  beanDB.peopleSave(positions,numbers1,session.getAttribute("account").toString());
                  /*beanDB.chiefSave(split_line,split_line1,session.getAttribute("account").toString());*/
            }
      %>

</body>
</html>