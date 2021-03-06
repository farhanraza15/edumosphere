// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.web;

import com.edumosphere.lms.domain.Course;
import com.edumosphere.lms.domain.Enrolment;
import com.edumosphere.lms.domain.UserEnrolment;
import com.edumosphere.lms.web.EnrolmentController;
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

privileged aspect EnrolmentController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String EnrolmentController.create(@Valid Enrolment enrolment, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, enrolment);
            return "enrolments/create";
        }
        uiModel.asMap().clear();
        enrolment.persist();
        return "redirect:/enrolments/" + encodeUrlPathSegment(enrolment.getEnrolmentid().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String EnrolmentController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Enrolment());
        return "enrolments/create";
    }
    
    @RequestMapping(value = "/{enrolmentid}", produces = "text/html")
    public String EnrolmentController.show(@PathVariable("enrolmentid") Long enrolmentid, Model uiModel) {
        uiModel.addAttribute("enrolment", Enrolment.findEnrolment(enrolmentid));
        uiModel.addAttribute("itemId", enrolmentid);
        return "enrolments/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EnrolmentController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("enrolments", Enrolment.findEnrolmentEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Enrolment.countEnrolments() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("enrolments", Enrolment.findAllEnrolments(sortFieldName, sortOrder));
        }
        return "enrolments/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EnrolmentController.update(@Valid Enrolment enrolment, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, enrolment);
            return "enrolments/update";
        }
        uiModel.asMap().clear();
        enrolment.merge();
        return "redirect:/enrolments/" + encodeUrlPathSegment(enrolment.getEnrolmentid().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{enrolmentid}", params = "form", produces = "text/html")
    public String EnrolmentController.updateForm(@PathVariable("enrolmentid") Long enrolmentid, Model uiModel) {
        populateEditForm(uiModel, Enrolment.findEnrolment(enrolmentid));
        return "enrolments/update";
    }
    
    @RequestMapping(value = "/{enrolmentid}", method = RequestMethod.DELETE, produces = "text/html")
    public String EnrolmentController.delete(@PathVariable("enrolmentid") Long enrolmentid, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Enrolment enrolment = Enrolment.findEnrolment(enrolmentid);
        enrolment.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/enrolments";
    }
    
    void EnrolmentController.populateEditForm(Model uiModel, Enrolment enrolment) {
        uiModel.addAttribute("enrolment", enrolment);
        uiModel.addAttribute("courses", Course.findAllCourses());
        uiModel.addAttribute("userenrolments", UserEnrolment.findAllUserEnrolments());
    }
    
    String EnrolmentController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
