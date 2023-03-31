<!-- 登入畫面 -->


<!DOCTYPE html>
<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<%

%>



<!--login畫面-->
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>green999-login</title>
  <link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
  <link rel="stylesheet" href="themes/bgtest1.min.css" />
  <link rel="stylesheet" href="libs/jquery.mobile.structure-1.4.5.min.css" />
  <script src="libs/jquery-1.11.1.min.js"></script>
  <script src="libs/jquery.mobile-1.4.5.min.js"></script>

  <link rel="stylesheet" href="css/login.css"/>


<style>

</style>

<script>


function keyLogin(){ 
if (event.keyCode==13)  //enter
passwordsubmitTest(); //enter後登入
}

function passwordsubmitTest(){
 var account = document.getElementById('account').value.trim();
   var password = document.getElementById('password').value.trim();
   if(account==null || password==null || account=="" ||  password==""){
    	alert('沒有帳號或密碼');
    	return "沒有帳號或密碼";
   }
   /*登錄狀態*/
   checkloginTest(account,"王冠棋");
}

function checkloginTest(account,username){
	$.ajax({
		url: 'loginstatus.jsp',
		type: 'post',
		data: {	"username" : username,
				  	"account" : account,
		  		},
		success: function (data) {
			console.log('Submission was successful.');
		  	/*查看資料型態:data資料型態:string*/
		  	console.log(data.constructor.name);
		  	console.log(data);
		  	document.location.href="index.jsp";
		},
		error:function(XMLHttpRequest,status,error){
			console.log(error);
		}
	})	  
}




</script>

</head>

<body onkeydown="keyLogin();">

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

		  <table>
					 <tr>
					 <td width="20%">
								<div class="member">密碼:</div>
					 </td>
					 <td width="80%">
								<input type = "password" id = "password"/>
					 </td>
					 </tr>
		  </table>
    	  <button class="ui-btn ui-corner-all" onclick="passwordsubmit()">送出</button>
   
		  <div class="error_password" id="error_password">
		  錯誤的帳號或密碼
		  </div>

		  <div class="blank_account" id="blank_account">
		  帳號空白
		  </div>

		  <div class="blank_password" id="blank_password">
		  密碼空白
		  </div>

		</div>
  </div> <!--content-->
</div><!--page-->
</body>
</html>