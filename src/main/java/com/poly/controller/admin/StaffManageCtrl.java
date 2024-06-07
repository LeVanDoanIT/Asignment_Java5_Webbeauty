package com.poly.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.Entity.StaffEntity;
import com.poly.Entity.UserEntity;
import com.poly.dao.StaffDao;

@Controller
public class StaffManageCtrl {
	@Autowired
	StaffDao staffDao;

	@RequestMapping("/manage/staff")
	public String home(Model model, @RequestParam("phone") Optional<String> phone) {
		String views = "staff_manage.jsp";
		List<StaffEntity> list;
		if (!phone.isEmpty()) {
			list = staffDao.findByPhoneLike("%" + phone.get() + "%");
		} else {
			list = staffDao.findAll();
		}
		model.addAttribute("list", list);
		model.addAttribute("views", views);
		return "/admin/index";
	}

}
