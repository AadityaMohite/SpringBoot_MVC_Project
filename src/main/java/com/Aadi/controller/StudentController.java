package com.Aadi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Aadi.entity.Student;

@Controller
public class StudentController {

	@GetMapping("/enrollment")
	public String enrollment(Model model) {
		
		Student s1 = new Student();
		model.addAttribute("student",s1);
		
		return "Student-enrollment";
	}
	
	
}
