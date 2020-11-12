package com.talentodigital.security.service;

import org.springframework.stereotype.Service;

import com.talentodigital.security.model.Usuario;
import com.talentodigital.security.repository.IUsuarioRepository;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

@Service
public class UsuarioServicio implements UserDetailsService {
	
	@Autowired
	private IUsuarioRepository repoUser;

	@Override
	public UserDetails loadUserByUsername(String user) throws UsernameNotFoundException {
		Usuario u = repoUser.findByUser(user);
		
		ArrayList<GrantedAuthority> cargo = new ArrayList<GrantedAuthority>();
		cargo.add(new SimpleGrantedAuthority(u.getCargo().getNombre()));
		
		UserDetails userDT = new User(u.getUser(), u.getPass(), cargo);
		
		return userDT;
	}

}
