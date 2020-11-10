package com.enqury.portal.enquiry.service;

import com.enqury.portal.enquiry.model.University;
import com.enqury.portal.enquiry.model.Users;
import com.enqury.portal.enquiry.repo.UniversityRepo;
import com.enqury.portal.enquiry.repo.UsersRepo;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

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
}
