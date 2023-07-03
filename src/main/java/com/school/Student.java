package com.school;

public class Student {
	
	// Attributes
	private int sid;
	private String name;
	private String address;
	private String grade;
	
	// Constructor
	public Student(int sid, String name, String address, String grade) {
		this.sid = sid;
		this.name = name;
		this.address = address;
		this.grade = grade;
	}

	// Getters
	public int getSid() {
		return sid;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getGrade() {
		return grade;
	}
	
}
