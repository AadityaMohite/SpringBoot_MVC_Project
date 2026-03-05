package com.Aadi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="students")
public class Student {
    @Id
	private Integer id;
    
    
	private String name;
	
	@Column(unique = true)
	private String email;
	
	private String qualification;
	
	private String gender;
	
	private String course;
	
	private String timings;
	
	private String address;
	
	private String mobileno;
	
	private String courseduration;
	
	
	
}
