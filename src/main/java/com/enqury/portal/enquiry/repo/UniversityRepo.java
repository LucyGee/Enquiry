package com.enqury.portal.enquiry.repo;

import com.enqury.portal.enquiry.model.University;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UniversityRepo extends JpaRepository<University,Long> {
    Page<University> findByRegNoContainingIgnoreCase(String term, Pageable pageable);

    University findByStId(Long studId);

	List<University> findByRegNo(String regNo);
	@Query(value="SELECT * FROM university_table WHERE regNo =?1",nativeQuery=true)
	University findStudent(String regNo);
}
