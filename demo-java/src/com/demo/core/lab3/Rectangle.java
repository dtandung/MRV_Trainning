package com.demo.core.lab3;

import java.util.Scanner;

public class Rectangle extends Shape {
	int length;
	int width;
	public Rectangle() {
		// TODO Auto-generated constructor stub
	}
	
	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	@Override
	public double getArea() {
		// TODO Auto-generated method stub
		Scanner myObj = new Scanner(System.in);
		Rectangle rec = new Rectangle();
		System.out.println("Enter length:");
		rec.length = myObj.nextInt();
		System.out.println("Enter width:");
		rec.width = myObj.nextInt();
		int s = rec.length * rec.width;	
		System.out.println("Diện tích Rectangle: " + s);
		return s;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Rectangle rec = new Rectangle();
		rec.getArea();
	}

}
