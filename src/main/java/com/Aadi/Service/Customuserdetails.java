package com.Aadi.Service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.Aadi.Exception.UsernotfoundException;
import com.Aadi.entity.User;
import com.Aadi.repo.UserRepository;
@Service
public class Customuserdetails implements UserDetailsService{

	@Autowired
	public UserRepository userrpoRepository;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		
		                  Optional<User> user  =  userrpoRepository.findByUsername(username);
		
		                     if(user.isPresent()) {
		                    User user2	= user.get();
		                    return    org.springframework.security.core.userdetails.User.withUsername(username)
		                    		.password(user2.getPassword())
		                    		.roles(user2.getRole())
		                    		.build();
		                     }else {
		                    	 throw new UsernotfoundException("User is not found for this username");
		                     }
		
		
		
		
	}

	
	
	
	
}
