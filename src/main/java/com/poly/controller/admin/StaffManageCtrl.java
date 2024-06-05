package com.poly.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Entity.StaffEntity;
import com.poly.Entity.UserEntity;
import com.poly.dao.StaffDao;

@Controller
public class StaffManageCtrl {
	@Autowired
	StaffDao staffDao;
	
	@RequestMapping("/manage/staff")
	public String home(Model model) {
		List<StaffEntity> list = staffDao.findAll();
		model.addAttribute("list", list);
		model.addAttribute("views","staff_manage.jsp");
		return "/admin/index";
	}

}
