package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.AssignmentGrade;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/assignmentgrades")
@Controller
@RooWebScaffold(path = "assignmentgrades", formBackingObject = AssignmentGrade.class)
public class AssignmentGradeController {
}
