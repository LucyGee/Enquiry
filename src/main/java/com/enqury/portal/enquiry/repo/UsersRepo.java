package com.enqury.portal.enquiry.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.enqury.portal.enquiry.model.Users;

public interface UsersRepo extends JpaRepository<Users, String>
{
	public Users findByUsernameAndPassword(String username, String password);
}
