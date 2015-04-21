package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.Userpermission;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/userpermissions")
@Controller
@RooWebScaffold(path = "userpermissions", formBackingObject = Userpermission.class)
public class UserpermissionController {
}
