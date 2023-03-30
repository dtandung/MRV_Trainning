package com.demo.core.lab3;

import java.util.Scanner;

public class Triangle extends Shape{
	int height;
	int base;
	public Triangle() {
		// TODO Auto-generated constructor stub
	}
	
	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getBase() {
		return base;
	}

	public void setBase(int base) {
		this.base = base;
	}

	@Override
	public double getArea() {
		// TODO Auto-generated method stub
		Scanner myObj = new Scanner(System.in);
		Triangle tri = new Triangle();
		System.out.println("Enter height:");
		tri.height = myObj.nextInt();
		System.out.println("Enter base:");
		tri.base = myObj.nextInt();
		int s = (tri.base * tri.height)/2;
		System.out.println("Diện tích Triangle: " + s);
		return s;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Triangle tri = new Triangle();
		tri.getArea();
	}
}
