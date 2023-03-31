function logout(){
    $.ajax({
        url: 'logout.jsp',
        type: 'POST',
        success: function (data) {
          console.log(data);
          window.location.assign(window.location.href);
        },
        error:function(XMLHttpRequest,status,error){
               console.log(error)   
        }
    })
}