<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="css/sign2.css" />
  </head>
  <body style="background-color: gray">
    <form class="fix" action="enter.jsp" method="post">
      <h1>簽到頁面</h1>
      <hr size="3px" width="100%" color="#FFA500" />
      <input placeholder="請輸入員工編號" type="text" name="id" />
      <input type="submit" value="進行簽到" />
    </form>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
