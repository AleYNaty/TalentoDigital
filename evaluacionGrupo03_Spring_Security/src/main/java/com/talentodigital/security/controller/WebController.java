package com.talentodigital.security.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {
	
	
	@GetMapping("/")
	public String getIndex(Authentication auth) {
		if(auth != null)
		{
			if(auth.getAuthorities().contains(new SimpleGrantedAuthority("PREMIUM")))
			{
				return "serviciopremium";
			}
			else if (auth.getAuthorities().contains(new SimpleGrantedAuthority("TURISMO")))
			{
				return "servicioturismo";
			}
			else if (auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN")))
			{
				return "home";
			}
			else
			{
				return "login";
			}
		}
		return "login";
		
	}	
	

	
	@GetMapping("/home")
	public String getHome() {
		return "home";
	}
	
	@GetMapping("/login")
	public String getLogin() {
		return"login";
	}
	
	@GetMapping("/serviciopremium")
	public String getPremium() {
		return"serviciopremium";
	}
	
	@GetMapping("/servicioturismo")
	public String getTurismo() {
		return"servicioturismo";
	}
	

}
