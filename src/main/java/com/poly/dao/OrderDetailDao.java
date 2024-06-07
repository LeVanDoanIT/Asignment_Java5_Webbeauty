package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.Entity.OrderdetailEntity;
import com.poly.Entity.Statistical;

public interface OrderDetailDao extends JpaRepository<OrderdetailEntity, Integer> {
	@Query("select new Statistical(od.product, sum(od.quantity), sum(od.total* od.quantity)) from OrderdetailEntity od group by od.product")
	List<Statistical> thongkeOrder();
}
