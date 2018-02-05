package org.iii.ee100.sample.sneakers;

import java.sql.*;

public class Sneakers {
	private long id; // 在DB是自動產生
	private String name;
	private String color;
	private String brand;
	private float price;
	private Date launch;
	
	// getters
	public long getId () {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getColor(){
		return color;
	}
	public String getBrand() {
		return brand;
	}
	public float getPrice() {
		return price;
	}
	public Date getLaunch() {
		return launch;
	}

	// setters
	public void setId(Long id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public void setLaunch(Date launch) {
		this.launch = launch;
	}
}
