package org.arm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.arm.model.AhmedOrabiDepartment;
import org.arm.model.Borrowers;
import org.arm.services.AhmedOrabiDepartmentServices;
import org.arm.services.BorrowersServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BorrowersController {

	@Autowired
	BorrowersServices borrowersServices;
	@Autowired
	AhmedOrabiDepartmentServices orabiServices;
	@RequestMapping(value="/add-reports",method=RequestMethod.GET)
	public String addReport(HttpServletRequest request){
		List<AhmedOrabiDepartment> genah=orabiServices.ListAhmedOrabiDepartment();
		request.setAttribute("genah", genah);
		return "ahmed-orabi-borrow";
	}
	@RequestMapping(value="save-student-borrow",method=RequestMethod.POST)
	public String addBrowerr(@ModelAttribute("borrower") Borrowers borrower ,ModelMap model,HttpServletRequest request){
		borrower=borrowersServices.saveBorrowers(borrower);
		model.addAttribute("added", " „ «÷«›Â «·ÿ«·»  "+borrower.getStudentName()+" ");
		List<AhmedOrabiDepartment> genah=orabiServices.ListAhmedOrabiDepartment();
		request.setAttribute("genah", genah);
		return "ahmed-orabi-borrow";
	}
	@RequestMapping(value="list-borrowers",method=RequestMethod.GET)
	public String listBorrowers(HttpServletRequest request){
		List<Borrowers> borrowers=borrowersServices.displayBorrowers();
		request.setAttribute("borrowers", borrowers);
		return "borrowers-page";
	}
}
