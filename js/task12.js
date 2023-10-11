
function validate(){
  var textbox = document.getElementById('textbox').value;  
  var errortext = document.getElementById('errortext');
  if (textbox === '') {
    errortext.textContent = 'Textbox cannot be empty';  
    return false;
  }else if(textbox > 10){
    errortext.textContent = 'Textbox Entry should be less than 10';
    return false;
  }else {
    errortext.textContent = ''; 
    return true;
  }
}
