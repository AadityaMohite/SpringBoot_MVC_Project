package com.Aadi.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Aadi.entity.Student;
import java.util.List;
import java.util.Optional;


public interface StudentRepository extends JpaRepository<Student, Integer> {
	
	
	Optional<Student> findByEmail(String email) ;
	
	long countByCourse(String course);
	
	List<Student> findByCourse(String course);
}
