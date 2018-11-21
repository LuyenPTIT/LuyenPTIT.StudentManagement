package com.controller;

import com.dao.StudentDao;
import com.model.Student;

public class StudentController {
	
	public Student findOne(int id) {
		StudentDao dao = new StudentDao();
		return dao.findOne(id);
	}
	
	public int edit(Student student) {
		StudentDao dao = new StudentDao();
		return dao.edit(student);
	}
	public int remove(Student student) {
		StudentDao dao = new StudentDao();
		return dao.remove(student);
	}
	

}
