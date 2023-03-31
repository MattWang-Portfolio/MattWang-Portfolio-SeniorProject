<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="css/reply1.css" />
  </head>
  <body>
   <form action="" class="fix">
        <h1>簡訊回覆</h1>
        <p><input type="radio" name="30minute" value="a"> 30分鐘內到院</p>
        <p><input type="radio" name="60minute" value="b"> 60分鐘內到院</p>
        <p><input type="radio" name="cannot" value="c"> 今天無法抵達</p>
        <input class="popuptest" type="submit" value="進行回覆">
        <p class='show'></p>

        <script>
            var button = document.querySelector('.popuptest');
            var showtxt = document.querySelector('.show');

            function popup2(e) {
                if (confirm('確定回傳結果嗎?') == true) {
                    alert('回傳成功');
                } else {
                    alert('取消回傳');
                }

            };
            button.addEventListener('click', popup2);
        </script>

    </form>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
