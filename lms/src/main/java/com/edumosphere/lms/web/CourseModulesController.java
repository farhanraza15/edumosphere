package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.CourseModules;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/coursemoduleses")
@Controller
@RooWebScaffold(path = "coursemoduleses", formBackingObject = CourseModules.class)
public class CourseModulesController {
}
