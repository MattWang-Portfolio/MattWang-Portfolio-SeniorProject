<!DOCTYPE html>
<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<%@ page import="java.util.*" %>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>green999-人員簽到</title>
  <link rel="stylesheet" href="themes/bgtest1.min.css" />
  <link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
  <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile.structure-1.4.5.min.css" />
  <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js">
  </script>

  <link rel="stylesheet" href="css/login.css"/>


<style>

</style>

<script>


function keyLogin(){ 

} 

function passwordsubmit(){
 
}

function checklogin(islogin,name){
 
}


</script>

</head>
<body>

<div data-role="page" data-theme="a">
  <div data-role="header">
  <center>
      <subject>大量傷患緊急應變處理動態平台</subject>
  </center>
  </div>


  <div data-role="content">
   
  <div class="login">
    <table>
        <tr>
            <td width="20%">
                <div class="member">帳號:</div>
            </td>
            <td width="80%">
                <input type = "text" id = "account"/>
            </td>
        </tr>
    </table>

   <button class="ui-btn ui-corner-all" onclick="passwordsubmit()">送出</button>
   
   <div class="error_password" id="error_password">
      錯誤的帳號
   </div>

   <div class="blank_account" id="blank_account">
      帳號空白
   </div>

   </div>

<!--
<script  type="text/javascript" src="http://10.19.10.46:9080/cgh/servlet/IMMISWebService?divisionNo=001&functionName=GetUserInfo&user_id=316982&user_password=MTIzNDU2"></script>
<script>
  function receiveData (response) {
    console.log(response);
  }
</script>-->


  </div> <!--content-->
</div><!--page-->
</body>
</html>