package com.model;

public class FlowerDTO {
	private String flower_id ;
	private String flower_name;
	private String flower_mean;
	private String flower_img;
	
	public FlowerDTO(String flower_id, String flower_name, String flower_mean, String flower_img) {
		super();
		this.flower_id = flower_id;
		this.flower_name = flower_name;
		this.flower_mean = flower_mean;
		this.flower_img = flower_img;
	}

	public FlowerDTO(String flower_id) {
		super();
		this.flower_id = flower_id;
	}

	public FlowerDTO(String flower_name, String flower_img) {
		super();
		this.flower_name = flower_name;
		this.flower_img = flower_img;
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

	public String getFlower_mean() {
		return flower_mean;
	}

	public void setFlower_mean(String flower_mean) {
		this.flower_mean = flower_mean;
	}

	public String getFlower_img() {
		return flower_img;
	}

	public void setFlower_img(String flower_img) {
		this.flower_img = flower_img;
	}
	
	
}
