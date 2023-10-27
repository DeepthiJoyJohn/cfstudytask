function checkdatabase(){
    var name=document.getElementById("firstname").value;
    var email=document.getElementById("email").value;
    $.ajax({
        type: "POST",
        url: '../Components/task24.cfc?method=task24&name='+firstname+'&email='+email,
        cache: false,
        success: function(data){
          alert(data);  
        },
      });
}