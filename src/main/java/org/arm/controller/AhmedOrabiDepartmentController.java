package org.arm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.arm.model.AhmedOrabiDepartment;
import org.arm.services.AhmedOrabiDepartmentServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AhmedOrabiDepartmentController {
	@Autowired
	AhmedOrabiDepartmentServices genahServices;
	@RequestMapping(value="/list-lib-genah",method=RequestMethod.GET)
	public String displayGenah(HttpServletRequest request){
		List<AhmedOrabiDepartment> genah=genahServices.ListAhmedOrabiDepartment();
		System.out.println(genah.size());
		request.setAttribute("genah", genah);
		return "orabi-home";
	}

}
