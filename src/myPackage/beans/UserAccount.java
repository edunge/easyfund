package myPackage.beans;

import java.io.Serializable;

public class UserAccount implements Serializable {
	
	private String firstName, lastName, bankName, accountName, accountNumber, email,phone,  userName,  password, confirmPassword;
	//private int phone;
	
	public UserAccount() {
		  
	}
	
	public UserAccount(String userName, String password, String firstName, String lastName, String bankName, String accountName, String accountNumber, String email, String phone) {
		this.userName	=	userName;
		this.password	=	password;
		this.firstName	=	firstName;
		this.lastName	=	lastName;
		this.bankName	=	bankName;
		this.accountName	=	accountName;
		this.accountNumber	= accountNumber;
		this.email	=	email;
		this.phone	=	phone;
	
	}
	
	public	String getUserName()	{
		return userName;
	}
	public void	setUserName(String uname)	{
		this.userName	=	uname;
	}
	public void removeUserName()	{
		userName	=	null;
	}
	
	public	String	getPassword() {
		return password;
	}
	public void	setPassword(String pwd) {
		this.password	=	pwd;
	}
	public void removePassword()	{
		password	=	null;
	}
	
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPwd)	{
		this.confirmPassword	=	confirmPwd;
	}
	public String	getFirstName( ) {
		return firstName;
	}
	public void setFirstName(String fname ) {
		this.firstName	=	fname;
	}
	
	public String getLastName	() {
		return lastName;
	}
	public void setLastName(String lname) {
		this.lastName	=	lname;
	}
	
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bname) {
		this.bankName = bname;
	}
	
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String aname) {
		this.accountName	=	aname;
	}
	
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber (String anumber) {
		this.accountNumber = anumber;
	}
	
	public String getEmail(){
		return email;
	}
	public void setEmail(String eml) {
		this.email	=	eml;
	}
	
	public String getPhone(){
		return phone;
	}
	public void setPhone(String phoneNumber) {
		this.phone	=	phoneNumber;
	}
	
}
