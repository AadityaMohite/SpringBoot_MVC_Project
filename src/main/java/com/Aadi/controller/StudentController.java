package com.Aadi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Aadi.Service.StudentService;
import com.Aadi.Studentdto.StudentDto;
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
		   
		   if(msgString.equals("Email is alerady exists please enter the new email")) {
			   model.addAttribute("msg",msgString);
			   model.addAttribute("student",student);
			   return "Student-enrollment";
		   }else {
	     	   model.addAttribute("message", msgString);
	     	   model.addAttribute("student",new Student());
	     	   return "Student-enrollment";
		   }
		   
		   
		   
	}
	
	@GetMapping("/student-List")
	
	public String StudentList( Model model){
		
		       List<StudentDto> students =    service.getAll();
		
		       model.addAttribute("students", students);
		       
		         
		
		return "Student-List";
		
	}
	
	@GetMapping("/home")
	public String homePage(Model model) {
		
		long totalstudent = service.totalStudent();
		model.addAttribute("totalstudent", totalstudent);
		
		 long count =      service.totaljavafullstack();
	      model.addAttribute("count",count);
	      
	    long pythoncount =  service.totalpythonfullstack();
	    model.addAttribute("pythoncount", pythoncount);
		
		return "home";
	}
	
	@GetMapping("/edit")
	
	public String editstudent(@RequestParam int id, Model model) {
		
		
	Student student =	service.editStudent(id);
		
	model.addAttribute("student",student);
		
	
		
		return "edit-student";
		
	}
	
	@PostMapping("/update")
	public String updateStudent(Student student,Model model) {
		
		service.saveStudent(student);
		
		model.addAttribute("msg", "Update data Sucessfully");
		
		return "redirect:/student-List";
	}
	
	
	@GetMapping("/delete")
	public String deleteByID(@RequestParam int id) {
		
		      service.deletestudent(id);
		      return "redirect:/student-List";
	}
	
	@GetMapping("/About")
	public String about() {
		return "About";
	}
	
	@GetMapping("/Javafull")
	public String JfullStack(Model model) {
		List<StudentDto> students = service.Jfullstack();
		
		model.addAttribute("students", students);
		
		return "Javafull";
		
	}
	@GetMapping("/Pythonfull")
	public String PfullStack(Model model) {
		List<StudentDto> students = service.Pfullstack();
		model.addAttribute("students", students);
		return "Pythonfull";
	}
	
	
}
