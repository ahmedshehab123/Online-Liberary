package org.arm.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.arm.model.ManagerWord;
import org.arm.services.ManagerWordServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ManagerWordController {
	@Autowired
	ManagerWordServices managerWordServices;

	@RequestMapping(value="/add-managerword",method=RequestMethod.POST)
	public String addWord(@RequestParam String title,@RequestParam String content,@RequestParam MultipartFile picturePath) throws IllegalStateException, IOException{
		ManagerWord word=new ManagerWord();
		word.setTitle(title);
		word.setContent(content);
		word.setPicturePath(picturePath.getOriginalFilename());
		System.out.println(picturePath.getOriginalFilename());
		managerWordServices.saveMangerWord(word);
		if(picturePath.getOriginalFilename().isEmpty()){
			
			return "add-manager-word";
		}else{
		File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\manager-pohto\\"+picturePath.getOriginalFilename());
		picturePath.transferTo(file);
		BufferedImage originalImage = ImageIO.read(file);
		BufferedImage resizeImageJpg = managerWordServices.resizeImage(originalImage, 1);
			ImageIO.write(resizeImageJpg, "jpg",file);
		return "add-manager-word";}
	}
	 @RequestMapping(value = "/diplay-manager-image", method = RequestMethod.GET)
	 protected String preivewSection( @RequestParam String picturePath,     
	     HttpServletRequest request,
	         HttpSession httpSession,
	     HttpServletResponse response) throws IOException {
		 
		 response.setContentType("application/jpg");
	     ServletOutputStream out;
	     out = response.getOutputStream();
	     if(picturePath.isEmpty()){
	    	 File file = new File("C:\\apache-tomcat-8.5.11\\diplay-manager-image.jpg");
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
		     return null;}else{
	     File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\manager-pohto\\"+picturePath);
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
		return null;}
	 }
}
