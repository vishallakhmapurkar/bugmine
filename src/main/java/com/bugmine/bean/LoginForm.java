package com.bugmine.bean;


import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class LoginForm {
	@NotEmpty 
	@Size(min = 1, max = 50)
	private String userName;
	@NotEmpty 
	@Size(min = 1, max = 20)
	private String password;
	private String usrType;

	

	public String getUsrType() {
		return usrType;
	}

	public void setUsrType(String usrType) {
		this.usrType = usrType;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public LoginForm(){
		
	}
}
