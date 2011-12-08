package com.bugmine.model;

public interface DBSql {
	
	public String LOGIN_SQL_QUERY = "SELECT PASSWORD, (SELECT user_name FROM usertype WHERE user_type = (SELECT usertype FROM USER WHERE user_name =?)) ut FROM USER WHERE user_name=? "; 
												

}
