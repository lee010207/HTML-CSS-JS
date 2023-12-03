package com.model;

public class MemberDTO {
	private String email;
	private String pw;
	private String phone;
	private String addr;
	
	
	
	public MemberDTO(String email, String pw) {
		this.email = email;
		this.pw = pw;
	}


	public MemberDTO(String email, String pw, String phone, String addr) {
		// 데이터베이스 컬럼에 not null 제약조건 --> 4가지(email, pw, phone, addr) 데이터 다 들어간 객체 생성자를 만들어줌
		this.email = email;
		this.pw = pw;
		this.phone = phone;
		this.addr = addr;
	}

	
	@Override
	public String toString() {
		return "MessageDTO [email=" + email + ", pw=" + pw + ", phone=" + phone + ", addr=" + addr + "]";
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public String getEmail() {
		return email;
	}


	public String getPw() {
		return pw;
	}


	public String getPhone() {
		return phone;
	}


	public String getAddr() {
		return addr;
	}
	
	
	
	
}
