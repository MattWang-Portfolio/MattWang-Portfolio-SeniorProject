<!DOCTYPE html>
<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.DecimalFormat" %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page"/>
<%
  if(session.getAttribute("username") != null){
    
  }
  else{
      response.sendRedirect("login.jsp");
  }
%>
<%
   // Set refresh, autoload time as 30 seconds
   response.setIntHeader("Refresh", 30);
%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>green999-組織人力</title>
  <link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
  <link rel="stylesheet" href="themes/bgtest1.min.css" />
  <link rel="stylesheet" href="libs/jquery.mobile.structure-1.4.5.min.css" />
  <script src="libs/jquery-1.11.1.min.js"></script>
  <script src="libs/jquery.mobile-1.4.5.min.js"></script>
  

    <!--有這個才能用ajax(不用這個也可以用ajax)-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <link rel="stylesheet" href="css/subject.css">
  <script src="js/subject.js"></script>

  <link rel="stylesheet" href="css/navebar.css">
  <script src="js/navebarno.js"></script>

  <link rel="stylesheet" href="css/peoplestatus.css">
  <!--<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>-->

<script>

</script>

</head>



<body>

  <div data-role="page" id="page">
   <div data-role="header">

<subject>
</subject>
<navebar>
</navebar> 
</div>


<div data-role='content'>
   <div class='ui-grid-a'>

    <div class='ui-block-a' style="width:50%;">
      <div class="ui-bar ui-bar-a">
         <div class="item">組織架構</div>
<%
   List<String> showpeoples = new ArrayList<String>();
   showpeoples = beanDB.showpeople();
   for(int i = 1; i < showpeoples.size(); i+=2){
          if((showpeoples.get(i) == "") || (showpeoples.get(i) == null) )
          showpeoples.set(i,"(待確認)");
          //showpeoples.get(i)="暫缺";
    }
%>
    <svg  id="svg" width="100%" height="70%" viewBox="50 0 550 450" >
          <rect x="250" y="10" width="150" height="70" style="fill:#009245;stroke-width:1;stroke:rgb(0,0,0)"></rect> 
          <text x="285" y="35" fill="white">指揮官</text>
          <text x="285" y="65" fill="yellow"> <%=showpeoples.get(1)%></text>

          <rect x="70" y="100" width="150" height="70" style="fill:#009245;stroke-width:1;stroke:rgb(0,0,0)"></rect> 
          <text x="105" y="125" fill="white">醫療官</text>
          <text x="105" y="155" fill="yellow"><%=showpeoples.get(3)%></text>

          <rect x="430" y="100" width="150" height="70" style="fill:#009245;stroke-width:1;stroke:rgb(0,0,0)"></rect> 
          <text x="465" y="125" fill="white">發言官</text>
          <text x="465" y="155" fill="yellow"><%=showpeoples.get(11)%></text>

          <rect x="70" y="190" width="150" height="70" style="fill:#009245;stroke-width:1;stroke:rgb(0,0,0)"></rect> 
          <text x="105" y="215" fill="white">安全官</text>
          <text x="105" y="245" fill="yellow"><%=showpeoples.get(5)%></text>

          <rect x="430" y="190" width="150" height="70" style="fill:#009245;stroke-width:1;stroke:rgb(0,0,0)"></rect> 
          <text x="465" y="215" fill="white">聯絡官</text>
          <text x="465" y="245" fill="yellow"><%=showpeoples.get(13)%></text>

          <rect x="70" y="320" width="120" height="70" style="fill:#009245;stroke-width:1;stroke:rgb(0,0,0)"></rect> 
          <text x="85" y="345" fill="white">執行-醫</text>
          <text x="85" y="375" fill="yellow"><%=showpeoples.get(15)%></text>

          <rect x="200" y="320" width="120" height="70" style="fill:#009245;stroke-width:1;stroke:rgb(0,0,0)"></rect> 
          <text x="215" y="345" fill="white">執行-護</text>
          <text x="215" y="375" fill="yellow"><%=showpeoples.get(17)%></text>

          <rect x="330" y="320" width="120" height="70" style="fill:#009245;stroke-width:1;stroke:rgb(0,0,0)"></rect> 
          <text x="340" y="345" fill="white">計畫部門</text>
          <text x="340" y="375" fill="yellow"><%=showpeoples.get(7)%></text>

          <rect x="460" y="320" width="120" height="70" style="fill:#009245;stroke-width:1;stroke:rgb(0,0,0)"></rect> 
          <text x="470" y="345" fill="white">後勤部門</text>
          <text x="470" y="375" fill="yellow"><%=showpeoples.get(9)%></text>

          <line x1="325" y1="80" x2="325" y2="290" style="stroke:rgb(0,0,0);stroke-width:3"></line>
          
          <line x1="220" y1="145" x2="430" y2="145" style="stroke:rgb(0,0,0);stroke-width:3"></line>
          <line x1="220" y1="245" x2="430" y2="245" style="stroke:rgb(0,0,0);stroke-width:3"></line>

          <line x1="145" y1="290" x2="505" y2="290" style="stroke:rgb(0,0,0);stroke-width:3"></line>

          <line x1="145" y1="290" x2="145" y2="320" style="stroke:rgb(0,0,0);stroke-width:3"></line>
          <line x1="260" y1="290" x2="260" y2="320" style="stroke:rgb(0,0,0);stroke-width:3"></line>
          <line x1="390" y1="290" x2="390" y2="320" style="stroke:rgb(0,0,0);stroke-width:3"></line>
          <line x1="505" y1="290" x2="505" y2="320" style="stroke:rgb(0,0,0);stroke-width:3"></line>
     </svg> 
    </div>
