package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.Modules;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/moduleses")
@Controller
@RooWebScaffold(path = "moduleses", formBackingObject = Modules.class)
public class ModulesController {
}
