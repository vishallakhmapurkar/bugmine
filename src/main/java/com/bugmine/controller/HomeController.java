package com.bugmine.controller;



import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.bugmine.bean.LoginForm;
import com.bugmine.model.UserDao;

/**
 * Sample controller for going to the home page with a message
 */
@Controller
@RequestMapping("login.do")
	
public class HomeController {

	@RequestMapping(method = RequestMethod.GET)
	public String showForm(ModelMap model) {
		LoginForm loginForm = new LoginForm();
		model.addAttribute("loginForm", loginForm);
		return "login";
	}

	@RequestMapping(method = RequestMethod.POST)


	public ModelAndView processForm(@Valid LoginForm loginForm, BindingResult result,ModelMap model,SessionStatus status, HttpSession session) {
		if (result.hasErrors()) {
		      return new ModelAndView("login", "loginForm",loginForm);

		}
		loginForm = (LoginForm) model.get("loginForm");
		
		if (loginForm.getUserName().equalsIgnoreCase("admin")&&loginForm.getPassword().equalsIgnoreCase("admin")){
			
			return new ModelAndView("home", "loginForm",loginForm);
		}
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Module.xml");
	       
        UserDao userDao = (UserDao) context.getBean("userDao");
        
        
        if (userDao.loginCheck(loginForm)) {
        	
        	return new ModelAndView("home", "loginForm",loginForm);
        } else {
        	return new ModelAndView("login", "loginForm",loginForm);
        }
 
		
		
		
	}

}
	
	

	


