package com.model;

public class OrderDTO {
	private String id;
	private String flower_id;
	private String flower_name;
	private String addr;
	
	public OrderDTO(String id, String flower_id, String flower_name, String addr) {
		super();
		this.id = id;
		this.flower_id = flower_id;
		this.flower_name = flower_name;
		this.addr = addr;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFlower_id() {
		return flower_id;
	}

	public void setFlower_id(String flower_id) {
		this.flower_id = flower_id;
	}

	public String getFlower_name() {
		return flower_name;
	}

	public void setFlower_name(String flower_name) {
		this.flower_name = flower_name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	
}
