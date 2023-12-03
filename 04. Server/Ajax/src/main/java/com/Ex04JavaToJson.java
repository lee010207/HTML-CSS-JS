package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.model.CoffeeDTO;

/**
 * Servlet implementation class Ex04JavaToJson
 */
@WebServlet("/CoffeMenu")
public class Ex04JavaToJson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 자바를 JSON으로
		// 5개의 커피정보를 보관하는 ArrayList를 생성
		ArrayList<CoffeeDTO> list = new ArrayList<>();
		list.add(new CoffeeDTO("쏠티카라멜 콜드브루", 6800, "Grande"));
		list.add(new CoffeeDTO("바닐라 크림 콜드브루", 7500, "Venti"));
		list.add(new CoffeeDTO("수박 블렌디드", 6900, "Grande"));
		list.add(new CoffeeDTO("제주 유기농 말차 라떼", 6100, "Tall"));
		list.add(new CoffeeDTO("화이트 타이거 프라푸치노", 7000, "Venti"));
		
		// Java객체 -> JSON 데이터로 변환
		Gson gson = new Gson();
		String jsArr = gson.toJson(list);
		// 가변배열 list를 JSON객체로 만들어줌
		response.setContentType("application/json; charset=UTF-8");
		System.out.println(jsArr);
		
		PrintWriter out = response.getWriter();
		out.print(jsArr);
	}

}
