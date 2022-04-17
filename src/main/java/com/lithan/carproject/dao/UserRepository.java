package com.lithan.carproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lithan.carproject.dto.User;

public interface UserRepository extends JpaRepository<User, Long>{

	User findByUserName(String name);
}
