package com.Aadi.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Aadi.entity.Student;
import java.util.List;


public interface StudentRepository extends JpaRepository<Student, Integer> {
	
	
	boolean existsByEmail(String email) ;
}
