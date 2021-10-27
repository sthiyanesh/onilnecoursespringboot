package com.example.student.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.student.model.Stud;

public interface StudRepo extends CrudRepository<Stud,Integer>{
	List<Stud> findBySemail(String semail);
}
