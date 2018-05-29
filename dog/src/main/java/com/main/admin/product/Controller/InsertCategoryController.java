package com.main.admin.product.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.main.admin.product.Service.InsertCategoryService;

@Controller
public class InsertCategoryController {
	@Autowired
	InsertCategoryService InsertCategoryService;
}
