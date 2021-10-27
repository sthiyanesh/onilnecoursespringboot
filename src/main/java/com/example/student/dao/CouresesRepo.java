package com.example.student.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.student.model.Courses;

public interface CouresesRepo extends CrudRepository<Courses,Integer>{
	List<Courses> findByCrname(String crname);
}
