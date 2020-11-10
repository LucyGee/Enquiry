package com.enqury.portal.enquiry.model;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="university_table")
public class University {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="stud_id")
    private Long stId;

    @Column(name="stud_admno")
    private String regNo;

    @Column(name="stud_name")
    private String name;

    @Lob
    @Column(name="stud_photo")
    private byte[] photo;

    @Transient
    MultipartFile file;



    @Column(name="stud_doc")
    private Date completionDate;

    @Column(name="stud_phones")
    private String phone;

    @Column(name="kcpe_marks")
    private String points;

    @Column(name="honours")
    private String honours;



    @Column(name="student_email")
    private String email;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public Date getCompletionDate() {
        return completionDate;
    }

    public void setCompletionDate(Date completionDate) {
        this.completionDate = completionDate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPoints() {
        return points;
    }

    public void setPoints(String points) {
        this.points = points;
    }

    public String getHonours() {
        return honours;
    }

    public void setHonours(String honours) {
        this.honours = honours;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
