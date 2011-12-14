package com.bugmine.controller;

import javax.validation.Valid;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bugmine.bean.ProjectBean;



@Controller
@RequestMapping("registration.do")

public class ProjectRegistrationController {
	@RequestMapping(method = RequestMethod.GET)
	public String showForm(ModelMap model) {
		ProjectBean projectBean = new ProjectBean();
		model.addAttribute("projectBean", projectBean);
		return "registration";
	}
	
		
	@RequestMapping(method = RequestMethod.POST)
	public String processForm(@Valid ProjectBean projectBean, BindingResult result,ModelMap model) {
		if (result.hasErrors()) {
			return "registration";
		}
				//model.put("registrationForm", registrationForm);
		return "registration";
	}
}
