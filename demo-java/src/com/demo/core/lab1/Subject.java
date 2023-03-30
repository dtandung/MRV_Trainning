package com.demo.core.lab1;
class Teacher{
	String name;
	public Teacher(String name) {
		this.name = name;
	}
}
public class Subject {

		String name;
		int classID;
		
		public Subject(String name, int classID) {
			this.name = name;
			this.classID = classID;
		} 
		
		public static void main(String []args) {
	        // Following statement would create an object myPuppy
			Teacher tc = new Teacher("Tam");
	        Subject sj = new Subject("Mathematics", 1);
	        System.out.println("Teacher "+ tc.name + " teaching "+sj.name +" for Class " + sj.classID);
	    }

}
