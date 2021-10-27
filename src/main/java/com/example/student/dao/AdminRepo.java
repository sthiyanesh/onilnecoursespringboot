package com.example.student.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.student.model.Admin;

public interface AdminRepo extends CrudRepository<Admin,Integer> {
	List<Admin> findByAemail(String aemail);
}
