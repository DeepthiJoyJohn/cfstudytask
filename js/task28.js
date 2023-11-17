
function removepage(pageid) {

    $.ajax({
        type: "POST",
        url: '../Components/task28.cfc?method=remove',
        data:{pageid:pageid},
        cache: false,
        success: function(data){          
          alert("Item Removed");
          location.reload();
        }
      });
}
function addpage() {
    var pagename=document.getElementById("pagename").value;
    var pagedesc=document.getElementById("pagedesc").value;
    var pageid=document.getElementById("pageid").value;
    
    if(pageid=="")
    pageid=0; 
     
    if(pagename=="" || pagedesc==""){
        alert("please fill page name and description!!");
        return false;
    }
    $.ajax({
        type: "POST",
        url: '../Components/task28.cfc?method=addpage',
        data: {pagename : pagename,pagedesc : pagedesc,pageid:pageid},
        cache: false,
        success: function(data){          
          alert("Item Added Successfully");
          location.reload();
        }
      });
}
function extractStringFromWDDX(wddxData) {
  var match = wddxData.match(/<string>(.*?)<\/string>/);
  if (match && match.length > 1) {
      return match[1]; 
  } else {
      return null; 
  }
}

function editpage(pageid) {
    $.ajax({
        type: "POST",
        url: '../Components/task28.cfc?method=getpage',
        data: {pageid : pageid},
        cache: false,
        success: function(data){          
         var pagename=extractStringFromWDDX(data);
         const myArray = pagename.split("$");
         document.getElementById("pagename").value=myArray[0];
         document.getElementById("pagedesc").value=myArray[1];
         document.getElementById("pageid").value=myArray[2];
          
        }
      });
}
function cancelpage(){
   location.reload();
}
function displaypagedetails(pageid){
  
  document.getElementById(pageid).style.display="block";
}
function logout(){
  window.location.href = "index.cfm";
}


