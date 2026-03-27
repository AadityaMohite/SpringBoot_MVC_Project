package com.Aadi.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.Aadi.Service.Customuserdetails;
@Configuration
@EnableWebSecurity
public class Config {

	@Bean
	public BCryptPasswordEncoder encoder() {
		
		return new BCryptPasswordEncoder();
	}
	
	@Autowired
public	Customuserdetails customuserdetails;
	
	
	@Bean
	public DaoAuthenticationProvider authenticateuser() {
	    DaoAuthenticationProvider provider = new DaoAuthenticationProvider(customuserdetails);
	 
	    provider.setPasswordEncoder(encoder());
	    return provider;
	}
	
	
	
	
	
	@Bean
	public SecurityFilterChain filter(HttpSecurity http) throws Exception {

	    http.csrf(csrf -> csrf.disable());

	    http.authorizeHttpRequests(auth -> auth
	        .requestMatchers("/auth/save-user").permitAll()
	        .requestMatchers("/home").hasAnyRole("USER","ADMIN")
	        .requestMatchers("/About").hasAnyRole("ADMIN","USER")
	        .requestMatchers("/Javafull").hasAnyRole("ADMIN","USER")
	        .requestMatchers("/Pythonfull").hasAnyRole("ADMIN","USER")
	        .requestMatchers("/student-List").hasAnyRole("USER","ADMIN")
	        .requestMatchers("/edit","/update","/delete","/enrollment","/save").hasRole("ADMIN")
	        .anyRequest().authenticated()
	    )

	    // ✅ ADD EXACTLY HERE
	    .exceptionHandling(ex -> ex
	        .accessDeniedPage("/access-denied")
	    )

	    // ✅ THEN THIS
	    .formLogin(form -> form.permitAll());

	    return http.build();
	}
	
}
