package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.CourseFormatOptions;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/courseformatoptionses")
@Controller
@RooWebScaffold(path = "courseformatoptionses", formBackingObject = CourseFormatOptions.class)
public class CourseFormatOptionsController {
}
