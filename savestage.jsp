<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page"/>
<html>
<head>
      <title>存階段和人數</title>
</head>
<body>
    <h1></h1>
   <%      
           //階段和人數陣列
           String sJson = request.getParameter("sJson");
           //階段代碼
           String stage = request.getParameter("stage").trim();

           int start = sJson.indexOf("[");
           int end = sJson.indexOf("]");
          
           //phases((30分內到院)、未回覆，哪格)
           String array= sJson.substring(start+1, end);

          //獲得第二個陣列:numbers
          int comma = sJson.indexOf("numbers");
          start = sJson.indexOf("[",comma);
          end = sJson.indexOf("]",comma);
          String array1= sJson.substring(start+1, end);
          

          //轉成陣列
          String[] phases = array.split(",");
          String[] numbers = array1.split(",");
 
          int[] numbers1 = new int[numbers.length];

          for(int i = 0; i < numbers.length; i++){
                      //把"3"變成3
                      numbers[i]=numbers[i].replace("\"","");
                      phases[i]=phases[i].replace("\"","");

                      numbers1[i] = Integer.parseInt(numbers[i]);

                      out.print("number:::"+numbers[i]);
                      out.print("phases:::"+phases[i]);
          }
          out.print("stage:::"+stage);
          beanDB.stageSave(stage,phases,numbers1,session.getAttribute("account").toString());

          //beanDB.itemstatusSave1(status,ids,session.getAttribute("account").toString());
    %>
</body>
</html>