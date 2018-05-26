/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validateform()
{
    var si=document.f2.si.value;  
    var fname=document.f2.fname.value; 
    var dob=document.f2.dob.value; 
    var email=document.f2.email.value; 
    var mob=document.f2.mob.value; 
    var an=document.f2.an.value; 
    var en=document.f2.en.value; 
    var rn=document.f2.rn.value; 
    var pp=document.f2.pp.value; 
    
  
   atpos = email.indexOf("@");
   dotpos = email.lastIndexOf(".");
    
    if(si=="" || si==null)
{
     alert("StudentID can't be blank");  
  return false
}
else if( si.length!=10)
{
  alert("Enter the valid StudentID");  
  return false;  
}
if(fname=="" || fname==null)
{
     alert("First name can't be blank");  
  return false
}

if(dob=="" || dob==null)
{
     alert("DOB can't be blank");  
  return false
}

if (email == "" || atpos < 1 || ( dotpos - atpos < 2 ||email==null)) 
{
alert("Please enter valid email ID");
return false;
}

if(mob=="" || mob==null)
{
     alert("Mobile number can't be blank");  
  return false
}
if( isNaN(mob) || mob.length!= 10)
{
alert( "Please provide a valid Phone No " );

return false;
}
    if(an=="" || an==null)
{
     alert("Aadhar number can't be blank");  
  return false
}
if( isNaN(an) || an.length!= 12)
{
alert( "Please provide a valid Aadhar No " );

return false;
}
     if(en=="" || en==null)
{
     alert("Aadhar number can't be blank");  
  return false
}

 if(rn=="" || rn==null)
{
     alert("Roll number can't be blank");  
  return false
}

 if(pp=="" || pp==null)
{
     alert("Previous Percentage can't be blank");  
  return false
}
    
}

