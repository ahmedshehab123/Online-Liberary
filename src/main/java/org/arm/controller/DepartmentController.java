package org.arm.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.arm.model.Departments;
import org.arm.services.DepartmentServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class DepartmentController {
	@Autowired
	DepartmentServices departmentServices;
	@RequestMapping(value="/adddepartment",method=RequestMethod.GET)
	public String redirectTOAddDeparment(){
		
		
		return "add-department-orabi";
	}
	@RequestMapping(value="/add-department",method=RequestMethod.POST)
	public String addBook(@RequestParam MultipartFile  departmentImage,@RequestParam String departmentName,HttpServletRequest request) throws IOException{
		char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 20; i++) {
		    char c = chars[random.nextInt(chars.length)];
		    sb.append(c);
		}
		 String generatedName = sb.toString()+".jpg";
		 System.out.println(generatedName);
		 File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\image\\"+generatedName);
		 departmentImage.transferTo(file);
		 Departments department=new Departments();
		 department.setDepartmentName(departmentName);
		 department.setImageName(generatedName);
		 departmentServices.saveDepartment(department);
		
		 
		// System.out.println("pages numbers"+pageNumbers);
		return "add-department-orabi";
	}
	 @RequestMapping(value = "/diplay-image", method = RequestMethod.GET)
	 protected String preivewSection( @RequestParam String generatedName,     
	     HttpServletRequest request,
	         HttpSession httpSession,
	     HttpServletResponse response) throws IOException {
		 
		 response.setContentType("application/jpg");
	     ServletOutputStream out;
	     out = response.getOutputStream();
	     File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\image\\"+generatedName);
			FileInputStream fis = null;
			fis = new FileInputStream(file);
	   
	     BufferedInputStream bin = new BufferedInputStream(fis);
	     BufferedOutputStream bout = new BufferedOutputStream(out);
	     int ch = 0;
	     while ((ch = bin.read()) != -1) {
	         bout.write(ch);
	     }

	     bin.close();
	     bout.close();
	     out.close();
		return null;
	 }

}
