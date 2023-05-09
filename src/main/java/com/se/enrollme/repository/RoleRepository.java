package com.se.enrollme.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.se.enrollme.model.Role;


public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);

}