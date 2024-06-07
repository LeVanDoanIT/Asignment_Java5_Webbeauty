package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.Entity.ServiceEntity;

public interface ServiceDao extends JpaRepository<ServiceEntity, Integer>{

}
