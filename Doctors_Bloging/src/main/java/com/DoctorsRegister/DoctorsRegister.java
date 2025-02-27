package com.DoctorsRegister;

public class DoctorsRegister {
	private String fullname,username,password,hospitalname,number;

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHospitalname() {
		return hospitalname;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public DoctorsRegister(String fullname, String username, String password, String hospitalname, String number) {
		super();
		this.fullname = fullname;
		this.username = username;
		this.password = password;
		this.hospitalname = hospitalname;
		this.number = number;
	}
	
}
