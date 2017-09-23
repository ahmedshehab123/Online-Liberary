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

import org.arm.model.Services;
import org.arm.services.ServicesServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ServicesController {
	@Autowired
	ServicesServices ss;

	@RequestMapping(value = "/add-product", method = RequestMethod.POST)
	public String addProduct(@RequestParam String place, @RequestParam String productName, @RequestParam double price,
			@RequestParam MultipartFile picturePath) throws IllegalStateException, IOException {
		Services services = new Services();
		services.setProductName(productName);
		services.setPlace(place);
		services.setPrice(price);
		services.setPicturePath(picturePath.getOriginalFilename());
		ss.saveServices(services);
		if (picturePath.getOriginalFilename().isEmpty()) {

			return "add-services";
		} else {
			File file = new File(
					"C:\\apache-tomcat-8.5.11\\uploaded-files\\products\\" + picturePath.getOriginalFilename());
			picturePath.transferTo(file);
			BufferedImage originalImage = ImageIO.read(file);
			BufferedImage resizeImageJpg = ss.resizeImage(originalImage, 1);
			ImageIO.write(resizeImageJpg, "png", file);
			return "add-services";
		}
	}

	@RequestMapping(value = "/product-image", method = RequestMethod.GET)
	protected String preivewSection(@RequestParam String picturePath, HttpServletRequest request,
			HttpSession httpSession, HttpServletResponse response) throws IOException {

		response.setContentType("application/jpg");
		ServletOutputStream out;
		out = response.getOutputStream();
		if (picturePath.isEmpty()) {
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
			return null;
		} else {
			File file = new File("C:\\apache-tomcat-8.5.11\\uploaded-files\\products\\" + picturePath);
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
