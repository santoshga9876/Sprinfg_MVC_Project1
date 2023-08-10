package com.rt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.entity.Employee;

@Controller
public class EmployeeLogin {

	@RequestMapping("/login")
	public String selectEmployeeId(@RequestParam String username, @RequestParam String password, HttpSession session,
			Model m) {

		if (username.equals(password)) {
			session.setAttribute("user", username);

		} else {
			m.addAttribute("errorMsg", "invalid cred..");
			return"login";               
		}
		return "home";

	}
	
	@RequestMapping("/inbox")
	public String inbox(HttpServletRequest req) {	
		
		String name = (String) req.getSession().getAttribute("user");
		System.out.println(name);
		return "registerPage";
		
	}
	
	@RequestMapping("/inbox1")
	public String inbox1(HttpServletRequest req) {	
		
		String name = (String) req.getSession().getAttribute("user");
		System.out.println(name);
		return "customerRegistration";
		
	}
	
}
