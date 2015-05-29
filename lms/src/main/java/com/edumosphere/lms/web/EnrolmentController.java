package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.Enrolment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/enrolments")
@Controller
@RooWebScaffold(path = "enrolments", formBackingObject = Enrolment.class)
public class EnrolmentController {
}
