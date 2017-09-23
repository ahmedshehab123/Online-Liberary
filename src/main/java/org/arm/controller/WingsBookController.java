package org.arm.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.arm.model.Departments;
import org.arm.model.WingsBooks;
import org.arm.services.WingsBookServices;
import org.arm.services.DepartmentServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class WingsBookController {
	@Autowired
	WingsBookServices wingsBookServices;
	@Autowired
	DepartmentServices departmentServices;
	@RequestMapping(value="/add-wing-page",method=RequestMethod.GET)
	public String redirectTOAddBook(HttpServletRequest request){
		
		List<Departments> departments=departmentServices.displayDepartments();
		request.setAttribute("departments",departments);
		return "add-wings-books";
	}
	@RequestMapping(value="/add-wing-book",method=RequestMethod.POST)
	public String addBook(@RequestParam MultipartFile  bookFile,@ModelAttribute("book") WingsBooks book,HttpServletRequest request) throws IOException{
		char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 20; i++) {
		    char c = chars[random.nextInt(chars.length)];
		    sb.append(c);
		}
		 String generatedName = sb.toString()+".pdf";
		 System.out.println(generatedName);
		 File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\"+generatedName);
		 bookFile.transferTo(file);
		 /*
		 String bookName=bookFile.getOriginalFilename().replaceAll(".pdf", "");
		 File filereader = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\"+generatedName);
		 PDDocument document = PDDocument.load(filereader);
		 int pageNumbers=document.getNumberOfPages();
		 Book book=new Book();
		 book.setBookName(bookName);
		 book.setPageNo(pageNumbers);
		 book.setGeneratedName(generatedName);
		 book.setDepartment(department);*/
		 book.setGeneratedName(generatedName);
		 wingsBookServices.saveBook(book);
		 
		// System.out.println("pages numbers"+pageNumbers);
		return "add-wings-books";
	}
	@RequestMapping(value="/editbook",method=RequestMethod.GET)
	public String editBook() {
		 
		return "searchbook";
	}
	@RequestMapping(value="/list-books-in-department",method=RequestMethod.GET)
	public String listBooksInDepartment(HttpServletRequest request,@RequestParam String departmentName) {
		List<WingsBooks> books=wingsBookServices.displayBooksIndepartment(departmentName);
		request.setAttribute("books",books);
		return "wings-book";
	}
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public String searchBook(HttpServletRequest request,@RequestParam String bookName) {
		List<WingsBooks> books=wingsBookServices.searchBook(bookName);
		request.setAttribute("books",books);
		return "searchpage";
	}
	 @RequestMapping(value = "/preview", method = RequestMethod.GET)
	 protected FileInputStream preivewSection( @RequestParam("") String generatedName,     
	     HttpServletRequest request,
	         HttpSession httpSession,
	     HttpServletResponse response) throws IOException {
		 
		 response.setContentType("application/pdf");
	     ServletOutputStream out;
	     out = response.getOutputStream();
	     if(generatedName==""){
	    	 
	    	 
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
	     File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\"+generatedName);
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
		
	 @RequestMapping(value="/collage-agneha",method=RequestMethod.GET)
		public String startLanding(HttpServletRequest request){
			
			List<Departments> departments=departmentServices.displayDepartments();
			request.setAttribute("departments",departments);
			
			return "wings-home";
			
		}
		
		
	 }


