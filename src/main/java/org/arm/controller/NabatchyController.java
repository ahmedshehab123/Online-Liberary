package org.arm.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.persistence.NoResultException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.arm.model.Nabatchy;
import org.arm.services.NabatchyServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class NabatchyController {
	@Autowired
	NabatchyServices nabatchyServices;

	@RequestMapping(value="/add-nabatchy",method=RequestMethod.POST)
	public String addNabatchy(@RequestParam MultipartFile picturePath,ModelMap map) throws IllegalStateException, IOException{
		
		File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\nabatchy\\"+picturePath.getOriginalFilename());
		picturePath.transferTo(file);
		Nabatchy nabatchy=new Nabatchy();
		nabatchy.setId(5);
		nabatchy.setPicturePath(picturePath.getOriginalFilename());
		
	BufferedImage originalImage = ImageIO.read(file);
	BufferedImage resizeImageJpg = nabatchyServices.resizeImage(originalImage, 1);
		ImageIO.write(resizeImageJpg, "jpg",file);
		String nabatchy2=null;
		try{
			nabatchy2=nabatchyServices.checkIfExist(picturePath.getOriginalFilename());}
			catch (NoResultException nre){
			//Ignore this because as per your logic this is ok!
			}
		if(nabatchy2==null){
		nabatchyServices.saveNabatchy(nabatchy);
		}
		map.addAttribute("added", "image added successfully");
		return "add-nabatchy";
	}

	@RequestMapping(value = "/diplay-nabatchy", method = RequestMethod.GET)
	protected String previewNabatchy(@RequestParam String picturePath, HttpServletRequest request,
			HttpSession httpSession, HttpServletResponse response) throws IOException {

		response.setContentType("application/jpg");
		ServletOutputStream out;
		out = response.getOutputStream();
		File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\nabatchy\\" + picturePath);
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
