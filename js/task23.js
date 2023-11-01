function clearRadio(){
  document.getElementById("yes").checked= false;
  document.getElementById("no").checked= false;

}
function validate(){
  
  var position = document.getElementById('position').value;   
  var radioOption1 = document.getElementById("yes");
  var radioOption2 = document.getElementById("no");
  var startdate = document.getElementById('startdate');
  var firstname = document.getElementById('firstname');
  var lastname = document.getElementById('lastname');
  var email = document.getElementById('email').value; 
  var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
  var phone1 = document.getElementById('phone1');
  var phone2 = document.getElementById('phone2');
  var phone3 = document.getElementById('phone3');
  
  var errorname = document.getElementById('errorname');
  var errorradio = document.getElementById('errorradio');
  var errorstartdate = document.getElementById('errorstartdate');
  var errorfirstname = document.getElementById('errorfirstname');
  var erroremail = document.getElementById('erroremail');
  var errorphone = document.getElementById('errorphone');
  errorname.textContent="";
  errorradio.textContent="";
  errorstartdate.textContent="";
  errorfirstname.textContent="";
  erroremail.textContent=""; 
  errorphone.textContent=""; 
 
  var flag=0;
  if (position == "") {
    errorname.textContent = "Position Cant be Empty"; 
    flag=1;
  }
  if((radioOption1.checked==false) && (radioOption2.checked==false)){
    errorradio.textContent = 'Select yes or no';   
    flag=1; 
  }
  if((radioOption1.checked==true) && (radioOption2.checked==true)){
    errorradio.textContent = 'Cant Select Both ';   
    flag=1;  
  }
  if(startdate.value == ""){
    errorstartdate.textContent = 'Cant be null';   
    flag=1;  
  }
  if(firstname.value == "" || lastname.value == ""){
    errorfirstname.textContent = 'First and Last Name Cant be null';   
    flag=1;  
  }
  if(email.value == ""){
    erroremail.textContent = 'Email Cant be null';   
    flag=1;  
  }
  if (reg.test(email) == false){
      erroremail.textContent = 'Invalid Email'; 
      flag=1;  
  }
  if (phone1.value=="" || phone2.value=="" || phone3.value==""){
    errorphone.textContent = 'Please fill Phone no'; 
    flag=1;  
  }
  if ((phone1.value.length+phone2.value.length+phone3.value.length)<10){
    errorphone.textContent = 'Phone No should be 10 digits please check'; 
    flag=1;  
  } 
  if (isNaN(phone1.value) || isNaN(phone2.value) || isNaN(phone3.value)){
    errorphone.textContent = 'Phone No should be Number'; 
    flag=1;  
  } 
  if(flag==1){
    return false;
  } 
}
 