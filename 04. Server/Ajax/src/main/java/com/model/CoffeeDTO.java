package com.model;

public class CoffeeDTO {
	private String menuNm;
	private int price;
	private String size;
	
	
	public CoffeeDTO(String menuNm, int price, String size) {
		this.menuNm = menuNm;
		this.price = price;
		this.size = size;
	}
	
	public String getMenuNm() {
		return menuNm;
	}
	public int getPrice() {
		return price;
	}
	public String getSize() {
		return size;
	}

	// 객체가 가지고 있는 실제 데이터가 어떤 형태인지를 보여줌
	// 객체 내 정보를 보여주기 위한 메서드
	@Override
	public String toString() {
		return "CoffeeDTO [menuNm=" + menuNm + ", price=" + price + ", size=" + size + "]";
	}
	
	
}
