
function validate(){
  var textbox = document.getElementById('textbox').value;  
  
  var errortext = document.getElementById('errortext');
  if (textbox == '' || textbox == 0) {
    errortext.textContent = 'Textbox cannot be empty or 0'; 
    return false;
  }else if(isNaN(textbox)){
    errortext.textContent = 'Textbox Entry should be Number';
    return false;
  }else {
    errortext.textContent = ''; 
    return true;
    
  }
}
