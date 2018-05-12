package photostock.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class JavaMailConfig {
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendEmail(String receiver, String mailSubject, String username ){
		String sendMail = "http://localhost:8080/ProjectPhotoStock/account/doGetPass.html?us="+username;
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setTo(receiver);
		simpleMailMessage.setSubject(mailSubject);
		simpleMailMessage.setText(sendMail);
		mailSender.send(simpleMailMessage);
	}
	public void sendEmailDownload(String receiver, String mailSubject, String filename ){
		String sendMail = "http://localhost:9080/ProjectPhotoStock/download/img.html?fileName="+filename;
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setTo(receiver);
		simpleMailMessage.setSubject(mailSubject);
		simpleMailMessage.setText(sendMail);
		mailSender.send(simpleMailMessage);
	}
}
