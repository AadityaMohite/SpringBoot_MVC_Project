package com.Aadi.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Aadi.Studentdto.StudentDto;
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
	
	    
	    Optional<Student> existing = studentRepository.findByEmail(student.getEmail());

	    if (existing.isPresent()) {

	        // If updating same student → allow update
	        if (student.getId() != null &&
	            existing.get().getId().equals(student.getId())) {

	            studentRepository.save(student);
	            return "Updated Successfully";
	        }

	        return "Email is alerady exists please enter the new email";
	    }

	    studentRepository.save(student);
	    return "Saved Successfully";
		
		
	}
	
	public List<StudentDto> getAll() {
		
		List<Student> students =    studentRepository.findAll();
		
		List<StudentDto> dtostudents = new ArrayList<>();
		
		for (Student student : students) {
			
			StudentDto dtostudent = new StudentDto();
			
			BeanUtils.copyProperties(student, dtostudent);
			
			dtostudent.setTimings(Arrays.toString(student.getTimings()));
			
			dtostudents.add(dtostudent);
			
		}
		
		
		
		return dtostudents;
	}
	
	
	public Student editStudent(int id) {
		Student student = null;
		Optional<Student> op =   studentRepository.findById(id);
		
		if(op.isPresent()) {
	          student = op.get();
		}
		
		return student;
		
	}
	
	
	public void deletestudent(int id) {
		
		studentRepository.deleteById(id);
		
		
		
	}
	
}
