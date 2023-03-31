//如果事情正在處理
function dealwith(ids) {
    //console.log("btn"+ids);
    const btn= "#"+"btn"+ids;
    const btn1= "btn"+ids;
    //完成按鈕
    const com= "#"+"com"+ids;
    const com1= "com"+ids;
   var sJson = JSON.stringify
   ({ 
      ids:ids,
      status: "1",
   });
  $.ajax({
   url: 'complete.jsp',
    type: 'POST',
    data: sJson,
    success: function (data) {
        console.log('Submission was successful.');
        console.log(data);
        console.log(sJson);
        window.location.assign(window.location.href); //重整*/
    },
    error:function(XMLHttpRequest,status,error){
               console.log(error)   
    }
  })
      $(document).on("click", btn, function(e) {
          document.getElementById(btn1).disabled=true;
      });
}


//如果事情完成了
function complete(ids) {
  //完成按鈕
  const com= "#"+"com"+ids
  const com1= "com"+ids
  //正在處理按鈕
  const btn= "#"+"btn"+ids
  const btn1= "btn"+ids

   var sJson = JSON.stringify
   ({ 
      ids:ids,
      status: "2",
   });
  $.ajax({
    url: 'complete.jsp',
    type: 'POST',
    data: sJson,
    success: function (data) {
        console.log('Submission was successful.');
        console.log(data);
        console.log(sJson);
        window.location.assign(window.location.href); //重整*/
    },
    error:function(XMLHttpRequest,status,error){
               console.log(error)   
    }
  })
    $(document).on("click", com, function(e) {
        document.getElementById(com1).disabled=true;
    });
}

//事情回覆
 function replymessage(ids) {
  const text = document.getElementById(ids);
  const reply = text.value;
   if (reply == null || reply == "" || reply.trim() == "" ){
     alert("請輸入回覆");
     return "請輸入回覆";
   }

  //傳至後端之資料用Json包起來        
   var sJson = JSON.stringify
   ({ 
      ids :ids,
      reply: reply,
   });

  $.ajax({
    url: 'savereply.jsp',
    type: 'POST',
    data: sJson,
    success: function (data) {
        console.log('Submission was successful.');
        console.log(data);
        console.log(sJson);
        text.value="資料送出:"+reply; 
        window.location.assign(window.location.href); //重整*/
    },
    error:function(XMLHttpRequest,status,error){
               console.log(error)   
    }
  })
}