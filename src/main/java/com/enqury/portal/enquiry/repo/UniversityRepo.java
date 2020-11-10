package com.enqury.portal.enquiry.repo;

import com.enqury.portal.enquiry.model.University;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UniversityRepo extends JpaRepository<University,Long> {
    Page<University> findByRegNoContainingIgnoreCase(String term, Pageable pageable);

    University findByStId(Long studCode);
}
