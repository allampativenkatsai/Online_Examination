package com.sai.entity;

public class Student {
	
	//attributes
	private String name ;
	private String email;
	private String password ;
	private String phno_num ;
	
	//constructors 
	
	public Student() {
		super();
	}
	public Student(String name, String email, String password, String phno_num) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phno_num = phno_num;
	}
	
	//getters and setters
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhno_num() {
		return phno_num;
	}
	public void setPhno_num(String phno_num) {
		this.phno_num = phno_num;
	}
	
	
	
	
	
	
	

}
