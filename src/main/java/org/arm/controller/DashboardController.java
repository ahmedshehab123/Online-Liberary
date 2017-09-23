package org.arm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.arm.model.AhmedOrabiBooks;
import org.arm.services.AhmedOrabiBookServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DashboardController {
	@Autowired
	AhmedOrabiBookServices estelamServices;
	@RequestMapping(value="/displayestalam",method=RequestMethod.GET)
	public String displayEstelam(HttpServletRequest request){
		List<AhmedOrabiBooks> estelam=estelamServices.ListAhmedOrabiBooks();
		request.setAttribute("estelam",estelam);
		return "orabi-lib-books-dashboard";
	}

}
