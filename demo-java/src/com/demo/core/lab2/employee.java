package com.demo.core.lab2;

import java.util.Scanner;

public class employee {
	 String name;
	 int age;
	 String job;
	 int salary;
	 String department;
	
	public employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public employee(String name, int age, String job, int salary, String department) {
		super();
		this.name = name;
		this.age = age;
		this.job = job;
		this.salary = salary;
		this.department = department;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public static void main(String []args){
		Scanner myObj = new Scanner(System.in);
		employee empl1 = new employee();
		System.out.println("Enter job:");
		empl1.job = myObj.nextLine();
		if(empl1.job.equals("developer")) {
			empl1.department = "development";
		}
		else if(empl1.job.equals("tester")) {
			empl1.department = "QA";
		}else {
			empl1.department = "master";
		}
		employee empl = new employee("Dũng", 22, empl1.job, 10000, empl1.department);
		System.out.println(empl.department);
	}
}
