package com.talentodigital.security;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.talentodigital.security.model.Cargo;
import com.talentodigital.security.model.Usuario;
import com.talentodigital.security.repository.ICargoRepository;
import com.talentodigital.security.repository.IUsuarioRepository;

@SpringBootTest
class EvaluacionGrupo03SpringSecurityApplicationTests {
	
	@Autowired
	private IUsuarioRepository repoUser;
	
	@Autowired
	private ICargoRepository repoCargo;
	
	@Autowired
	private BCryptPasswordEncoder encoder;

	@Test
	void contextLoads() {
		
		Cargo c1 = new Cargo();
		c1.setNombre("ADMIN");
		repoCargo.save(c1);
		
		Cargo c2 = new Cargo();
		c2.setNombre("PREMIUM");
		repoCargo.save(c2);
		
		Cargo c3 = new Cargo();
		c3.setNombre("TURISMO");
		repoCargo.save(c3);
		
		Usuario u1 = new Usuario();
		u1.setUser("admin");
		u1.setPass(encoder.encode("123"));
		u1.setCargo(c1);
		repoUser.save(u1);

		Usuario u2 = new Usuario();
		u2.setUser("premium");
		u2.setPass(encoder.encode("123"));
		u2.setCargo(c2);
		repoUser.save(u2);
		
		Usuario u3 = new Usuario();
		u3.setUser("turismo");
		u3.setPass(encoder.encode("123"));
		u3.setCargo(c3);
		repoUser.save(u3);
		
	}

}
