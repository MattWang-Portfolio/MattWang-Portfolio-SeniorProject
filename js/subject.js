$(document).ready(function () {
    $.ajax({
        url: 'html/subject.html',
        type: 'POST',
        success: function (data) {
          console.log('Submission was successful.');
          var start = data.indexOf("<subject>")
          var end   = data.indexOf("</subject>")
          var subject = data.substring(start+9,end)
         // console.log(subject);
          /*把html拿過來*/
          $("subject").html(subject)
        },
        error:function(XMLHttpRequest,status,error){
               console.log(error)   
        }
       /* error: err => console.log(err)*/
    })
})