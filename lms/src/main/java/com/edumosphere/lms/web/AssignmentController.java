package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.Assignment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/assignments")
@Controller
@RooWebScaffold(path = "assignments", formBackingObject = Assignment.class)
public class AssignmentController {
}
