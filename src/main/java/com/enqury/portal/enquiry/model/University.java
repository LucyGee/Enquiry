package com.enqury.portal.enquiry.model;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="university_table")
public class University {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="studId")
    private Long stId;

    @Column(name="regNo")
    private String regNo;

    @Column(name="fname")
    private String fname;
    
    @Column(name="mname")
    private String mname;
    
    @Column(name="lname")
    private String lname;

    @Lob
    @Column(name="studPhoto")
    private byte[] photo;

    @Transient
    MultipartFile file;



    @Column(name="graduationDate")
    private Date graduationDate;

    @Column(name="faculty")
    private String faculty;
    
    @Column(name="department")
    private String department;

    @Column(name="course")
    private String course;
    
    @Column(name="level")
    private String level;
    
    @Column(name="points")
    private String points;

   

    public Long getStId() {
        return stId;
    }

    public void setStId(Long stId) {
        this.stId = stId;
    }

    public String getRegNo() {
        return regNo;
    }

    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }


    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public byte[] getPhoto() {
        return photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

   

    public String getPoints() {
        return points;
    }

    public void setPoints(String points) {
        this.points = points;
    }

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public Date getGraduationDate() {
		return graduationDate;
	}

	public void setGraduationDate(Date graduationDate) {
		this.graduationDate = graduationDate;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	
   
}
