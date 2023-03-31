<!--
這頁不能刪掉瀏覽器cache(不一定)
-->
<!DOCTYPE html>
<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<%@ page import="java.io.*" %>
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
  <title>green999-計畫-人員分配</title>
  <link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
  <link rel="stylesheet" href="themes/bgtest1.min.css" />
  <link rel="stylesheet" href="libs/jquery.mobile.structure-1.4.5.min.css" />
  <script src="libs/jquery-1.11.1.min.js"></script>
  <script src="libs/jquery.mobile-1.4.5.min.js"></script>

  <link rel="stylesheet" href="css/chiefpassa.css">

  <link rel="stylesheet" href="css/subject.css">
  <script src="js/subject.js"></script>

  <link rel="stylesheet" href="css/navebar.css">
  <script src="js/navebarc.js"></script>

<style>

</style>

<script>
 /*顯示人名*/
function showpeople(id,name) {
   console.log(id);
   console.log(name);
   document.getElementById(id).placeholder = name;
}
/*人名*/
function peoplesubmit() {
var peoples = document.querySelectorAll('[name="people"]'), positions=[], names=[];
    Array.prototype.forEach.call(peoples, function(el) {
        if (el.value == null || el.value == "" ){
        }else
        {
          positions.push(el.id);
          names.push(el.value)
        }
    });
    console.log(positions);
    console.log(positions.length);
    if (positions.length == 0){
       return "沒有人名";
    } 
    //return ids;
    var sJson = JSON.stringify
    ({ 
      names:names,
      positions:positions
    });
    
    $.ajax({
       url: 'savechief.jsp',
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
</div>


<div data-role='content'>
<div class="ui-grid-a">


<div class="ui-block-a">
<div class="ui-bar ui-bar-a">

<div class="people-remark">各   部   門</div>
<div class="people-remark1">負   責   人</div>
<button class="ui-btn ui-corner-all" onclick="peoplesubmit()">送出</button>

</div>
</div>

<div class="ui-block-b">
<div class="ui-bar ui-bar-a">
   <table>
        <tr>
            <td width="13%">
                <member>計劃組長:</member>
            </td>
            <td width="87%">
                <input type="text" id="d" name="people"/>
            </td>
        </tr>
   </table>



</div><!-- block  -->
</div><!--bar  -->

</div><!--grid  -->

</div>  <!--content  -->
</div> <!--page  -->

<!--載資料庫人名-->
<%   
   String name = "";
   name = beanDB.show_one_people("d");

        if(name!=null){
       %>
          <script>
            showpeople("d","<%=name%>");
          </script>
       <%  }else{
            String s ="";
            s="請輸入人名，提醒： (上班時段)醫事組組長(非上班時段)值護";

       %>
            <script>
                showpeople("d","<%=s%>");
            </script> 
       <% 
           } 

       %>
</body>
</html>