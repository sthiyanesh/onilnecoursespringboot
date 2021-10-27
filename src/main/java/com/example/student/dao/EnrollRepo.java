package com.example.student.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.student.model.Enroll;

public interface EnrollRepo extends CrudRepository<Enroll,Integer> {
	List<Enroll> findBySid(int sid);
}
