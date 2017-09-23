package org.arm.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.arm.model.ManagerWord;
import org.arm.model.MonthlyPlan;
import org.arm.model.Services;
import org.arm.model.SupervisionPlan;
import org.arm.model.WingsBooks;
import org.arm.model.WorksPlan;
import org.arm.services.WingsBookServices;
import org.arm.services.WorksPlanServices;
import org.arm.services.DepartmentServices;
import org.arm.services.ManagerWordServices;
import org.arm.services.MonthlyPlanServices;
import org.arm.services.NabatchyServices;
import org.arm.services.ServicesServices;
import org.arm.services.StudentServices;
import org.arm.services.SupervisionPlanServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import java.io.File;

@Controller
public class StartupController {
	@Autowired
	WingsBookServices wingsBookServices;
	@Autowired
	DepartmentServices departmentServices;
	@Autowired
	NabatchyServices nabatchyServices;
	@Autowired
	WorksPlanServices worksPlanServices;
	@Autowired
	ManagerWordServices managerWordServices;
	@Autowired
	StudentServices studentServices;
	@Autowired
	SupervisionPlanServices supervisonServices;
	@Autowired
	MonthlyPlanServices mpServices;
	@Autowired
	ServicesServices servicesServices;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String startLanding(HttpServletRequest request) {

		return "home";

	}

	@RequestMapping(value = "/add-file", method = RequestMethod.GET)
	public String addFile() {

		return "addfile";
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String startDashBoard(HttpServletRequest request) {
		List<WingsBooks> books = wingsBookServices.displayBooks();
		request.setAttribute("books", books);
		System.out.println(books.size());
		return "wings-lib-books-dashboard";
	}

	@RequestMapping(value = "/nabatchy", method = RequestMethod.GET)
	public String addNabatchy(HttpServletRequest request) {

		return "add-nabatchy";

	}

	@RequestMapping(value = "/nabatchy-home", method = RequestMethod.GET)
	public String nabatchyHome(HttpServletRequest request) {
		List<String> nabatchy = nabatchyServices.displayNabatchy();
		request.setAttribute("nabatchy", nabatchy);
		System.out.println("sizeeeeeeeeeeeee" + nabatchy.size());

		return "nabatchy-home";

	}

	@RequestMapping(value = "/add-plan", method = RequestMethod.GET)
	public String addPlan(HttpServletRequest request) {

		return "add-plan";

	}

	@RequestMapping(value = "/works-home", method = RequestMethod.GET)
	public String getWorksHome(HttpServletRequest request) {
		List<WorksPlan> plans = worksPlanServices.displayWorksPlan();
		request.setAttribute("plans", plans);
		return "works-plan";
	}
	
	@RequestMapping(value = "/add-supervision", method = RequestMethod.GET)
	public String addSuperVision(HttpServletRequest request) {

		return "add-supervision";

	}
	@RequestMapping(value = "/supervision-home", method = RequestMethod.GET)
	public String getSupervisionHome(HttpServletRequest request) {
		List<SupervisionPlan> plans = supervisonServices.displaySupervision();
		request.setAttribute("plans", plans);
		return "supervision-plan";
	}
	@RequestMapping(value = "/add-month-plan", method = RequestMethod.GET)
	public String addMonthlyPlan(HttpServletRequest request) {

		return "add-month-plan";

	}
	@RequestMapping(value = "/month-plan-home", method = RequestMethod.GET)
	public String getMonthlyPlan(HttpServletRequest request) {
		List<MonthlyPlan> plans = mpServices.displayMonthlyPlan();
		request.setAttribute("plans", plans);
		return "month-plan";
	}

	@RequestMapping(value = "/manager-word", method = RequestMethod.GET)
	public String getManagerWord(HttpServletRequest request) {

		return "add-manager-word";
	}

	@RequestMapping(value = "/manager-home", method = RequestMethod.GET)
	public String getManagerWordHome(HttpServletRequest request) {
		List<ManagerWord> words = managerWordServices.displaymanagerWord();
		request.setAttribute("words", words);
		return "manager-word-home";
	}
	

	@RequestMapping(value = "/previewfirstpage", method = RequestMethod.GET)
	public PDDocument getFirstImage(HttpServletResponse response, @RequestParam String fileName) throws IOException {
		response.setContentType("application/pdf");
		File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\" + fileName);

		PDDocument document = PDDocument.load(file);
		PDPage page = (PDPage) document.getPages().get(0);
		page.getContents();

		response.setContentType("application/pdf");
		ServletOutputStream out;
		out = response.getOutputStream();
		FileInputStream fis = (FileInputStream) page.getContents();

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
	@RequestMapping(value = "/add-service", method = RequestMethod.GET)
	public String addService(HttpServletRequest request) {

		return "add-services";
	}
	@RequestMapping(value = "/services", method = RequestMethod.GET)
	public String getServicesPage(HttpServletRequest request) {
		List<Services> servcies=servicesServices.displayServices();
		request.setAttribute("services", servcies);
		System.out.println(servcies.size());
		return "services";
	}
	@RequestMapping(value = "/wageb", method = RequestMethod.GET)
	public String getWagebPage(HttpServletRequest request) {
	   	
		return "add-wageb-azza";
	}
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String adminPage(){
		
		return "login";
	}
	@RequestMapping(value="/add-orabi-book",method=RequestMethod.GET)
	public String addOrabiBook(){
		
		return "add-orabi-book";
	}

}
