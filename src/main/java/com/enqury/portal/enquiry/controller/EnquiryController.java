package com.enqury.portal.enquiry.controller;

import com.enqury.portal.enquiry.model.University;
import com.enqury.portal.enquiry.model.Users;
import com.enqury.portal.enquiry.service.EnquiryService;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperPrint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/api")

public class EnquiryController {
	
	@Autowired
	EnquiryService service;

    private EnquiryService universityService;

    public EnquiryController(EnquiryService universityService) {
        this.universityService = universityService;
    }
    @Value("Successfully Logged in")
    private String message;
    @Value("Incorrect Username or Password")
    private String message1;

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
    
    @GetMapping("/verify")
    public String verify(){
        return "index";
    }
    @GetMapping("/test")
    public String test(){
        return "welcome2";
    }
      
    @PostMapping("/signup")
    public String login(Users users)
    {
    	service.save(users);
    	return "login";
    }

    @PostMapping("/login")
    public String validatelogin(@RequestParam String username,
    		@RequestParam String password, Model model)

    {	
    	Users users=service.getUsers(username, password);
    	
    	if(users!=null) {
    		model.addAttribute("users", users);
    		model.addAttribute("message", message);
    		return "welcome";
    	}
    	else {
    		model.addAttribute("message", message1);
    		return "login";
    	}
    	
    }

    @GetMapping("/register")
    public String register(){
        return "registry";
    }

    @GetMapping("/view")
    public String view(){
        return "view";
    }
   
    @GetMapping("/login")
    public String login(){
        return "login";
    }
    @GetMapping("/signup")
    public String signup(){
        return "register";
    }
    @GetMapping("/welcome")
    public String welcome(){
        return "welcome";
    }
    @GetMapping("/secondary")
    public String secondary(){
        return "secondary";
    }
    @GetMapping("/registrysec")
    public String registersecondary(){
        return "secondaryin";
    }
    @GetMapping("/pageStudent")
    @ResponseBody
    Page<University> pageStudent(@RequestParam(required = false) String term, Pageable pageable) {
        return universityService.pageStudent(pageable,term);
    }
    @PostMapping("/postStudent")
    @ResponseStatus(HttpStatus.CREATED)
    public void postStudent(University student) throws IOException {
        if ((student.getFile() != null) && (!student.getFile().isEmpty())) {
            if (student.getFile().getSize() != 0) {
                byte[] photo = student.getFile().getBytes();
                student.setPhoto(photo);
            }
        }
        universityService.postStudent(student);
    }
    @RequestMapping(value = "/studentPhoto/{studCode}")
    public void getStudImage(HttpServletResponse response, @PathVariable Long studCode)
            throws IOException {
        University stud=universityService.getStudent(studCode);
        if(stud.getStId()!=null && stud.getPhoto()!=null ) {
            response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
            response.getOutputStream().write(stud.getPhoto());
            response.getOutputStream().close();
        }
    }

    @RequestMapping(value = "/studentDetails/{stdId}")
    @ResponseBody
    public University studentDetails(HttpServletResponse response, @PathVariable Long stdId) {
        return universityService.getStudent(stdId);
    }
    
    @GetMapping("/report/{format}")
    public String generateReport(@PathVariable String format) throws FileNotFoundException, JRException {
    	return service.exportReport(format);
    }
    @GetMapping("/cert")
    public String generateCert(@RequestParam String regNo,HttpServletResponse response) throws JRException, IOException {
    	JasperPrint jasper=null;
    	
    	 jasper= service.exportCert(regNo);
    	 
    	 byte[] pdf = null;
    	 
    	 String filename =regNo+" certificate.pdf";
    	 
    	 pdf = JasperExportManager.exportReportToPdf(jasper);
    	 
         response.setContentType("application/x-download");
         
         response.setContentLength(pdf.length);
    	 
         response.addHeader("Content-disposition", "attachment; filename=\"" + filename + "\"");
         
         OutputStream out = response.getOutputStream();
         
         JasperExportManager.exportReportToPdfStream(jasper, out);
    	 
    	 return "welcome";
    }
}
