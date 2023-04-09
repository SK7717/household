package model;

import java.io.Serializable;

public class AccountBeans implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String userId;
	private String address;
	private String password;
	private int role;
		
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getRole() {
	    return role;
    }
    public void setRole(int role) {
        this.role = role;
    }	
	
	
}