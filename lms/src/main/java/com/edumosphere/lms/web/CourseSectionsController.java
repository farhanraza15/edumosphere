package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.CourseSections;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/coursesectionses")
@Controller
@RooWebScaffold(path = "coursesectionses", formBackingObject = CourseSections.class)
public class CourseSectionsController {
}
