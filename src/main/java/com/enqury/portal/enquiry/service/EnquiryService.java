package com.enqury.portal.enquiry.service;

import com.enqury.portal.enquiry.model.University;
import com.enqury.portal.enquiry.model.Users;
import com.enqury.portal.enquiry.repo.UniversityRepo;
import com.enqury.portal.enquiry.repo.UsersRepo;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

@Service
public class EnquiryService {
@Autowired
UsersRepo usersrepo;

   private UniversityRepo studentRepo;
   
   public void save (Users users) {
	 	usersrepo.save(users);
	}
	public Users getUsers(String username, String password)
	{
		return usersrepo.findByUsernameAndPassword(username, password);
		}

    public EnquiryService(UniversityRepo studentRepo) {
        this.studentRepo = studentRepo;
    }

    public Page<University> pageStudent(Pageable pageable, String term) {
        if (term == null || StringUtils.isBlank(term)) {
            return studentRepo.findAll(pageable);
        } else {
            return studentRepo.findByRegNoContainingIgnoreCase(term, pageable);
        }
    }

    public void postStudent(University student) {
        studentRepo.save(student);
    }

    public University getStudent(Long studCode) {
 
    	return studentRepo.findByStId(studCode);
    }
    public String exportReport(String reportFormat) throws FileNotFoundException, JRException{
    	String path="E:\\LUCY\\ClassWork\\COMP 493\\Reports";
    	List<Users> users=usersrepo.findAll();
    	File file=ResourceUtils.getFile("classpath:users.jrxml");
    	JasperReport jasperReport=JasperCompileManager.compileReport(file.getAbsolutePath());
    	JRBeanCollectionDataSource dataSource=new JRBeanCollectionDataSource(users);
    	Map<String, Object> parameters=new HashMap<>();
    	parameters.put("createdBy", "Verify");
    	JasperPrint jasperPrint=JasperFillManager.fillReport(jasperReport, parameters, dataSource);
    	if(reportFormat.equalsIgnoreCase("html")) {
    		JasperExportManager.exportReportToHtmlFile(jasperPrint, path+"\\users.html");
    	}
    	if(reportFormat.equalsIgnoreCase("pdf")) {
    		JasperExportManager.exportReportToPdfFile(jasperPrint, path+"\\users.pdf");
    	}
    	return "report generated in"+path;
    }
    public JasperPrint exportCert(String regNo) throws JRException, IOException{
    	String path="E:\\LUCY\\ClassWork\\COMP 493\\Reports";
    	List<University> university=studentRepo.findByRegNo(regNo);
    	University student=studentRepo.findStudent(regNo);
    	InputStream input=new ByteArrayInputStream(student.getPhoto());
         BufferedImage image=ImageIO.read(input);
         
    	File file=ResourceUtils.getFile("classpath:certificate.jrxml");
    	JasperReport jasperReport=JasperCompileManager.compileReport(file.getAbsolutePath());
    	JRBeanCollectionDataSource dataSource=new JRBeanCollectionDataSource(university);
    	Map<String, Object> parameters=new HashMap<>();
    	parameters.put("createdBy", "Verify");
    	parameters.put("studPhoto",image);
    	return JasperFillManager.fillReport(jasperReport, parameters, dataSource);
    	/*String reportFormat="pdf";
    	if(reportFormat.equalsIgnoreCase("html")) {
    		JasperExportManager.exportReportToHtmlFile(jasperPrint, path+"\\student.html");
    	}
    	if(reportFormat.equalsIgnoreCase("pdf")) {
    		JasperExportManager.exportReportToPdfFile(jasperPrint, path+"\\student.pdf");
    	}
    	return "report generated in"+path;
    	*/
    }
   
}
