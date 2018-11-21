package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.commom.DatabaseConnection;
import com.model.Student;


import java.util.List;


import java.util.ArrayList;


public class StudentDao {
	private PreparedStatement ps;
	
	public List<Student> findAll(){
		List<Student> listStudent = new ArrayList<>();
		Connection dbConnect = DatabaseConnection.openConnection();
		try {
			ps = dbConnect.prepareStatement("SELECT * FROM Student5");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Student student = new Student();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAddress(rs.getString("address"));
				student.setEmail(rs.getString("email"));
				student.setPhone(rs.getString("phone"));
				listStudent.add(student);
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return listStudent;
	}
	
	public Student findOne(int id) {
		Student student = new Student();
		Connection dbConnect = DatabaseConnection.openConnection();
		try {
			ps = dbConnect.prepareStatement("SELECT * FROM Student5 WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAddress(rs.getString("address"));
				student.setEmail(rs.getString("email"));
				student.setPhone(rs.getString("phone"));
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return student;
	}
	
	public int createStudent(Student student) {
		Connection dbConnect=DatabaseConnection.openConnection();
		
		try {
			ps=dbConnect.prepareStatement("INSERT INTO Student5 VALUES(?,?,?,?)");
			ps.setString(1, student.getName());
			ps.setString(2, student.getAddress());
			ps.setString(3, student.getEmail());
			ps.setString(4, student.getPhone());

			ps.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return 0;
			// TODO: handle exception
		}
		
	}
	public int edit(Student student) {
		Connection dbConnect = DatabaseConnection.openConnection();
		try {
			ps=dbConnect.prepareStatement("UPDATE Student5 SET name=?, address=?, email=?, phone=? WHERE id=?");
			ps.setString(1, student.getName());
			ps.setString(2, student.getAddress());
			ps.setString(3, student.getEmail());
			ps.setString(4, student.getPhone());
			ps.setInt(5, student.getId());
			ps.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return 0;
			// TODO: handle exception
		}
		
	}
	
	public int remove(Student student) {
		Connection dbConnect = DatabaseConnection.openConnection();
		try {
			ps=dbConnect.prepareStatement("DELETE FROM Student5 WHERE id=?");
			ps.setInt(1, student.getId());
			ps.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return 0;
			// TODO: handle exception
		}
	}
	
//	//kiem tra eamil
//	public static int check(String str) {
//		if(str.equals("")) {
//			return 0;
//		}
//		if(str.indexOf("@gmail.com") < 0) {
//			return 0;
//		}
//		return 1;
//	}
	
	//ham de phan trang
	public List<Student> phanTrang(int limit, int Offset){
		List<Student> students = new ArrayList<>();
		Connection dbConnect = DatabaseConnection.openConnection();
		System.out.println(limit);
		System.out.println(Offset);
		try {
			ps=dbConnect.prepareStatement("SELECT * FROM Student5 ORDER BY id OFFSET "+limit+" ROWS FETCH NEXT "+Offset+"ROWS ONLY");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Student student = new Student();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAddress(rs.getString("address"));
				student.setEmail(rs.getString("email"));
				student.setPhone(rs.getString("phone"));
				students.add(student);
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
		
		return students;
		
	}
	
}
