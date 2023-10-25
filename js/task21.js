
function validate(){
  var name = document.getElementById('name').value; 
  var email = document.getElementById('email').value; 
  var bdaywish = document.getElementById('bdaywish').value;
  
  var filename = document.getElementById('filename').value;
  var errorname = document.getElementById('errorname');
  var errorbdawish = document.getElementById('errorbdawish');
  var erroremail = document.getElementById('erroremail');
  var errorimage = document.getElementById('errorimage');
  var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
  if (name == "") {
    errorname.textContent = 'Name Cant be Empty'; 
    return false;
  }else if (reg.test(email) == false){
    erroremail.textContent = 'Invalid Email'; 
    return false;
  }else if (bdaywish == ""){
    errorbdawish.textContent = 'Cant be Empty'; 
    return false;
  }else if (filename == ""){
    errorimage.textContent = 'Please Upload Image'; 
    return false;
  }else {
    errortext.textContent = ''; 
    erroremail.textContent = ''; 
    errorbdawish.textContent = '';
    errorimage.textContent = ''; 
    return true;
  }
}
