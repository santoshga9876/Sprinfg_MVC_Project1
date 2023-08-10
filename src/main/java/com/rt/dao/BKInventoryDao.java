package com.rt.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.Inventory;

@Repository
public class BKInventoryDao {
	@Autowired
	JdbcTemplate template;

	public boolean bikInventoryform(Inventory i) {
		try {

			Object[] args = { i.getBikname(), i.getBikmodal(), i.getMnfdate(), i.getBikcolor(), i.getBikprice(),
					i.getBikquantity(), i.getBikarrivekdate() };

			int a = template.update(
					"insert into invetory_table (`Bike_Name`, `Bike_Modal`, `Manufacturer_date`,`Color`, `Bike_Price`,`Bike_Quantity`,`Arrive_date`) value(?,?,?,?,?,?,?)",
					args);

			if (a == 1) {
				return true;
			}

			

		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

}
