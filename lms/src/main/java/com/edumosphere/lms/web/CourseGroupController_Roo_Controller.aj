// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.web;

import com.edumosphere.lms.domain.Course;
import com.edumosphere.lms.domain.CourseGroup;
import com.edumosphere.lms.domain.CourseGroupMember;
import com.edumosphere.lms.web.CourseGroupController;
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

privileged aspect CourseGroupController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CourseGroupController.create(@Valid CourseGroup courseGroup, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, courseGroup);
            return "coursegroups/create";
        }
        uiModel.asMap().clear();
        courseGroup.persist();
        return "redirect:/coursegroups/" + encodeUrlPathSegment(courseGroup.getCoursegroupid().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CourseGroupController.createForm(Model uiModel) {
        populateEditForm(uiModel, new CourseGroup());
        return "coursegroups/create";
    }
    
    @RequestMapping(value = "/{coursegroupid}", produces = "text/html")
    public String CourseGroupController.show(@PathVariable("coursegroupid") Long coursegroupid, Model uiModel) {
        uiModel.addAttribute("coursegroup", CourseGroup.findCourseGroup(coursegroupid));
        uiModel.addAttribute("itemId", coursegroupid);
        return "coursegroups/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CourseGroupController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("coursegroups", CourseGroup.findCourseGroupEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) CourseGroup.countCourseGroups() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("coursegroups", CourseGroup.findAllCourseGroups(sortFieldName, sortOrder));
        }
        return "coursegroups/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CourseGroupController.update(@Valid CourseGroup courseGroup, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, courseGroup);
            return "coursegroups/update";
        }
        uiModel.asMap().clear();
        courseGroup.merge();
        return "redirect:/coursegroups/" + encodeUrlPathSegment(courseGroup.getCoursegroupid().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{coursegroupid}", params = "form", produces = "text/html")
    public String CourseGroupController.updateForm(@PathVariable("coursegroupid") Long coursegroupid, Model uiModel) {
        populateEditForm(uiModel, CourseGroup.findCourseGroup(coursegroupid));
        return "coursegroups/update";
    }
    
    @RequestMapping(value = "/{coursegroupid}", method = RequestMethod.DELETE, produces = "text/html")
    public String CourseGroupController.delete(@PathVariable("coursegroupid") Long coursegroupid, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        CourseGroup courseGroup = CourseGroup.findCourseGroup(coursegroupid);
        courseGroup.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/coursegroups";
    }
    
    void CourseGroupController.populateEditForm(Model uiModel, CourseGroup courseGroup) {
        uiModel.addAttribute("courseGroup", courseGroup);
        uiModel.addAttribute("courses", Course.findAllCourses());
        uiModel.addAttribute("coursegroupmembers", CourseGroupMember.findAllCourseGroupMembers());
    }
    
    String CourseGroupController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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