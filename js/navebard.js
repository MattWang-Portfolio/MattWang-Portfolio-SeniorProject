$(document).ready(function () {
    $.ajax({
        url: 'html/navebard.jsp',
        type: 'POST',
        success: function (data) {
          console.log('Submission was successful.');
          var start = data.indexOf("<navebar>");
          var end   = data.indexOf("</navebar>");
          var navebar = data.substring(start+9,end);
          console.log(navebar);
          /*把html拿過來*/
          $("navebar").html(navebar);
        },
        error:function(XMLHttpRequest,status,error){
               console.log(error)   
        }
       /* error: err => console.log(err)*/
    })
})

function logout(){
    $.ajax({
        url: 'logout.jsp',
        type: 'POST',
        success: function (data) {
          console.log(data);
         // window.location.assign(login.jsp);
         window.location.assign(window.location.href);
        },
        error:function(XMLHttpRequest,status,error){
               console.log(error)   
        }
    })
}