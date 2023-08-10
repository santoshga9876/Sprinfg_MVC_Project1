package com.rt.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.rt.entity.Customer;
import com.rt.entity.Employee;

@Repository
public class EmployeeDao {
	@Autowired
	JdbcTemplate template;

	public boolean register(Employee e, String user) {
		try {
			Object[] args = { e.getFname(), e.getLname(), e.getDob(), e.getGender(), e.getState(), e.getDate(),
					e.getPassword(), user };
			int a = template.update(
					"insert into emp_table(`fname`,`lname`,`dob`,`gender`,`state`,`date`,`password`,`user_id`)values(?,?,?,?,?,?,?,?)",
					args);

			if (a == 1) {
				return true;
			}

		} catch (Exception e2) {
			System.out.println(e2);
		}

		return false;
	}

	public boolean update(Employee e) {
		try {
			Object[] args = { e.getFname(), e.getLname(), e.getDob(), e.getGender(), e.getState(), e.getDate(),
					e.getPassword(), e.getId() };
			int a = template.update(
					"update  emp_table set fname=?, lname=?,dob=?,gender=?,state=?, date=?,password=? where id=?",
					args);

			if (a == 1) {
				return true;
			}

		} catch (Exception e2) {
			System.out.println(e2);
		}

		return false;
	}

	public Employee selectById(int id) {
		Employee e = null;
		try {
			Object[] args = { id };
			e = template.queryForObject("select * from emp_table where id = ?", args, new RowMapper<Employee>() {

				public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {

					return new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));

				}

			});

		} catch (Exception e2) {
			e2.printStackTrace();

		}
		return e;

	}

	public List<Employee> selectAllEmployee() {
		List<Employee> list = null;
		try {

			list = template.query("select * from emp_table ", new RowMapper<Employee>() {

				public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					return new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));

				}

			});

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean deletedata(int id) {

		try {

			Object[] args = { id };
			int data = template.update("delete from emp_table where id = ?", args);

			if (data == 1) {
				return true;
			}

		} catch (Exception e2) {
			System.out.println(e2);
		}
		return false;
	}

}