</div>

<div class='ui-block-b' style="width:50%;">
    <div class="ui-bar ui-bar-a">
      <div class="item">報到/召回狀況</div>

<%
   String nowrite="0";
   HashMap<String,Integer> showstaffs = new HashMap<String,Integer>();
   showstaffs = beanDB.showstaff();
   //out.println(showstaffs.size());
   int sum = 0;
    for (String i : showstaffs.keySet()) {
        sum+=showstaffs.get(i);
        if( showstaffs.get(i) == 0 )
          showstaffs.put(i,0);
    }
%>
    <table class='myFormat'>
         <tr>
           <th class="anum">實際報到人員</th>
           <th class="num">人數</th> 
         </tr>

         <tr>
           <td>醫師</td>
           <td><%=showstaffs.get("a")==null?nowrite:showstaffs.get("a")%></td> 
         </tr>

         <tr>
           <td>護理人員</td>
           <td><%=showstaffs.get("b")==null?nowrite:showstaffs.get("b")%></td> 
         </tr>

         <tr>
           <td>醫技人員</td>
           <td><%=showstaffs.get("c")==null?nowrite:showstaffs.get("c")%></td> 
         </tr>

         <tr>
           <td>行政人員</td>
           <td><%=showstaffs.get("d")==null?nowrite:showstaffs.get("d")%></td> 
         </tr>

         <tr>
           <td>其他</td>
           <td><%=showstaffs.get("e")==null?nowrite:showstaffs.get("e")%></td> 
         </tr>

         <tr>
           <td class="count">總計</td>
           <td class="count"><%=sum%></td> 
         </tr>
    </table>
<%
   String stafftime = beanDB.showstafftime();
%>
<div class="refresh">更新時間:<%=stafftime%></div>

<%
   /*訊息召回-----------回覆率 */
   nowrite="0";
   HashMap<String,Integer> showreturns1 = new HashMap<String,Integer>();
   HashMap<String,Integer> showreturns2 = new HashMap<String,Integer>();
   HashMap<String,Integer> showreturns3 = new HashMap<String,Integer>();
   showreturns1  = beanDB.showreturn("a");
   showreturns2  = beanDB.showreturn("b");
   showreturns3 =  beanDB.showreturn("c");
   float returnrate1 = 0;
   float returnrate2 = 0;
   float returnrate3 = 0;

   //計算 回覆率
if(showreturns1.get("e") !=null){
   try{
     returnrate1 = ((float)showreturns1.get("a") + (float)showreturns1.get("b") + (float)showreturns1.get("c")) / (float)showreturns1.get("e")*100;

     }catch(java.lang.ArithmeticException e){
         returnrate1 = 0;
    }
}

