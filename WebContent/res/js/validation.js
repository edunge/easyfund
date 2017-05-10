/**
 * 
 */
function validateForm() {
	var firstname	=	document.regForm.firstName;
	var lastname	=	document.regForm.lastName;
	var bankname	=	document.regForm.bankName;
	var accountname	=	document.regForm.accountName;
	var accountnumber	=	document.regForm.accountNumber;
	var	eml	=	document.regForm.email;
	var ph	=	document.regForm.phone;
	var username	=	document.regForm.userName;
	var pwd	=	document.regForm.password;
	var conpwd	=	document.regForm.confirmPassword;
	
	if	(firstname.value == " ")		{
		alert("Please enter firstname");
		firstname.focus();
		return false;
	}
	
	if (lastname.value == " ")	{
		alert("Please enter your lastname");
		lastname.focus();
		return false;
	}
	
	if (bankname.value == " ") {
		alert("Please enter your bank");
		bankname.focus();
		return false;
	}
	
	if (accountname.value == " ") {
		alert("Please enter your account name");
		accountname.focus();
		return false;
	}
	
	if (accountnumber.value == " ")	{
		alert("Please enter your account number");
		accountnumber.focus();
		return false;
	}
	
	if (eml.value == " ")	{
		alert("Please enter your email address");
		eml.focus();
		return false;
	}
	if (eml.value.indexOf("@", 0) < 0) {
		alert("Please enter a valid email address");
		eml.focus();
		return false;
	}
	
	if (ph.value == " ")	{
		alert("Please enter your mobile number");
		ph.focus();
		return false;
	}
	
	if (username.value	==	"")	{
		alert("Please create a username");
		username.focus();
		return false;
	}
	
	if (pwd.value == " ")	{
		alert("Password field must not blank");
		pwd.focus();
		return false;
	}
	
	if	(pwd == conpwd)	{
		return true;
	}else{
		alert("Password do not match");
		conpwd.focus();
		return false;
	}
}