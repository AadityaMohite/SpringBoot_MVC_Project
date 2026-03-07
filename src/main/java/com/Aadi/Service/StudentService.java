package com.Aadi.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Aadi.entity.Student;
import com.Aadi.repo.StudentRepository;

@Service
public class StudentService {

	@Autowired
  StudentRepository studentRepository;
	
	public String saveStudent(Student student) {
		
	    if(student.getCourse().equals("Java Full Stack")|| student.getCourse().equals("Python Full Stack")) {
	    	
	    	
	    	student.setCourseduration("6 Months");
	    	
	    }else if (student.getCourse().equals("Core Java")||student.getCourse().equals("Core Python")) {
			student.setCourseduration("1 Month");
		}else {
			student.setCourseduration("2 Month");
		}
	
	    
	    if(studentRepository.existsByEmail(student.getEmail())) {
	    	return "Email is alerady exists please enter the new email";
	    }
	    
	    
	    
		   studentRepository.save(student);
		   
		   return "Student saved Sucessfully";
		
		
	}
	
}
