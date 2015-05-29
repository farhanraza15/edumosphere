package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.CourseGroupMember;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/coursegroupmembers")
@Controller
@RooWebScaffold(path = "coursegroupmembers", formBackingObject = CourseGroupMember.class)
public class CourseGroupMemberController {
}
