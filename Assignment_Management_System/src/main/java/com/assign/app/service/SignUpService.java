package com.assign.app.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.assign.app.dao.SignUpDAO;
import com.assign.app.dto.AdminDTO;
import com.assign.app.exception.DAOException;
import com.assign.app.exception.ServiceException;
import com.assign.app.util.AES;
import com.assign.app.util.RandomPasswordGenerator;

@Service
public class SignUpService {
	private final static Logger log=LoggerFactory.getLogger(SignUpService.class);
	@Autowired
	private SignUpDAO signUpDAO;
	@Autowired
	private MailSender sender;

	public SignUpService() {
		log.info("created\t" + this.getClass().getSimpleName());
	}

	public String signUpService(AdminDTO adminDTO) throws ServiceException{
		int noOfCAPSAlpha = 1;
		int noOfDigits = 3;
		int noOfSplChars = 1;
		int minLen = 8;
		int maxLen = 12;
		String result=null;
		try {
			log.info("SignUPService started");
		adminDTO.setNewUser(true);
		char[] pswd = RandomPasswordGenerator.generatePswd(minLen, maxLen, noOfCAPSAlpha, noOfDigits, noOfSplChars);
		log.info("Len = " + pswd.length + ", " + new String(pswd));
		String Randompass = new String(pswd);
		System.out.println("random pwd is"+Randompass);
		final String secretKey = "ssshhhhhhhhhhh!!!!";
		String encryptedPassword = AES.encrypt(Randompass, secretKey) ;
		System.out.println(encryptedPassword);
		adminDTO.setPassword("encrypted password is"+encryptedPassword);
		System.out.println(adminDTO);
		 result = signUpDAO.signUpDAO(adminDTO);

		String email = adminDTO.getEmail();
		String password = adminDTO.getPassword();
		System.out.println("getPassword() is\t"+password+"/n");
		 String decryptedPassword = AES.decrypt(encryptedPassword, secretKey) ;
		 System.out.println("dycrypted password is\t"+decryptedPassword);
		String subject = "Cofirmation message from Assignment Management";
		String text = "your account is created\n" + "please login by using\n" + email + "\nPassword:\t" + decryptedPassword;
		String emailResult = sendEmail(email, subject, text, decryptedPassword);
		log.info(emailResult);
		}catch (DAOException e) {
			log.error("DAOException in dao " + e.getMessage());
			throw new ServiceException(e.getMessage());
		} catch (Exception e) {
			log.error("Exception in Service " + e.getMessage());
		}
		log.info("SignUPService ended");
		return result;
	}

	public String sendEmail(String to, String subject, String text, String pasword) {
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();

		simpleMailMessage.setTo(to);
		simpleMailMessage.setSubject(subject);
		simpleMailMessage.setText(text);
		sender.send(simpleMailMessage);

		return "mail send to" + to;

	}

}
