package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.Entity.StaffEntity;

public interface StaffDao extends JpaRepository<StaffEntity	, Integer> {

}
