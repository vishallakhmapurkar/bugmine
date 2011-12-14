package com.bugmine.bean;

import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

public class ProjectBean {
	@NotEmpty	
	private String projectname;
	
	@NotEmpty
	@NumberFormat(style = Style.NUMBER)
	@Min(1)
	@Max(10)
	private int no_of_members;
	
	@NotEmpty
	@DateTimeFormat
	private Date start_date;
	@NotEmpty
	@DateTimeFormat
	private Date end_date;
	@NotEmpty
	@Email
	private String leader_email;
	@NotEmpty
	private int project_type;
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public int getNo_of_members() {
		return no_of_members;
	}
	public void setNo_of_members(int no_of_members) {
		this.no_of_members = no_of_members;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getLeader_email() {
		return leader_email;
	}
	public void setLeader_email(String leader_email) {
		this.leader_email = leader_email;
	}
	public int getProject_type() {
		return project_type;
	}
	public void setProject_type(int project_type) {
		this.project_type = project_type;
	}
	@NotEmpty
	private String capchaCode;

}
