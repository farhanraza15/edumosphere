package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.CourseCompletions;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/coursecompletionses")
@Controller
@RooWebScaffold(path = "coursecompletionses", formBackingObject = CourseCompletions.class)
public class CourseCompletionsController {
}
