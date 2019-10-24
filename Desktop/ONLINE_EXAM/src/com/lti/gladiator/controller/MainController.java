package com.lti.gladiator.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping("/index.htm")
	public String getIndexPage() {
		return "index";
	}
	
	@RequestMapping("/about.htm")
	public String getAboutPage() {
		return "about";
	}
	
	@RequestMapping(value ="/logout.htm")
	public String getLogoutPage(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().invalidate();
		HttpServletResponse httpResponse = (HttpServletResponse)response;
		httpResponse.setHeader("Cache-Control", "no-Cache, no-Store, must-revalidate");
		httpResponse.setHeader("Pragma", "no-Cache");
		httpResponse.setDateHeader("Expires", 0);
		
		return "logout";
	}
	
	@RequestMapping("/userHome.htm")
	public String getUserHomePage() {
		return "user_login_success";
	}
	
	@RequestMapping("/adminHome.htm")
	public String getAdminHomePage() {
		return "admin_login_success";
	}
}
