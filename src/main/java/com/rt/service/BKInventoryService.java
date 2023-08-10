package com.rt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.rt.dao.BKInventoryDao;
import com.rt.entity.Inventory;

@Service
public class BKInventoryService {
	@Autowired
	BKInventoryDao intrDao;

	public boolean bikInventoryform(Inventory i) {

		return intrDao.bikInventoryform(i);
	}

}
