package com.poly.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.Entity.UserEntity;
import com.poly.dao.StaffDao;
import com.poly.dao.UserDao;

@Controller
public class UserManageCtrl {
	@Autowired
	UserDao userDao;

	@RequestMapping("/manage/user")
	public String home(Model model) {
		List<UserEntity> list;
		list = userDao.findAll();
		model.addAttribute("listUser", list);
		model.addAttribute("views","user_manage.jsp");
		return "/admin/index";
	}

	@RequestMapping("/manage/user/timkiem")
	public String timKiem(@RequestParam("name") Optional<String> name, @RequestParam("phone") Optional<String> phone,
			Model model) {
		List<UserEntity> list = userDao.findByPhoneLike("%" + phone.get() + "%");
		model.addAttribute("listUser", list);
		return "/admin/index";
	}

}
