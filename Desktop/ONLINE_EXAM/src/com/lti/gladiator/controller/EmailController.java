package com.lti.gladiator.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmailController {

	static String emailToRecipient, emailSubject, emailMessage;
	static final String emailFromRecipient = "aradhana.potteth@gmail.com";

	static ModelAndView modelViewObj;

	@Resource
	private JavaMailSender mailSenderObj;
	
	@RequestMapping("/forgotPassword.htm")
	public String getForgotPassword() {
		return "emailForm";
	}

//	@RequestMapping(value = {"/emailForm"}, method = RequestMethod.GET)
//	public ModelAndView showEmailForm(ModelMap model) {
//		modelViewObj = new ModelAndView("emailForm");
//		return  modelViewObj;		
//	}

	// This Method Is Used To Prepare The Email Message And Send It To The Client
	@RequestMapping(value = "/sendEmail.htm", method = RequestMethod.POST)
	public ModelAndView sendEmailToClient(HttpServletRequest request) {

		// Reading Email Form Input Parameters		
		emailSubject = "Exam Portal-Password Reset";
		emailMessage = "Your password has been reset to: QWERTY123!";
		emailToRecipient = request.getParameter("mailTo");

		// Logging The Email Form Parameters For Debugging Purpose
		System.out.println("\nReceipient?= " + emailToRecipient + ", Subject?= " + emailSubject + ", Message?= " + emailMessage + "\n");

		mailSenderObj.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");				
				mimeMsgHelperObj.setTo(emailToRecipient);
				mimeMsgHelperObj.setFrom(emailFromRecipient);				
				mimeMsgHelperObj.setText(emailMessage);
				mimeMsgHelperObj.setSubject(emailSubject);

			}
		});
		System.out.println("\nMessage Send Successfully.... Hurrey!\n");

		modelViewObj = new ModelAndView("login");
		return  modelViewObj;	
	}
}