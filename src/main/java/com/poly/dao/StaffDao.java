package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.Entity.StaffEntity;
import com.poly.Entity.UserEntity;

public interface StaffDao extends JpaRepository<StaffEntity	, Integer> {
	List<StaffEntity> findByPhoneLike(String phone);
}
