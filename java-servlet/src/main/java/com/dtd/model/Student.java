package com.dtd.model;

public class Student {
	private int StudentID;
	private String Name;
	private int Age;
	private boolean Gender;
	private boolean isUsedStudent;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(int studentID, String name, int age, boolean gender, boolean isUsedStudent) {
		super();
		StudentID = studentID;
		Name = name;
		Age = age;
		Gender = gender;
		this.isUsedStudent = isUsedStudent;
	}
	public int getStudentID() {
		return StudentID;
	}
	public void setStudentID(int studentID) {
		StudentID = studentID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	public boolean isGender() {
		return Gender;
	}
	public void setGender(boolean gender) {
		Gender = gender;
	}
	public boolean isUsedStudent() {
		return isUsedStudent;
	}
	public void setUsedStudent(boolean isUsedStudent) {
		this.isUsedStudent = isUsedStudent;
	}
	
	
}
