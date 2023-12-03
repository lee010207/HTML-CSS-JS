package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class Ex03gsonArray
 */
@WebServlet("/gsonArray")
public class Ex03gsonArray extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//JSONArray 객체생성
		JsonArray jsArr = new JsonArray();
		
//		jsArr.add("JSON배열");
//		jsArr.add(12345);
//		jsArr.add(true);
//		
//		System.out.println(jsArr);
		
		JsonArray jsArr2 = new JsonArray();
		JsonObject jsObj1 = new JsonObject();
		JsonObject jsObj2 = new JsonObject();
		JsonObject jsObj3 = new JsonObject();
		
		// 커피정보를 JSON객체로 구현하기
		jsObj1.addProperty("menu", "아메리카노");
		jsObj1.addProperty("price", 2000);
		
		jsObj2.addProperty("menu", "카페라떼");
		jsObj2.addProperty("price", 3500);
		
		jsObj3.addProperty("menu", "딸기에이드");
		jsObj3.addProperty("price", 5500);
		
		jsArr2.add(jsObj1);
		jsArr2.add(jsObj2);
		jsArr2.add(jsObj3);
		
		System.out.println(jsArr2);
		
		response.setContentType("application/json; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print(jsArr2);
		
	}

}
