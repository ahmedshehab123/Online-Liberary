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
import org.arm.model.AhmedOrabiBooks;
import org.arm.model.AhmedOrabiDepartment;
import org.arm.services.AhmedOrabiBookServices;
import org.arm.services.AhmedOrabiDepartmentServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AhmedOrabiBooksController {
	@Autowired
	AhmedOrabiBookServices ahmedOrabiBooksServices;
	@Autowired
	AhmedOrabiDepartmentServices orabiServices;
	@RequestMapping(value="/list-genah-books",method=RequestMethod.GET)

	public String listGenahDepartment(@RequestParam String department,HttpServletRequest request,ModelMap model){
		List<AhmedOrabiBooks> estalam=ahmedOrabiBooksServices.ListAhmedOrabiBooksByDepartmentName(department);
		request.setAttribute("estalam", estalam);
		model.addAttribute("size",estalam.size());
		model.addAttribute("department",department);
		System.out.println(department);
		System.out.println(estalam.size());
		return "orabi-books";
	}
	@RequestMapping(value="/list-borrow-books",method=RequestMethod.GET)
	public String listBorrowBooks(@RequestParam String department,HttpServletRequest request){
		List<AhmedOrabiBooks> estalam=ahmedOrabiBooksServices.ListAhmedOrabiBooksByDepartmentName(department);
		request.setAttribute("books",estalam );

		System.out.println(estalam.size());
		return "list-borrow-books";
	}
	@RequestMapping(value="/book-info",method=RequestMethod.GET)
	public String bookInfo(@RequestParam String bookName,HttpServletRequest request){
		
		AhmedOrabiBooks estalamInfo=ahmedOrabiBooksServices.getBookInfo(bookName);
		System.out.println(estalamInfo.getBookName()+estalamInfo.getBuyingDate());
		request.setAttribute("estalamInfo",estalamInfo);
		return "book-info-div";
	}
	@RequestMapping(value="/searchestalam",method=RequestMethod.GET)
	public String searchBook(HttpServletRequest request,@RequestParam String bookName) {
		List<AhmedOrabiBooks> books=ahmedOrabiBooksServices.searchBook(bookName);
		request.setAttribute("books",books);
		return "searchpage";
	}
	@RequestMapping(value="/addbook",method=RequestMethod.POST)
	public String addBook(@RequestParam MultipartFile  bookFile,@ModelAttribute("book") AhmedOrabiBooks ahmedOrabiBooks,
			HttpServletRequest request) throws IOException{
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
		 ahmedOrabiBooks.setGeneratedName(generatedName);
		 ahmedOrabiBooksServices.saveAhmedOrabiBooks(ahmedOrabiBooks);
		 
		// System.out.println("pages numbers"+pageNumbers);
		return "add-orabi-book";
	}
	
	@RequestMapping(value="/get-book-data",method=RequestMethod.GET)
	public String getBookData(@RequestParam int bookID,HttpServletRequest request){
		AhmedOrabiBooks book=ahmedOrabiBooksServices.findBookById(bookID);
		request.setAttribute("book", book);
		return "update-orabi-book";
	}
	@RequestMapping(value="/update-book",method=RequestMethod.POST)
	public String updateBookInfo(@ModelAttribute("book") AhmedOrabiBooks book,@RequestParam MultipartFile  bookFile,ModelMap model) throws IllegalStateException, IOException{
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
		 book.setGeneratedName(generatedName);
		ahmedOrabiBooksServices.updateBook(book);
		model.addAttribute("updated","book info updated successfully");
		return "update-orabi-book";
	}
	@RequestMapping(value = "/preview-orabi-book", method = RequestMethod.GET)
	 protected FileInputStream preivewSection( @RequestParam String generatedName,     
	     HttpServletRequest request,
	         HttpSession httpSession,
	     HttpServletResponse response) throws IOException {
		 
		 response.setContentType("application/pdf");
	     ServletOutputStream out;
	     out = response.getOutputStream();
	     if(generatedName.isEmpty()){
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

}
