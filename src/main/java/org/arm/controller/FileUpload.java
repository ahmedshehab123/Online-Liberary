package org.arm.controller;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import org.arm.model.AhmedOrabiDepartment;
import org.arm.services.AhmedOrabiBookServices;
import org.arm.services.AhmedOrabiDepartmentServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUpload {
	@Autowired
	AhmedOrabiBookServices ahmedOrabiBookServices;
	@Autowired
	AhmedOrabiDepartmentServices ahmedOrabiDepartmentServices;
	SimpleDateFormat df=new SimpleDateFormat("dd/mm/yyyy");
	@RequestMapping(value="/uploadfile",method=RequestMethod.POST)
	public String uploadfile(@RequestParam MultipartFile bulkfile)throws ArrayIndexOutOfBoundsException{
		String csvFile=null;
		BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ";";
		
		if (!bulkfile.isEmpty()) {
			try {
				byte[] bytes = bulkfile.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator+bulkfile.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

					 csvFile = serverFile.getAbsolutePath();
			        


		            br = new BufferedReader(new FileReader(csvFile));
		            while ((line = br.readLine()) != null) {
		            		
		                // use comma as separator
		            	if(!line.isEmpty()){
		            		
		                String[] book = line.split(cvsSplitBy);
		                
		                AhmedOrabiDepartment ahmedOrabiDepartment=new AhmedOrabiDepartment();
		                ahmedOrabiDepartment.setDepartmentName(book[0]);
		                ahmedOrabiDepartmentServices.saveAhmedOrabiDepartment(ahmedOrabiDepartment);
		                
		                
		            	}

		            }

				
				return "addfile";
				
			} catch(FileNotFoundException e){}
			catch (IOException e) {
	            e.printStackTrace();
	        }
			
			catch (Exception e) {
				e.printStackTrace();
				return "errorpage";
			}
			finally {
	            if (br != null) {
	                try {
	                    br.close();
	                } catch (IOException e) {
	                    e.printStackTrace();
	                }
	            }
	        }
			
		} else {
			return "errorpage";
		}
		return "addfile";
		
		
	}

}
