package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.AssignmentUserMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/assignmentusermappings")
@Controller
@RooWebScaffold(path = "assignmentusermappings", formBackingObject = AssignmentUserMapping.class)
public class AssignmentUserMappingController {
}
