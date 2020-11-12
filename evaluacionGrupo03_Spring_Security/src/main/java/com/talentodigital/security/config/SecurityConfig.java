package com.talentodigital.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.talentodigital.security.service.UsuarioServicio;

@EnableWebSecurity
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UsuarioServicio usuarioServicio;
	
	@Autowired
	private BCryptPasswordEncoder bCPE;
	
	@Bean
	public BCryptPasswordEncoder PasswordEncoder() {
		BCryptPasswordEncoder bCPE = new BCryptPasswordEncoder();
		return bCPE;
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
		.authorizeRequests()
		.antMatchers("/css/**","/js/**","/img/**").permitAll()
		.antMatchers("/","/login").permitAll()
		.antMatchers("/home","/servicioturismo","/serviciopremium").authenticated()
		.antMatchers("/home").hasAnyAuthority("ADMIN","PREMIUM","TURISMO")
		.antMatchers("/servicioturismo").hasAnyAuthority("ADMIN","TURISMO")
		.antMatchers("/serviciopremium").hasAnyAuthority("ADMIN","PREMIUM")
		.and()
		.formLogin().loginPage("/login").permitAll()
		.and()
		.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/login");

	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(usuarioServicio).passwordEncoder(bCPE);
	}
	
	
}
