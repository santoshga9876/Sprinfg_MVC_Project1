package com.rt.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.SalesDao;
import com.rt.entity.Customer;
import com.rt.entity.Inventory;

@Service
public class SalesService {
	@Autowired
	
	SalesDao stmDao;

	public boolean salesRegister(Customer c,String user) {

		return stmDao.salesRegister(c,user);
	}

	public boolean  salesDelete(int id) {
		
		return stmDao.salesDelete(id) ;
	}

	public List<Customer> selectAllSales() {
		// TODO Auto-generated method stub
		return stmDao.selectAllSales();
	}

}
