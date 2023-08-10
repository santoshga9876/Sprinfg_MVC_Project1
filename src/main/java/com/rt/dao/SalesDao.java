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
import com.rt.entity.Inventory;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Repository
public class SalesDao {
	@Autowired	
	JdbcTemplate template;

	public boolean salesRegister(Customer c, String user) {
		try {
			Object[] args = { c.getCustomername(), c.getCustomerMobilenNo(), c.getCustomerAddress(),
					c.getCustomeremail(), c.getCustomerDob(), c.getCustomerIdproof(), c.getCustomerGender(),
					c.getCustomerState(), c.getBikname(), c.getBikmodal(), c.getBikquantity(), c.getBikprice(), user };

			int a = template.update(
					"insert into sales_table (`customername`,`customerMobilenNo`,`customerAddress`,`customeremail`,`customerDob`,`customerIdproof`,`customerGender`,`customerState`,`bikname`,`bikmodal`, `bikquantity`,`bikprice`,`user_id`) value(?,?,?,?,?,?,?,?,?,?,?,?,?)",
					args);

			if (a == 1) {
				return true;
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	public boolean salesDelete(int id) {
		try {

			Object[] args = { id };

			int delete = template.update("delete from sales_table where id=? ", args);

			if (delete == 1) {
				return true;
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	
	
	public List<Customer> selectAllSales() {
		List<Customer> list = null;
		try {

			list = template.query("select * from sales_table ", new RowMapper<Customer>() {

				public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12),rs.getString(13)) ;
				}

				

			});

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


}
