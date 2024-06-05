package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.Entity.UserEntity;

public interface UserDao extends JpaRepository<UserEntity, Integer>{
	List<UserEntity> findByPhoneLike(String phone);
}
