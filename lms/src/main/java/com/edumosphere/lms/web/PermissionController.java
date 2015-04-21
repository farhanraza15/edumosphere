package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.Permission;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/permissions")
@Controller
@RooWebScaffold(path = "permissions", formBackingObject = Permission.class)
public class PermissionController {
}
