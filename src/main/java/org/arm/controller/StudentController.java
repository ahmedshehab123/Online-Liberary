package org.arm.controller;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;

import org.arm.services.StudentServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class StudentController {
	@Autowired
	StudentServices studentServices;
	@RequestMapping(value="/find-student",method=RequestMethod.GET,produces = {"html/text; charset=UTF-8","*/*;charset=UTF-8"})
	@ResponseBody
	public String findStudentById(@RequestParam int studentNumber,HttpServletRequest request){
		String student=null;
		try{
			student=studentServices.findStudentName(studentNumber);
			
		}catch(NoResultException ex){}
		 if(student==null){
			 
			 return "there is no student";
		 }else{
			 
			 return student;
		 }
		
		
	}

}
