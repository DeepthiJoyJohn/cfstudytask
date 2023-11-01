$(document).ready(function () {
  document.getElementById("submitbtn").setAttribute("disabled", "disabled");
});
function extractStringFromWDDX(wddxData) {
    var match = wddxData.match(/<string>(.*?)<\/string>/);
    if (match && match.length > 1) {
        return match[1]; 
    } else {
        return null; 
    }
}
function checkdatabase(){
    var name=document.getElementById("firstname").value;
    var email=document.getElementById("email").value;
    var errorspan=document.getElementById("errorspan");
    errorspan.textContent="";
    
    $.ajax({
        type: "POST",
        url: '../Components/task24.cfc?method=task24&name='+name+'&email='+email,
        cache: false,
        success: function(data){          
          var stringValue = extractStringFromWDDX(data);
          if(stringValue=="1"){
            errorspan.textContent="Email Id Already Present!!";
          }else{
            errorspan.textContent="Email Not Present Click Submit to save"; 
            document.getElementById("submitbtn").removeAttribute("disabled");
          }
        }
      });
}
function insertdata(){
  var name=document.getElementById("firstname").value;
  var email=document.getElementById("email").value;
  var errorspan=document.getElementById("errorspan");
  errorspan.textContent="";
  $.ajax({
      type: "POST",
      url: '../Components/task24.cfc?method=insertdata&name='+name+'&email='+email,
      cache: false,
      success: function(data){          
        var stringValue = extractStringFromWDDX(data);
        if(stringValue=="1"){
          errorspan.textContent="Record Added Successfully!!";
        }else{
          errorspan.textContent="Error while adding"; 
        }
      }
    });
}