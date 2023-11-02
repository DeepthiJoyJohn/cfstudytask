function extractStringFromWDDX(wddxData) {
    var match = wddxData.match(/<string>(.*?)<\/string>/);
    if (match && match.length > 1) {
        return match[1]; 
    } else {
        return null; 
    }
}

function validate(){    
    var filename =document.getElementById('fileUpload');
    var errorspan =document.getElementById('errorspan');
    var allowedExtensions = /(\.txt)$/i;
    if(!allowedExtensions.exec(filename.value)){
        errorspan.textContent = 'Invalid File Type';
        filename.value="";
        event.preventDefault();
    }else {
        errorspan.textContent = '';       
         return true;
    }
  }
  