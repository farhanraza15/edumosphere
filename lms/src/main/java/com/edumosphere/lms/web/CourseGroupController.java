package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.CourseGroup;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/coursegroups")
@Controller
@RooWebScaffold(path = "coursegroups", formBackingObject = CourseGroup.class)
public class CourseGroupController {
}
