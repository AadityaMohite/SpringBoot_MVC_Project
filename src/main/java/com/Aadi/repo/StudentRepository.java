package com.Aadi.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Aadi.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {
	
	

}
