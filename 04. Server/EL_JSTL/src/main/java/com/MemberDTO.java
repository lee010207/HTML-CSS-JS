package com;

public class MemberDTO {
	private String id;
	private String pw;
	private String nick;
	private String addr;
	
	
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public String getNick() {
		return nick;
	}
	public String getAddr() {
		return addr;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public MemberDTO(String id, String pw, String nick, String addr) {
	
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.addr = addr;
	}
	
	
	
}
