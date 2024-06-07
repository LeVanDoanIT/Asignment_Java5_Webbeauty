package com.poly.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Entity.ServiceEntity;
import com.poly.dao.ServiceDao;

@Controller
public class ServiceManageCtrl {
	@Autowired
	ServiceDao serviceDao;
	@RequestMapping("/manage/service")
	public String main(Model model) {
		List<ServiceEntity> list = serviceDao.findAll();
		String views = "service_manage.jsp";
		model.addAttribute("views", views);
		model.addAttribute("services", list);
		return "/admin/index";
	}
	@RequestMapping("/manage/service/add")
	public String add(Model model) {
		String views = "add_service.jsp";
		model.addAttribute("views", views);
		return "/admin/compoment/body/add_service";
	}
}
