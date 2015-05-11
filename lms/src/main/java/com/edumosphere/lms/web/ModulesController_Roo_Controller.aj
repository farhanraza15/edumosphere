// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.web;

import com.edumosphere.lms.domain.Company;
import com.edumosphere.lms.domain.CourseModules;
import com.edumosphere.lms.domain.Modules;
import com.edumosphere.lms.web.ModulesController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ModulesController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ModulesController.create(@Valid Modules modules, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, modules);
            return "moduleses/create";
        }
        uiModel.asMap().clear();
        modules.persist();
        return "redirect:/moduleses/" + encodeUrlPathSegment(modules.getModuleid().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ModulesController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Modules());
        return "moduleses/create";
    }
    
    @RequestMapping(value = "/{moduleid}", produces = "text/html")
    public String ModulesController.show(@PathVariable("moduleid") Long moduleid, Model uiModel) {
        uiModel.addAttribute("modules", Modules.findModules(moduleid));
        uiModel.addAttribute("itemId", moduleid);
        return "moduleses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ModulesController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("moduleses", Modules.findModulesEntries(firstResult, sizeNo));
            float nrOfPages = (float) Modules.countModuleses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("moduleses", Modules.findAllModuleses());
        }
        return "moduleses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ModulesController.update(@Valid Modules modules, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, modules);
            return "moduleses/update";
        }
        uiModel.asMap().clear();
        modules.merge();
        return "redirect:/moduleses/" + encodeUrlPathSegment(modules.getModuleid().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{moduleid}", params = "form", produces = "text/html")
    public String ModulesController.updateForm(@PathVariable("moduleid") Long moduleid, Model uiModel) {
        populateEditForm(uiModel, Modules.findModules(moduleid));
        return "moduleses/update";
    }
    
    @RequestMapping(value = "/{moduleid}", method = RequestMethod.DELETE, produces = "text/html")
    public String ModulesController.delete(@PathVariable("moduleid") Long moduleid, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Modules modules = Modules.findModules(moduleid);
        modules.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/moduleses";
    }
    
    void ModulesController.populateEditForm(Model uiModel, Modules modules) {
        uiModel.addAttribute("modules", modules);
        uiModel.addAttribute("companys", Company.findAllCompanys());
        uiModel.addAttribute("coursemoduleses", CourseModules.findAllCourseModuleses());
    }
    
    String ModulesController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
