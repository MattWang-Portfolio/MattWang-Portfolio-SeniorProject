function depmes(department,transfer_depno) {
   const nameElement = document.getElementById("inputMessage");
   const message = nameElement.value;
   if (message == null || message == "" || message.trim()=="" ){
     alert("請輸入message");
     return "請輸入message";
   } 
   var sJson = JSON.stringify
   ({ 
      message: message,
      department: department,
      transfer_depno: transfer_depno
   });
  $.ajax({
    url: 'savemes.jsp',
    type: 'POST',
    data: sJson,
    success: function (data) {
        console.log('Submission was successful.');
        console.log(data);
        nameElement.value = null;
        window.location.assign(window.location.href); //重整
    },
    error:function(XMLHttpRequest,status,error){
               console.log(error)   
    }
  })
}

function changetext() {
   $("#inputMessage").on("input", function(e) {
      var remain_text = 0;
      var input = $(this);
      var val = input.val();
      console.log(val);
      console.log(val.length);
      console.log("剩餘文字"+(120-val.length).toString());
   /*如果是中文字，要算兩個字*/
   for(var i = 0; i < val.length; i++) {
       if(val.charCodeAt(i) < 0x4E00 || val.charCodeAt(i) > 0x9FA5)
          remain_text+=1; 
        else
          remain_text+=2; 
    }
      document.getElementById("remain-text").innerHTML = (120-remain_text).toString();

   });
}