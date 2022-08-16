package com.sttproject.action;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuth extends Authenticator{
	
	PasswordAuthentication pa;
	
	public MailAuth() {
		String mail_id = "hyomyang@gmail.com";	// 발신자 g메일id 
		String mail_pw = "stvvrsuknmzetdoa";	//구글보안때문에 PC비밀번호로 사용해야함	
		
		pa = new PasswordAuthentication(mail_id, mail_pw);
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}
