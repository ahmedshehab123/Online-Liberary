package org.arm.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.arm.model.SupervisionPlan;
import org.arm.services.SupervisionPlanServices;
import org.arm.services.WorksPlanServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class SupervisionPlanController {
	@Autowired
	WorksPlanServices worksPlanServices;
	@Autowired
	SupervisionPlanServices supervisionServices;
	@RequestMapping(value="/upload-supervision-plan",method=RequestMethod.POST)
	public String uploadPlan(@RequestParam MultipartFile  filePath,@RequestParam Date planDate,HttpServletRequest request) throws IOException{
		System.out.println(planDate);
		 File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\supervision-plan\\"+filePath.getOriginalFilename());
		 filePath.transferTo(file);
		SupervisionPlan plan=new SupervisionPlan();
		plan.setFilePath(filePath.getOriginalFilename());
		plan.setPlanDate(planDate);
		supervisionServices.saveSupervisionPlan(plan);
		
		 
		// System.out.println("pages numbers"+pageNumbers);
		return "add-plan";
	}
	@RequestMapping(value="/search-supervision",method=RequestMethod.GET)
	public String findSupervisionPlan(Date planDate,HttpServletRequest request){
		List<SupervisionPlan> plans=supervisionServices.findSupervisionPlan(planDate);
		request.setAttribute("plans",plans);
		return "search-supervsion-result";
	}
	@RequestMapping(value = "/preview-supervision-plan", method = RequestMethod.GET)
	 protected FileInputStream preivewSection( @RequestParam("") String filePath,     
	     HttpServletRequest request,
	         HttpSession httpSession,
	     HttpServletResponse response) throws IOException {
		 
		 response.setContentType("application/pdf");
	     ServletOutputStream out;
	     out = response.getOutputStream();
	     if(filePath==""){
	    	 
	    	 
	    	 File file = new File("C:\\apache-tomcat-8.5.11\\pdfnotexist.pdf");
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
	     }else{
	     File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\supervision-plan\\"+filePath);
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

}
