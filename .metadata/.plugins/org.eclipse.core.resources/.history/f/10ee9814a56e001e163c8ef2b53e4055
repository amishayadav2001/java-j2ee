package com.aurionpro.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;
import com.aurionpro.model.Student;

public class StudentDbUtil {
	private DataSource datasource;

	public StudentDbUtil(DataSource datasource) {
		this.datasource = datasource;
	}

	public List<Student> getAllStudents() throws SQLException {

		List<Student> students = new ArrayList<>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet result = null;

		try {

			conn = datasource.getConnection();

			String sql = "select * from student order by last_name";

			stmt = conn.createStatement();

			result = stmt.executeQuery(sql);

			while (result.next()) {

				int id = result.getInt("id");
				String firstName = result.getString("first_name");
				String lastName = result.getString("last_name");
				String email = result.getString("email");

				Student tempStudent = new Student(id, firstName, lastName, email);

				students.add(tempStudent);

			}

			return students;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, stmt, null);
		}
		return students;

	}

	private void close(Connection conn, Statement stmt, ResultSet result) throws SQLException {
		if (conn != null) {
			conn.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (result != null) {
			result.close();
		}

	}

	public void addNewStudent(Student stud) throws SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = datasource.getConnection();
			String sql = "insert into student (first_name, last_name, email) value (?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, stud.getFirstName());
			stmt.setString(2, stud.getLastName());
			stmt.setString(3, stud.getEmail());
			stmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, stmt, null);
		}

	}

	public Student getStudentById(int id) throws SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet result = null;
		Student tempStudent = null;
		try {

			conn = datasource.getConnection();
			String sql = "select * from student where id=?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			result = stmt.executeQuery();

			if (result.next()) {

				String firstName = result.getString("first_name");
				String lastName = result.getString("last_name");
				String email = result.getString("email");

				tempStudent = new Student(id, firstName, lastName, email);

			}
			return tempStudent;
		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			close(conn, stmt, null);
		}

		return null;
	}

	public void updateStudent(Student stud) throws SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = datasource.getConnection();
			String sql = "update student set first_name=?, last_name=?, email=? where id=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, stud.getFirstName());
			stmt.setString(2, stud.getLastName());
			stmt.setString(3, stud.getEmail());
			stmt.setInt(4, stud.getId());
			stmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, stmt, null);
		}

	}

	public void deleteStudent(int id) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			conn = datasource.getConnection();
			String sql = "delete from student where id=?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, stmt, null);

		}
	}

	public List<Student> searchStudent(String option, String value) throws SQLException {
		List<Student> students = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet result = null;

		try {
			conn = datasource.getConnection();
			String sql = "select * from student where first_name=?";
			switch (option) {
			case "firstName":
				sql = "select * from student where first_name=?";
				break;

			case "lastName":
				sql = "select * from student where last_name=?";
				break;

			case "email":
				sql = "select * from student where email=?";
				break;

			case "id":
				sql = "select * from student where id=?";
				break;

			}

			stmt = conn.prepareStatement(sql);
			stmt.setString(1, value);

			result = stmt.executeQuery();

			while (result.next()) {
				int id = result.getInt("id");
				String firstName = result.getString("first_name");
				String lastName = result.getString("last_name");
				String email = result.getString("email");

				Student tempStudent = new Student(id, firstName, lastName, email);
				students.add(tempStudent);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, stmt, result);
		}

		return students;
	}

}
