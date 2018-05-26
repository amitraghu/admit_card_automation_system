/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validateform()
{
    var name=document.f1.fname.value;  
    var firstpassword=document.f1.password.value;
    var secondpassword=document.f1.password2.value; 
    var id=document.f1.id.value;
    var alphaExp = /^[a-zA-Z]+$/;
    var eno = document.f1.eno.value;
    var ano=document.f1.ano.value;
   atpos = email.indexOf("@");
   dotpos = email.lastIndexOf(".");
   var ans=document.f1.answer.value;
     var ques=document.f1.question.value;
    
  if (name===null || name==="")
{  
  alert("Name can't be blank");  
  return false;  
}

if(eno=="" || eno==null)
{
     alert("Enrollment no. can't be blank");  
  return false
}

if(ano=="" || ano==null)
{
     alert("Aadahar number can't be blank");  
  return false
}
if( isNaN(ano) || ano.length!= 12)
{
alert( "Please provide a valid Aadhar No " );

return false;
}

if(id=="" || id==null)
{
     alert("StudentID can't be blank");  
  return false
}
else if( id.length!=10)
{
  alert("Enter the valid StudentID");  
  return false;  
}

if(ques=="--Select--"){
		alert("Please  select the Security question");
		
		return false;}
            
if(ans == "" || ans=="null"){
		alert("Please  answer the Security question");
		
		return false;}


if(firstpassword==null || firstpassword=="")
{
    alert("Password can not be null");  
     return false;   
}

else if( firstpassword.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
 }
 
 else if(!(firstpassword==secondpassword) || secondpassword==null ){  
alert("confirm password must be same!");  
return false;  
}  


}