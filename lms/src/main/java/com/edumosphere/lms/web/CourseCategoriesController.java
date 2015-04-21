package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.CourseCategories;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/coursecategorieses")
@Controller
@RooWebScaffold(path = "coursecategorieses", formBackingObject = CourseCategories.class)
public class CourseCategoriesController {
}
