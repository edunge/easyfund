package myPackage.beans;

import java.io.Serializable;
import java.sql.Blob;

public class MatchTable implements Serializable {

	
	private	String	payer, payerPhone, payerEmail, recipientAccName, recipientBankName, recipientAccNum,  recipientPhone;
	private byte []  pop;
	public MatchTable() {
		// TODO Auto-generated constructor stub
	}
	
	
	public	MatchTable(String payer, String payerPhone, String payerEmail)	{
		this.payer	=	payer;
		this.payerPhone	=	payerPhone;
		this.payerEmail	=	payerEmail;
	}
	
	public MatchTable(String	recipientAccName, String recipientBankName, String recipientAccNum, String recipientPhone)	{
		this.recipientAccName	=	recipientAccName;
		this.recipientBankName		=	recipientBankName;
		this.recipientAccNum	=	recipientAccNum;
		this.recipientPhone	=	recipientPhone;
		
	}

	public	String	getPayer()	{
		return payer;
	}
	public void	setPayer		(String payer)	{
		this.payer	=	payer;
	}
	
	public String	getPayerPhone()	{
		return payerPhone;
	}
	public void setPayerPhone(String payerPhone)	{
		this.payerPhone	= payerPhone;
	}

	public String getPayerEmail()	{
		return payerEmail;
	}
	public void	setPayerEmail(String payerEmail)	{
		this.payerEmail	=	payerEmail;
	}
	

	public String getRecipientAccName() {
		return recipientAccName;
	}
	public void setRecipientAccName(String recipientAccName) {
		this.recipientAccName = recipientAccName;
	}


	public String getRecipientBankName() {
		return recipientBankName;
	}
	public void setRecipientBankName(String recipientBankName) {
		this.recipientBankName = recipientBankName;
	}

	public String getRecipientAccNum()	{
		return recipientAccNum;
	}
	public void setRecipientAccNum(String	recipientAccNum)	{
		this.recipientAccNum	=	recipientAccNum;
	}

	public String getRecipientPhone() {
		return recipientPhone;
	}
	public void setRecipientPhone(String recipientPhone) {
		this.recipientPhone = recipientPhone;
	}
	
	public byte [] getPop()	{
		return pop;
	}
	public void setPop(byte[] pop) {
		this.pop	=	pop;
	}
	
}
