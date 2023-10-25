package com.aurionpro.model;

import java.util.ArrayList;
import java.util.List;

public class StudentUtil {
	
	private List<Student> allStudents;
	
	public StudentUtil() {
		allStudents = new ArrayList<>();
		allStudents.add(new Student(1, "Amisha", "amisha@gmail.com", 95));
		allStudents.add(new Student(2, "Suraj", "suraj@gmail.com", 85));
		allStudents.add(new Student(3, "Amyra", "amyra@gmail.com", 65));
		allStudents.add(new Student(4, "Nikhil", "nikhil@gmail.com", 75));
	}
	
	public List<Student> getAllStudents(){
		return allStudents;
	}

}
