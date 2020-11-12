package com.talentodigital.security.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.talentodigital.security.model.Cargo;

public interface ICargoRepository extends JpaRepository<Cargo, Integer> {

}
