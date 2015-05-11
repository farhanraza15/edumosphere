// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.web;

import com.edumosphere.lms.domain.Company;
import com.edumosphere.lms.domain.Course;
import com.edumosphere.lms.domain.CourseFormatOptions;
import com.edumosphere.lms.web.CourseFormatOptionsController;
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

privileged aspect CourseFormatOptionsController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CourseFormatOptionsController.create(@Valid CourseFormatOptions courseFormatOptions, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, courseFormatOptions);
            return "courseformatoptionses/create";
        }
        uiModel.asMap().clear();
        courseFormatOptions.persist();
        return "redirect:/courseformatoptionses/" + encodeUrlPathSegment(courseFormatOptions.getFormatoptionid().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CourseFormatOptionsController.createForm(Model uiModel) {
        populateEditForm(uiModel, new CourseFormatOptions());
        return "courseformatoptionses/create";
    }
    
    @RequestMapping(value = "/{formatoptionid}", produces = "text/html")
    public String CourseFormatOptionsController.show(@PathVariable("formatoptionid") Long formatoptionid, Model uiModel) {
        uiModel.addAttribute("courseformatoptions", CourseFormatOptions.findCourseFormatOptions(formatoptionid));
        uiModel.addAttribute("itemId", formatoptionid);
        return "courseformatoptionses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CourseFormatOptionsController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("courseformatoptionses", CourseFormatOptions.findCourseFormatOptionsEntries(firstResult, sizeNo));
            float nrOfPages = (float) CourseFormatOptions.countCourseFormatOptionses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("courseformatoptionses", CourseFormatOptions.findAllCourseFormatOptionses());
        }
        return "courseformatoptionses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CourseFormatOptionsController.update(@Valid CourseFormatOptions courseFormatOptions, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, courseFormatOptions);
            return "courseformatoptionses/update";
        }
        uiModel.asMap().clear();
        courseFormatOptions.merge();
        return "redirect:/courseformatoptionses/" + encodeUrlPathSegment(courseFormatOptions.getFormatoptionid().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{formatoptionid}", params = "form", produces = "text/html")
    public String CourseFormatOptionsController.updateForm(@PathVariable("formatoptionid") Long formatoptionid, Model uiModel) {
        populateEditForm(uiModel, CourseFormatOptions.findCourseFormatOptions(formatoptionid));
        return "courseformatoptionses/update";
    }
    
    @RequestMapping(value = "/{formatoptionid}", method = RequestMethod.DELETE, produces = "text/html")
    public String CourseFormatOptionsController.delete(@PathVariable("formatoptionid") Long formatoptionid, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        CourseFormatOptions courseFormatOptions = CourseFormatOptions.findCourseFormatOptions(formatoptionid);
        courseFormatOptions.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/courseformatoptionses";
    }
    
    void CourseFormatOptionsController.populateEditForm(Model uiModel, CourseFormatOptions courseFormatOptions) {
        uiModel.addAttribute("courseFormatOptions", courseFormatOptions);
        uiModel.addAttribute("companys", Company.findAllCompanys());
        uiModel.addAttribute("courses", Course.findAllCourses());
    }
    
    String CourseFormatOptionsController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
