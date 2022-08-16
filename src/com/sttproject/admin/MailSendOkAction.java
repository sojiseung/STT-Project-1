package com.sttproject.admin;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.action.MailAuth;
import com.sttproject.dao.AdminDAO;

public class MailSendOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		Properties prop = System.getProperties();
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
		
		Authenticator auth = new MailAuth();
		
		Session session = Session.getDefaultInstance(prop, auth);
		
		MimeMessage msg = new MimeMessage(session);
		
		try {
			msg.setSentDate(new Date());
			
			msg.setFrom(new InternetAddress("hyomyang@gmail.com", "Set The Table"));	// 발신자 메일, 보낸사람(익명)
			InternetAddress to = new InternetAddress("pagooo@naver.com");	//수신자 메일
			msg.setRecipient(Message.RecipientType.TO, to);
			msg.setSubject("[Set The Table] 비밀번호를 변경하시기 바랍니다.", "UTF-8");		// 메일제목, 인코딩
			msg.setText("비밀번호 변경  \n http://localhost:9090/app/user/modifypw.jsp", "UTF-8");		// 메일내용, 인코딩
			
			Transport.send(msg);
		} catch(AddressException ae) {
			System.out.println("AddressException : " + ae.getMessage());
		} catch(MessagingException me) {
			System.out.println("MessagingException : " + me.getMessage());
		} catch(UnsupportedEncodingException e) {
			System.out.println("UnsupportedEncodingException : " + e.getMessage());
		}
		
		
		
		
		
		return null;
	}
}
	
	
	
	