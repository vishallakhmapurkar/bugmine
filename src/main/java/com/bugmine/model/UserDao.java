package com.bugmine.model;


import com.bugmine.bean.LoginForm;

public interface UserDao {
	//public	void insert(RegistrationForm registrationForm);
	public boolean loginCheck(LoginForm loginForm);
	//public void insertProjectInfo(ProjectInfoForm projectInfoForm);
	
}
