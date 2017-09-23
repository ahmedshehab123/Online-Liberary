package org.arm.controller;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.arm.model.Admin;
import org.arm.services.AdminServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

	@Autowired
	AdminServices adminServices;
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@RequestParam String userName,String password,HttpSession session,ModelMap model){
		
		Admin admin=new Admin();
		try{
		admin=adminServices.login(userName, password);
		
		session.setAttribute("admin", admin);
		}catch(NoResultException e){}
		System.out.println("role"+admin.getRole());
		if(admin.getRole()==null){
			model.addAttribute("error", "password or user name error");
			return "login";
		}else{
			return "dashboard";
		}
		
	}
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "login";
	}
	
}
