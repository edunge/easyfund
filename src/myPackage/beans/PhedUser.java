package myPackage.beans;

import java.io.Serializable;

public class PhedUser implements Serializable {

	
	private	String	firstName, lastName, amount;
	public PhedUser() {
		// TODO Auto-generated constructor stub
	}

	public PhedUser(String firstName, String lastName)	{
		this.firstName	=	firstName;
		this.lastName	=	lastName;
		//this.amount	=	amount;
	}
	
	
	public String getFirstName()	{
		return firstName;
	}
	public void setFirstName(String	fName)	{
		fName	=	this.firstName;
	}
	
	public String	getLastName()	{
		return lastName;
	}
	public void	setLastName(String lName) 	{
		lName	=	this.lastName;
	}
	
	public String getAmount()	{
		return amount;
	}
	public void setAmount(String amt)	{
		amt	=	this.amount;
	}
}
