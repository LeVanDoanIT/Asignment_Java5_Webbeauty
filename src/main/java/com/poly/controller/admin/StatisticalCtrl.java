package com.poly.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Entity.Statistical;
import com.poly.dao.OrderDetailDao;

@Controller

public class StatisticalCtrl {
	@Autowired
	OrderDetailDao orderDetailDao;

	@RequestMapping("/manage/statistical")
	public String thongke(Model model) {
		try {
			model.addAttribute("views", "statistical.jsp");
			List<Statistical> ketquaTK = orderDetailDao.thongkeOrder();
			model.addAttribute("ketqua", ketquaTK);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("lỗi"+e);
		}
		return "/admin/index";
	}
}
