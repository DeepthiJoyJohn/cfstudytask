
function validate(){
  var captcha = document.getElementById('captcha').value; 
  var email = document.getElementById('email').value; 
  var errorcaptcha = document.getElementById('errorcaptcha');
  var erroremail = document.getElementById('erroremail');
  var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
  if (captcha == "") {
    errorcaptcha.textContent = 'Captcha Cant be Empty'; 
    return false;
  }else if (reg.test(email) == false){
    erroremail.textContent = 'Invalid Email'; 
      return false;
  }else {
    errortext.textContent = ''; 
    erroremail.textContent = ''; 
    return true;
  }
}
