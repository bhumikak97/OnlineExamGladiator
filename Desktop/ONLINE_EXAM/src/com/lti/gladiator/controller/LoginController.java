package com.lti.gladiator.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lti.gladiator.bean.Login;
import com.lti.gladiator.exception.RegistrationException;
import com.lti.gladiator.service.RegistrationService;

@Controller
public class LoginController {

	@Resource
	private RegistrationService service;
	
	private Login login=new Login();

	@RequestMapping("/login.htm")
	public String getRegisterPage() {
		return "login";
	}

	@RequestMapping(value = "/loginProcess.htm", method = RequestMethod.POST)
	public ModelAndView loginProcess(ModelMap model, HttpServletRequest request, @RequestParam("email") String email, @RequestParam("password") String password) {

		login.setEmail(email);
		login.setPassword(password);
		System.out.println("controller");
		
		ModelAndView modelAndView = new ModelAndView();
	
		if (service.validateUser(login) == true) {
			String username=null;
			try {
				username = service.findUserByEmail(email);
			} catch (RegistrationException e) {
				e.printStackTrace();
			}
			request.getSession().setAttribute("user", username);
			modelAndView.setViewName("user_login_success");
			return modelAndView;
		} else {
			modelAndView.setViewName("user_login_failure");
			return modelAndView;
		}
	}

}
