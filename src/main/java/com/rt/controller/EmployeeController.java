package com.rt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.entity.Customer;
import com.rt.entity.Employee;
import com.rt.entity.Inventory;
import com.rt.service.BKInventoryService;
import com.rt.service.EmployeeService;
import com.rt.service.SalesService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService empService;
	@Autowired
	SalesService salService;
	@Autowired
	BKInventoryService intrService;

	@RequestMapping("/")
	public String home() {

		return "login";

	}

	@RequestMapping("/registerForm")
	public String register() {
		return "registerPage";
	}

	@RequestMapping("/singout")
	public String singout() {

		return "login";
	}
	
	

	@RequestMapping("/register")
	public String registerForm(@ModelAttribute Employee e, Model m, HttpServletRequest req) {

		String user = (String) req.getSession().getAttribute("user");

		boolean isAdd = empService.register(e, user);

		if (isAdd) {
			m.addAttribute("success", "Employee data added sucessfuly");
		} else {
			m.addAttribute("error", "unable to added... ");
		}

		return "registerPage";

	}

	@RequestMapping("/updateForm")
	public String update() {
		return "update";
	}

	@RequestMapping("/update")
	public String updateForm(@ModelAttribute Employee e, Model m) {
		boolean isUpdate = empService.update(e);

		if (isUpdate) {
			m.addAttribute("success", "Employee data Update sucessfuly");
		} else {
			m.addAttribute("error", "unable to UpDate... ");
		}

		return "update";

	}

	@RequestMapping("/selectById")
	public String selectEmployeeId() {
		return "selectEmployee";
	}

	@RequestMapping("/selectByEmp")
	public String selectEmployeeId(@RequestParam int id, Model m) {
		Employee empSelect = empService.selectById(id);

		m.addAttribute("empdata", empSelect);

		return "display";

	}

	@RequestMapping("/selectAllEmployee")
	public String selectAllEmployee(Model m) {
		List<Employee> list = empService.selectAllEmployee();

		m.addAttribute("empList", list);

		return "displayAll";

	}

	@RequestMapping("/deleteForm")
	public String deleted() {
		return "delete";
	}

	@RequestMapping("/deleteEmployee")
	public String deletedata(@RequestParam int id, Model m) {

		boolean empdelete = empService.deletedata(id);

		if (empdelete) {
			m.addAttribute("successMsg", "Employee delete Successfully...");
		} else {
			m.addAttribute("errMsg", "Unable to deleted...");
		}

		return "displayAll";
	}

	@RequestMapping("/salesRegistrationForm")
	public String customerRegitration() {
		return "salesRegistration";
	}

	@RequestMapping("/salesRegister")
	public String customerRegistrationForm(@ModelAttribute Customer c, Model m,
			HttpServletRequest req) {

		String user = (String) req.getSession().getAttribute("user");

		boolean isAdd = salService.salesRegister(c, user);

		if (isAdd) {
			m.addAttribute("success", "Customer data added sucessfuly");
		} else {
			m.addAttribute("error", "unable to added... ");
		}

		return "salesRegistration";

	}

	@RequestMapping("/salesDeleteForm")
	public String deleteSalesform() {
		return "salesDelete";
	}

	@RequestMapping("/salesDeletes")
	public String deleteSales(@RequestParam int id, Model m) {

		boolean salesDelete = salService.salesDelete(id);

		if (salesDelete) {
			m.addAttribute("successMsg", "Delete Sucessful");
		} else {
			m.addAttribute("errorMsg", "unable to deleted");
		}
		
		

		return "salesDisplayAll";
	}
	
	@RequestMapping("/selectAllSales")
	public String selectAllSals(Model m) {
		List<Customer> list = salService.selectAllSales();

		m.addAttribute("salesList", list);

		return "salesDisplayAll";

	}

	@RequestMapping("/bikinventoryForm")
	public String bikInventory() {
		return "bikeInventory";
	}

	@RequestMapping("/bikinventory")
	public String bikInventoryform(Inventory i, Model m) {

		boolean isAad = intrService.bikInventoryform(i);

		if (isAad) {
			m.addAttribute("success", "Add Successful Data");
		} else {
			m.addAttribute("error", "unable to added");
		}

		return "bikeInventory";

	}
	
	@RequestMapping("/bikeForm")
	public String allbikeform() {
		return "bike";

	}

	
	@RequestMapping("/bike1")
	public String bike1() {
		return "bike1";

	}
	@RequestMapping("/bike1Register")
	public String bike() {
		return "salesRegistration";

	}
	
	@RequestMapping("/bike2")
	public String bike2() {
		return "bike2";

	}
	@RequestMapping("/bike2Register")
	public String bike_2() {
		return "salesRegistration";

	}
	
	@RequestMapping("/scootersForm")
	public String allscootersform() {
		return "scooters";

	}

}
