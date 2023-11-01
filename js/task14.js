
function validate(){
  var imagename = document.getElementById('imagename').value; 
  var errortext1 = document.getElementById('errortext1');
  var errortext2 = document.getElementById('errortext2');
  var imagedescription = document.getElementById('imagedescription').value;  
  var errortext2 = document.getElementById('errortext2');
  var errortext3 = document.getElementById('errortext3');
  var filename =document.getElementById('filename');
  var fileSize = (filename.files[0].size / 1024 / 1024).toFixed(2);
  var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
  if (imagename == '') {
    errortext1.textContent = 'Image Name cannot be empty'; 
    return false;
  }else if(imagedescription.trim().length == 0 ){    
    errortext2.textContent = 'Image Description cant be empty';
    return false;
  }else if(!allowedExtensions.exec(filename.value)){
    errortext3.textContent = 'Invalid File Type';
    return false;
  }else if(fileSize>1){
    errortext3.textContent = 'File Size Must be less than 1 MB';
    return false;    
  }else {
    errortext1.textContent = ''; 
    errortext2.textContent = ''; 
    errortext3.textContent = ''; 
    return true;
  }
}
