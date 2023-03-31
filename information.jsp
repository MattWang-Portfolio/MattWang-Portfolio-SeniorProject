<!DOCTYPE html>
<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<%@ page import="java.util.*" %>
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
  <title>green999-其他資訊</title>
  <link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
  <link rel="stylesheet" href="themes/bgtest1.min.css" />
  <link rel="stylesheet" href="libs/jquery.mobile.structure-1.4.5.min.css" />
  <script src="libs/jquery-1.11.1.min.js"></script>
  <script src="libs/jquery.mobile-1.4.5.min.js"></script>


  <link rel="stylesheet" href="css/subject.css">
  <script src="js/subject.js"></script>

  <link rel="stylesheet" href="css/navebar.css">
  <script src="js/navebarno.js"></script>

  <link rel="stylesheet" href="css/peoplestatus.css">

  <script src="js/logout.js"></script>
<style>
.ui-page{
   font-family:Microsoft JhengHei !important;
}
.ui-bar{
   text-align: left;
}


/*標題按鈕*/
.information-header {
     display:inline-block;
     width: 250px !important;;
     min-height: 14px;
     margin:0px;
     margin-bottom:8px !important;
     padding: 22px !important;
     font-size: 20px;
     background-color:#3C3C3C !important;
     border:1px solid #41ae44;
     font-family:Arial;
      /*max-width: 100px !important;*/
     cursor: not-allowed;
     pointer-events: none;
}



/*資料按鈕*/
.information {
     display:inline-block;
     width: 250px !important;;
     min-height: 14px;
     line-height: 8px;
     margin:0px;
     margin-bottom:8px !important;
     padding: 22px !important;
     font-size: 20px;
     box-shadow:inset 0px 1px 0px 0px #6ebe45;
     background:linear-gradient(to bottom, #6ebe45 5%, #00a94f 100%);
     border:1px solid #41ae44;
     font-family:Arial;
      /*max-width: 100px !important;*/
}
.information:hover {
   background:linear-gradient(to bottom, #00a94f 5%, #6ebe45 100%);
   background-color:#00a94f;
   color:#FFF400 !important;
}
.information:active {
  position:relative;
  top:1px;
}

/*比較大的按鈕，因為字比較多*/
.information1 {
    line-height: 5px !important;
    font-size: 15px;
}


/*備註：手術室空房請聯繫7607(文字用按鈕表示)*/
.remarks1{
  color:red !important;
  text-align: left !important;
  display:inline-block;
  background-color:#FFFFFF !important;;
  line-height: 0px !important;;
  cursor: not-allowed;
  pointer-events: none;
  width: 250px !important;;
  min-height: 14px;
  margin:0px;
  margin-bottom:8px !important;
  padding: 22px !important;
  font-size: 17px;
  border: 0px !important;
}
</style>

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

<!--隱藏占空間寫法visibility:hidden -->
<div class='ui-block-a' style="width:2%; visibility:hidden !important;">
    <div class="ui-bar ui-bar-a">
    </div>
</div>

  <div class='ui-block-b' style="width:98%;">
    <div class="ui-bar ui-bar-a">
      <a class="ui-btn information-header ui-corner-all">作業規範類</a>
      <a class="ui-btn information-header ui-corner-all">醫療處置類</a>
      <a class="ui-btn information-header ui-corner-all">系統類</a>
    <br>


               <a class="ui-btn information ui-corner-all" onclick="window.open('pdf/a.pdf', '', config='height=700,width=1000');">緊急應變流程</a>
               <a class="ui-btn information ui-corner-all" onclick="window.open('pdf/e.pdf', '', config='height=700,width=1000');">中毒病人處理建議</a>
               <a class="ui-btn information ui-corner-all" onclick="window.open('pdf/k.pdf', '', config='height=700,width=1000');">急診監視器連結</a>
               <br>


               <a class="ui-btn information ui-corner-all" onclick="window.open('pdf/b.pdf', '', config='height=700,width=1000');">職務替代表</a>
               <a class="ui-btn information ui-corner-all" onclick="window.open('pdf/g.pdf', '', config='height=700,width=1000');">災難事件處置流程建議</a>
               <a class="ui-btn information ui-corner-all" onclick="window.open('https://ems.mohw.gov.tw/', '', config='height=700,width=1000');">EOC系統連結</a>
               <br>

              
               <a class="ui-btn information ui-corner-all" onclick="window.open('pdf/c.pdf', '', config='height=700,width=1000');">人力支援表</a>
               <a class="ui-btn ui-corner-all information information1" onclick="window.open('https://ghs.osha.gov.tw/CHT/masterpage/index_CHT.aspx', '', config='height=700,width=1000');">化學品相關資訊查詢<br><br><br>帳號ghs67794/密碼f4KXPL71</a>
               <a class="ui-btn information ui-corner-all" onclick="window.open('http://biz.every8d.com/cgh/member/display_member.aspx?module_team=1', '', config='height=700,width=1000');">簡訊平台連結</a>
               <br>




               <a class="ui-btn information ui-corner-all" onclick="window.open('pdf/d.pdf', '', config='height=700,width=1000');">外部機構窗口</a>
               <a class="ui-btn information ui-corner-all" onclick="window.open('showlaboratory.jsp', '', config='height=300,width=500');">血品庫存即時動態</a>
               <a class="ui-btn information ui-corner-all" style="visibility:hidden">隱藏按鈕</a>
               <br>



               <a class="ui-btn information ui-corner-all" onclick="window.open('pdf/j.pdf', '', config='height=700,width=1000');">戰備衛材基本量</a>
               <a class="ui-btn information ui-corner-all"  onclick="window.open('pdf/f.pdf', '', config='height=700,width=1000');">HIS急診系統操作步驟</a>
               <a class="ui-btn information ui-corner-all" style="visibility:hidden">隱藏按鈕</a>
               <br>

               <a class="ui-btn information ui-corner-all" onclick="window.open('pdf/l.pdf', '', config='height=700,width=1000');">緊急召回機制</a>
               <a class="ui-btn information ui-corner-all" onclick="window.open('http://10.15.2.168/html/servlet/HttpDispatcher/EmptyBed/doQueryEmptyBed?divisionNo=004&stationNo=&SYSTEMFROM=GREEN999&FUNCTIONNAME=EMPTYBED&USERNO=316982', '', config='height=700,width=1000');" >空床表</a>
               <a class="ui-btn information ui-corner-all" style="visibility:hidden">隱藏按鈕</a>
               <br>

               <a class="ui-btn information ui-corner-all" style="visibility:hidden">隱藏按鈕</a>
               <a class="ui-btn ui-corner-all remarks1">備註：手術室空房請聯繫61778</a>
                <a class="ui-btn information ui-corner-all" style="visibility:hidden">隱藏按鈕</a>
               <br>

  </div>
</div>



</div>  <!--content  -->
</div> <!--page  -->

</body>
</html>

