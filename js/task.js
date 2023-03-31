function task() {
/*取得還沒完成的checkbox*/
var checkboxes = document.querySelectorAll('[name="chetask"]:checked'), ids = [];
    Array.prototype.forEach.call(checkboxes, function(el) {
        ids.push(el.id);
    });
    console.log(ids);
    console.log(ids.length);
    if (ids.length == 0){
       return "沒有勾選的事項";
    }
    //return ids;
    var sJson = JSON.stringify
    ({ 
      ids:ids,
    });
    
    $.ajax({
       url: 'savetask.jsp',
       type: 'POST',
       data: sJson,
       success: function (data) {
        console.log('Submission was successful.');
        //console.log(data);
        console.log(sJson);
        window.location.assign(window.location.href); //重整
       },
       error:function(XMLHttpRequest,status,error){
               console.log(error)   
       }
    })
}


//按鈕
function check(id) {
   var mission_check = document.getElementById(id).getAttribute("checked"); 
   var mission = document.getElementById(id);
   /*listview_mouse(id);*/
   if(mission_check == null){
      mission.setAttribute("checked", "checked");
      mission.removeAttribute("data-cacheval","true");
   }
   else{
      mission.removeAttribute("checked");
      mission.removeAttribute("data-cacheval");
   }
}

//按鈕顏色
function listview_mouse(id) {
   const li= "li"+id;
   var listview_check = document.getElementById(li).getAttribute("style"); 
   var listview = document.getElementById(li);

   if(listview_check == null){
      listview.setAttribute("style", "background-color: #28ff28 !important;");
   }
   else{
      listview.removeAttribute("style");
   }
}