if(showreturns2.get("e") !=null){
   try{
     returnrate2 = ((float)showreturns2.get("a") + (float)showreturns2.get("b") + (float)showreturns2.get("c")) / (float)showreturns2.get("e")*100;
     }catch(java.lang.ArithmeticException e){
      returnrate2 = 0;
    }
}

if(showreturns3.get("e") !=null){
   try{
     returnrate3 = ((float)showreturns3.get("a") + (float)showreturns3.get("b") + (float)showreturns3.get("c")) / (float)showreturns3.get("e")*100;

     }catch(java.lang.ArithmeticException e){
       returnrate3 = 0;
    }
}
    if(Float.isNaN(returnrate1)){
         returnrate1 = 0;
    }
    if(Float.isNaN(returnrate2)){
         returnrate2 = 0;
    }
    if(Float.isNaN(returnrate3)){
         returnrate3 = 0;
    }
    if(Float.isInfinite(returnrate1)){
         returnrate1 = 0;
    }
    if(Float.isInfinite(returnrate2)){
         returnrate2 = 0;
    }
    if(Float.isInfinite(returnrate3)){
         returnrate3 = 0;
    }
%>
    <table class='myFormat'>
         <tr>
           <th>訊息召回</th>
           <th>第一階段</th> 
           <th>第二階段</th> 
           <th>第三階段</th> 
         </tr>

         <tr>
           <td>1 (30分內到院)</td>
           <td><%=showreturns1.get("a")==null?nowrite:showreturns1.get("a")%></td> 
           <td><%=showreturns2.get("a")==null?nowrite:showreturns2.get("a")%></td> 
           <td><%=showreturns3.get("a")==null?nowrite:showreturns3.get("a")%></td> 
         </tr>

         <tr>
           <td>2 (60分內到院)</td>
           <td><%=showreturns1.get("b")==null?nowrite:showreturns1.get("b")%></td> 
           <td><%=showreturns2.get("b")==null?nowrite:showreturns2.get("b")%></td> 
           <td><%=showreturns3.get("b")==null?nowrite:showreturns3.get("b")%></td> 
         </tr>

         <tr>
           <td>3 (無法到院)</td>
           <td><%=showreturns1.get("c")==null?nowrite:showreturns1.get("c")%></td> 
           <td><%=showreturns2.get("c")==null?nowrite:showreturns2.get("c")%></td> 
           <td><%=showreturns3.get("c")==null?nowrite:showreturns3.get("c")%></td> 
         </tr>

         <tr>
           <td>未回覆</td>
           <td><%=showreturns1.get("d")==null?nowrite:showreturns1.get("d")%></td> 
           <td><%=showreturns2.get("d")==null?nowrite:showreturns2.get("d")%></td> 
           <td><%=showreturns3.get("d")==null?nowrite:showreturns3.get("d")%></td> 
         </tr>

         <tr>
           <td class="count">發送召回人數</td>
           <td class="count"><%=showreturns1.get("e")==null?nowrite:showreturns1.get("e")%></td> 
           <td class="count"><%=showreturns2.get("e")==null?nowrite:showreturns2.get("e")%></td> 
           <td class="count"><%=showreturns3.get("e")==null?nowrite:showreturns3.get("e")%></td> 
         </tr>

         <tr>
           <td class="count">回覆率</td>
           <td class="count"><%=String.valueOf(returnrate1)+"%"%></td> 
           <td class="count"><%=String.valueOf(returnrate2)+"%"%></td> 
           <td class="count"><%=String.valueOf(returnrate3)+"%"%></td> 
         </tr>
    </table>
<%
   String stagetime = beanDB.showstagetime();
%>
<div class="refresh">更新時間:<%=stagetime%></div>


  </div><!--ui-bar-a-->
</div> <!--ui-block-b-->

<!--<script>
   patientsubmit();
</script>-->

   </div><!--ui-grid-a-->
</div>  <!--content  -->
</div> <!--page  -->

</body>
</html>

