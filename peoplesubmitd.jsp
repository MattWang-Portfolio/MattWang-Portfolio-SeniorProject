<!DOCTYPE html>
<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<%@ page import="java.util.*" %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page"/>
<%
  if(session.getAttribute("username") != null){
    
  }
  else{
      response.sendRedirect("login.jsp");
  }
%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>green999-後勤-人力召回</title>
  <link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
  <link rel="stylesheet" href="themes/bgtest1.min.css" />
  <link rel="stylesheet" href="libs/jquery.mobile.structure-1.4.5.min.css" />
  <script src="libs/jquery-1.11.1.min.js"></script>
  <script src="libs/jquery.mobile-1.4.5.min.js"></script>
  

  <link rel="stylesheet" href="css/subject.css">
  <script src="js/subject.js"></script>

  <link rel="stylesheet" href="css/navebar.css">
  <script src="js/navebard.js"></script>

  <link rel="stylesheet" href="css/peoplesubmitd.css">

<script>
/*階段一*/
function one_stage() {
var peoples = document.querySelectorAll('[name="one-stage"]'), phases=[], numbers=[];
    Array.prototype.forEach.call(peoples, function(el) {
        if (el.value == null || el.value == "" ){
        }else
        {
          phases.push(el.id);
          numbers.push(el.value)
        }
    });

    console.log(phases);
    console.log(numbers);
    console.log(phases.length);

    if (phases.length == 0){
       return "沒有數字";
    } 

    var sJson = JSON.stringify
    ({ 
       phases:phases,
       numbers: numbers,
    });
    //return ids;
    $.ajax({
       url: 'savestage.jsp',
       type: 'POST',
       data: {
               "sJson" : sJson,
               "stage" : 'a'
        },

       success: function (data) {
        console.log('Submission was successful.');
        console.log(data);
        window.location.assign(window.location.href); //重整
       },
       error:function(XMLHttpRequest,status,error){
               console.log(error)   
       }
    })
}
/*階段二*/
function two_stage() {
var peoples = document.querySelectorAll('[name="two-stage"]'), phases=[], numbers=[];
    Array.prototype.forEach.call(peoples, function(el) {
        if (el.value == null || el.value == "" ){
        }else
        {
          phases.push(el.id);
          numbers.push(el.value)
        }
    });

    console.log(phases);
    console.log(numbers);
    console.log(phases.length);

    if (phases.length == 0){
       return "沒有數字";
    } 

    var sJson = JSON.stringify
    ({ 
       phases:phases,
       numbers: numbers,
    });
    //return ids;
    $.ajax({
       url: 'savestage.jsp',
       type: 'POST',
       data: {
               "sJson" : sJson,
               "stage" : 'b'
        },

       success: function (data) {
        console.log('Submission was successful.');
        console.log(data);
       window.location.assign(window.location.href); //重整
       },
       error:function(XMLHttpRequest,status,error){
               console.log(error)   
       }
    })
}
/*階段三*/
function three_stage() {
var peoples = document.querySelectorAll('[name="three-stage"]'), phases=[], numbers=[];
    Array.prototype.forEach.call(peoples, function(el) {
        if (el.value == null || el.value == "" ){
        }else
        {
          phases.push(el.id);
          numbers.push(el.value)
        }
    });

    console.log(phases);
    console.log(numbers);
    console.log(phases.length);

    if (phases.length == 0){
       return "沒有數字";
    } 

    var sJson = JSON.stringify
    ({ 
       phases:phases,
       numbers: numbers,
    });
    //return ids;
    $.ajax({
       url: 'savestage.jsp',
       type: 'POST',
       data: {
               "sJson" : sJson,
               "stage" : 'c'
        },

       success: function (data) {
        console.log('Submission was successful.');
        console.log(data);
        window.location.assign(window.location.href); //重整
       },
       error:function(XMLHttpRequest,status,error){
               console.log(error)   
       }
    })
}
/*人力召回*/
function peoplesubmit() {
var peoples = document.querySelectorAll('[name="people"]'), positions=[], numbers=[];
    Array.prototype.forEach.call(peoples, function(el) {
        if (el.value == null || el.value == "" ){
        }else
        {
          positions.push(el.id);
          numbers.push(el.value)
        }
    });

    console.log(positions);
    console.log(positions.length);
    if (positions.length == 0){
       return "沒有數字";
    } 
    //return ids;
    var sJson = JSON.stringify
    ({ 
      numbers:numbers,
      positions:positions
    });
    
    $.ajax({
       url: 'savepeople.jsp',
       type: 'POST',
       data: sJson,
       success: function (data) {
        console.log('Submission was successful.');
        console.log(data);
        console.log(sJson);
        window.location.assign(window.location.href); //重整
       },
       error:function(XMLHttpRequest,status,error){
               console.log(error)   
       }
    })
}
</script>



</head>


<body>
  <div data-role="page" id="page">
   <div data-role="header">

<subject>
</subject>
<navebar>
</navebar> 
<style>
   .ui-bar{
    background-color:  #FFFFFF      !important;
   }
   .ui-page{
    background-color:  #FFFFFF       !important;
   }
</style>
</div>


<div data-role='content'>
   <div class='ui-grid-a'>

    <!-- <div class='ui-block-a' style="width:2%; visibility:hidden !important;">
      <div class="ui-bar ui-bar-a">
    </div> -->
