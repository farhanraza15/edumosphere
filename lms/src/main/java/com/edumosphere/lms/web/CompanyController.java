package com.edumosphere.lms.web;
import com.edumosphere.lms.domain.Company;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/companys")
@Controller
@RooWebScaffold(path = "companys", formBackingObject = Company.class)
public class CompanyController {
}
