package com.enqury.portal.enquiry.controller;

import com.enqury.portal.enquiry.model.University;
import com.enqury.portal.enquiry.model.Users;
import com.enqury.portal.enquiry.service.EnquiryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
    
    @GetMapping("/verify")
    public String verify(){
        return "index";
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
    		return "welcome";
    	}
    	else {
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
        University stud = universityService.getStudent(studCode);
        if (stud.getStId()!=null && stud.getPhoto()!=null ) {
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
}
