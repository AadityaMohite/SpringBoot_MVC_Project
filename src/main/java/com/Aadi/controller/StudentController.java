package com.Aadi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Aadi.Service.StudentService;
import com.Aadi.entity.Student;

@Controller
public class StudentController {

	@Autowired
	StudentService service;
	
	
	@GetMapping("/enrollment")
	public String enrollment(Model model) {
		
		Student s1 = new Student();
		model.addAttribute("student",s1);
		
		return "Student-enrollment";
	}
	
	@PostMapping("/save")
	public String Savedata(Student student,Model model) {
		
		   String msgString =  service.saveStudent(student);
		
		   model.addAttribute("message", msgString);
		   
		   
		   return "Student-enrollment";
		   
	}
	
}
