package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Icommand;
import com.model.MemberDTO;
import com.model.MessageDAO;

public class MsgDeleteAll implements Icommand {


	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MessageDAO dao = new MessageDAO();
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		int cnt = dao.deleteAll(info.getEmail());

		return "main.jsp#two";
	}
	
}
