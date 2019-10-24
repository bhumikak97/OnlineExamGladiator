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
import com.lti.gladiator.service.RegistrationService;

@Controller
public class AdminLoginController {

	@Resource
	private RegistrationService service;

	private Login login = new Login();

	@RequestMapping(value = "/admin_login.htm")
	public String getLoginPage() {
		return "admin_login";
	}

	@RequestMapping(value = "/aloginProcess.htm", method = RequestMethod.POST)
	public ModelAndView loginProcess(ModelMap model, HttpServletRequest request, @RequestParam("email") String email, @RequestParam("password") String password) {

		login.setEmail(email);
		login.setPassword(password);
		
		System.out.println("controller");
		
		ModelAndView modelAndView = new ModelAndView();

		if (service.validateUser(login) == true) {
			request.getSession().setAttribute("user", "ADMIN");
			modelAndView.setViewName("admin_login_success");
			return modelAndView;
		} else {
			modelAndView.setViewName("admin_login_failure");
			return modelAndView;
		}
	}
}
