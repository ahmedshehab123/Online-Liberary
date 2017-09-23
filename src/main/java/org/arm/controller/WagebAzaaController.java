package org.arm.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.arm.model.WagebAzaa;
import org.arm.services.WagebAzaaServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class WagebAzaaController {
	@Autowired
	WagebAzaaServices wagebAzaaServices;

	@RequestMapping(value="/add-wageb",method=RequestMethod.POST)
	public String addWord(@ModelAttribute("wageb")  WagebAzaa wageb) {
		wagebAzaaServices.saveWagebAzaa(wageb);
		return "add-wageb-azza";
	}
	@RequestMapping(value="/veiw-wageb",method=RequestMethod.GET)
	public String getWageb(HttpServletRequest request){
		List<WagebAzaa> wageb=wagebAzaaServices.displayWageb();
		request.setAttribute("wageb", wageb);
		return "wageb-home";
	}
	 
}
