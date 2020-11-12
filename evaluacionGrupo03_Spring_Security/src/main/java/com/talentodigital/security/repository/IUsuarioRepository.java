package com.talentodigital.security.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.talentodigital.security.model.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario,Integer> {
	
	public Usuario findByUser(String user);

}
