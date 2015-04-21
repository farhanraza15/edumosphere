package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.CourseModulesCompletion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/coursemodulescompletions")
@Controller
@RooWebScaffold(path = "coursemodulescompletions", formBackingObject = CourseModulesCompletion.class)
public class CourseModulesCompletionController {
}
