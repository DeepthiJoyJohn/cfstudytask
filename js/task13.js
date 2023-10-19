
function validate(){
  var textbox = document.getElementById('textbox').value;  
  
  var errortext = document.getElementById('errortext');
  if (textbox == '') {
    errortext.textContent = 'Textbox cannot be empty'; 
    return false;
  }else {
    errortext.textContent = ''; 
    return true;
    
  }
}
