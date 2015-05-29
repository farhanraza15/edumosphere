package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.UserEnrolment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/userenrolments")
@Controller
@RooWebScaffold(path = "userenrolments", formBackingObject = UserEnrolment.class)
public class UserEnrolmentController {
}
