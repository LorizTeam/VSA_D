package com.vsa.struts.form;

public class DetailuserForm {
	private String username,password,name,surname,position_name;

	public DetailuserForm(String username, String password, String name,
			String surname, String positionName) {
		// TODO Auto-generated constructor stub
		this.username = username;
		this.password = password;
		this.name = name;
		this.surname = surname;
		this.position_name = positionName;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getPosition_name() {
		return position_name;
	}

	public void setPosition_name(String positionName) {
		position_name = positionName;
	}
}
