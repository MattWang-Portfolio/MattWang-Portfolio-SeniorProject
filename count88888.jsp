<!DOCTYPE html>
<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<%
   // Set refresh, autoload time as 30 seconds
   response.setIntHeader("Refresh", 30);
%>
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
  <title>green999-病人動態</title>
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
  <script src="js/navebarp.js"></script>

  <link rel="stylesheet" href="css/patientstatus.css">
  <!--<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>-->

<script>
var patientarray;

/*把人數放到html*/
function patientGet(){
var patients = document.querySelectorAll(".number-style");
console.log(patients);
    Array.prototype.forEach.call(patients, function(el) {
         document.getElementById(el.id).innerHTML= patientarray.data_list[el.id].CNT+"人";
          /*ids.push(el.id);*/
         console.log("el.id"+el.id);
        // console.log("patientGet()");
    });
   // console.log("patientGet()");

  /*if (patientarray === undefined) {
     return '(等待系統資料)';
  }
  else{
     console.log(patientarray.data_list[id].CNT);
     return patientarray.data_list[id].CNT;
  }*/
  // return patientarray.constructor.name;
}

/*獲得病人人數*/
function patientsubmit(){
    $.ajax({
        url: 'patient.jsp',
        type: 'GET',
       success: function (data) {
        console.log('Submission was successful.');
        /*data資料型態:string*/
        //console.log(data.constructor.name);
        //console.log(data);

        var start = data.indexOf("<information>");
        var end   = data.indexOf("</information>");
        var patient = data.substring(start+13,end);
        /*取得病人資訊*/
        console.log(patient);
        /*string轉json*/
        patientarray = JSON.parse(patient);
        console.log("patientarray"+patientarray);
        patientGet();
       },
       error:function(XMLHttpRequest,status,error){
              console.log(error);
              //console.log(url);
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
   <div class='ui-grid-a'>

    <div class='ui-block-a' style="width:2%; visibility:hidden !important;">
      <div class="ui-bar ui-bar-a">
    </div>
</div>

<div class='ui-block-b' style="width:98%;">
    <div class="ui-bar ui-bar-a">
      <div class="item">病人動態
      </div>
      <div class="patient-all">
        <div class="patient">
         
        <div class="severe patient-style">重度傷害</div>
        <div class="severe-number number-style" id='7'>人</div>

        <div class="moderate patient-style">中度傷害</div>
        <div class="moderate-number number-style" id='8'>人</div>

        <div class="mild patient-style">輕度傷害</div>
        <div class="mild-number number-style" id='9'>人</div>

        <div class="death patient-style">死&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;亡</div><div class="death-number number-style" id='6'>人</div>
    
        <div class="patient-style sum">總&nbsp;&nbsp;人&nbsp;&nbsp;數</div>
        <div class="number-style sum-number" id='10'>人</div>

        <div class="severe patient-style"  style="visibility:hidden">隱藏</div>
        <div class="severe-number number-style1"  style="visibility:hidden">隱藏</div>
        </div>

        <div class="patient">        
        <div class="patient-style watch">留&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;觀</div><div class="number-style watch-number" id='1'>人</div>

        <div class="patient-style watch">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;術</div><div class="number-style watch-number" id='4'>人</div>

        <div class="patient-style watch">一般病房</div><div class="number-style watch-number" id='2'>人</div>

        <div class="patient-style watch">加護病房</div><div class="number-style watch-number" id='5'>人</div>

        <div class="patient-style watch">轉&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;院</div><div class="number-style watch-number" id='3'>人</div>

        <div class="patient-style watch">離&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;院</div><div class="number-style watch-number" id='0'>人</div>

        </div>
</div>
 

  </div><!--ui-bar-a-->
</div> <!--ui-block-b-->

<script>
   patientsubmit();
</script>

   </div><!--ui-grid-a-->
</div>  <!--content  -->
</div> <!--page  -->

</body>
</html>