</div>

<div class='ui-block-b' style="width:98%;">
    <div class="ui-bar ui-bar-a">
      <div class="item">簡訊發送回覆狀況</div>

<%
   String nowrite="0";
   HashMap<String,Integer> showreturns1 = new HashMap<String,Integer>();
   HashMap<String,Integer> showreturns2 = new HashMap<String,Integer>();
   HashMap<String,Integer> showreturns3 = new HashMap<String,Integer>();
   showreturns1  = beanDB.showreturn("a");
   showreturns2  = beanDB.showreturn("b");
   showreturns3 = beanDB.showreturn("c");
%>

      <table class='myFormat'>
         <tr>
           <th></th>
           <th>第一階段</th>
           <th>第二階段</th> 
           <th>第三階段</th>
         </tr>

         <tr>
           <td>1 (30分內到院)</td>
           <td><input type="text" placeholder='<%=showreturns1.get("a")==null?nowrite:showreturns1.get("a")%>' name="one-stage" id='a'/></td>
           <td><input type="text" placeholder='<%=showreturns2.get("a")==null?nowrite:showreturns2.get("a")%>' name="two-stage" id='a'/></td>
           <td><input type="text" placeholder='<%=showreturns3.get("a")==null?nowrite:showreturns3.get("a")%>' name="three-stage" id='a'/></td>
        </tr>

         <tr>
            <td>2 (60分內到院)</td>
           <td><input type="text" placeholder='<%=showreturns1.get("b")==null?nowrite:showreturns1.get("b")%>' name="one-stage" id='b'/></td>
           <td><input type="text" placeholder='<%=showreturns2.get("b")==null?nowrite:showreturns2.get("b")%>' name="two-stage" id='b'/></td>
           <td><input type="text" placeholder='<%=showreturns3.get("b")==null?nowrite:showreturns3.get("b")%>' name="three-stage" id='b'/></td>
         </tr>

         <tr>
            <td>3 (無法到場)</td>
           <td><input type="text" placeholder='<%=showreturns1.get("c")==null?nowrite:showreturns1.get("c")%>' name="one-stage" id='c'/></td>
           <td><input type="text" placeholder='<%=showreturns2.get("c")==null?nowrite:showreturns2.get("c")%>' name="two-stage" id='c'/></td>
           <td><input type="text" placeholder='<%=showreturns3.get("c")==null?nowrite:showreturns3.get("c")%>' name="three-stage" id='c'/></td>
         </tr>

         <tr>
            <td>未回覆</td>
           <td><input type="text" placeholder='<%=showreturns1.get("d")==null?nowrite:showreturns1.get("d")%>' name="one-stage" id='d'/></td>
           <td><input type="text" placeholder='<%=showreturns2.get("d")==null?nowrite:showreturns2.get("d")%>' name="two-stage" id='d'/></td>
           <td><input type="text" placeholder='<%=showreturns3.get("d")==null?nowrite:showreturns3.get("d")%>' name="three-stage" id='d'/></td>
         </tr>

         <tr>
            <td>發送召回人數</td>
           <td><input type="text" placeholder='<%=showreturns1.get("e")==null?nowrite:showreturns1.get("e")%>' name="one-stage" id='e'/></td>
           <td><input type="text" placeholder='<%=showreturns2.get("e")==null?nowrite:showreturns2.get("e")%>' name="two-stage" id='e'/></td>
           <td><input type="text" placeholder='<%=showreturns3.get("e")==null?nowrite:showreturns3.get("e")%>' name="three-stage" id='e'/></td>
         </tr>

         <tr>
            <td></td>
            <td><button class="ui-item  ui-btn ui-people" onclick="one_stage()">送出</button></td> 
            <td><button class="ui-item  ui-btn ui-people" onclick="two_stage()">送出</button></td>
            <td><button class="ui-item  ui-btn ui-people" onclick="three_stage()">送出</button></td>
         </tr>
      </table>

<div class="item">人力召回</div>
  <table class='myFormat'>
         <tr>
           <th>醫師</th>
           <th>護理人員</th> 
           <th>醫技人員</th>
           <th>行政人員</th>
           <th>其他</th> 
         </tr>
<%
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
         <tr>
           <td><input type="text" placeholder='<%=showstaffs.get("a")==null?nowrite:showstaffs.get("a")%>' name="people" id='a'/></td>
           <td><input type="text" placeholder='<%=showstaffs.get("b")==null?nowrite:showstaffs.get("b")%>' name="people" id='b'/></td> 
           <td><input type="text" placeholder='<%=showstaffs.get("c")==null?nowrite:showstaffs.get("c")%>' name="people" id='c'/></td>
           <td><input type="text" placeholder='<%=showstaffs.get("d")==null?nowrite:showstaffs.get("d")%>' name="people" id='d'/></td>
           <td><input type="text" placeholder='<%=showstaffs.get("e")==null?nowrite:showstaffs.get("e")%>' name="people" id='e'/></td> 
         </tr>

         <tr>
            <td colspan="5"><button class="ui-item  ui-btn ui-people" onclick="peoplesubmit()" >送出</button></td>
         </tr>
  </table>



    </div><!--ui-bar-a-->
</div> <!--ui-block-b-->

   </div><!--ui-grid-a-->
</div>  <!--content  -->
</div> <!--page  -->

</body>
</html>

