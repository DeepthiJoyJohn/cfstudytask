function uncheckRadio() {
  // Get a reference to the radio button element
  const radioBtn = document.getElementById("yes");
  
  // Set the checked state of the radio button to false
  radioBtn.checked = !radioBtn.checked;
}
 
function validate(){
  var position = document.getElementById('position').value; 
  var radioOption1 = document.getElementById("yes");
  var radioOption2 = document.getElementById("no");

  
  // var email = document.getElementById('email').value; 
  // var bdaywish = document.getElementById('bdaywish').value;
  
  // var filename = document.getElementById('filename').value;
   var errorname = document.getElementById('errorname');
   var errorradio = document.getElementById('errorradio');
  // var errorbdawish = document.getElementById('errorbdawish');
  // var erroremail = document.getElementById('erroremail');
  // var errorimage = document.getElementById('errorimage');
 // var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
  if (radioOption1.checked) {
    errorradio.textContent="";
  } else if (radioOption2.checked) {
    errorradio.textContent="";
  } else {
    errorradio.textContent="Select Yes or No"
  }
  if (position == "") {
    errorname.textContent = 'Position Cant be Empty'; 
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
