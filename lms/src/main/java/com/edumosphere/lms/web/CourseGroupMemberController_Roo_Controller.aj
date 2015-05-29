// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.web;

import com.edumosphere.lms.domain.Company;
import com.edumosphere.lms.domain.CourseGroup;
import com.edumosphere.lms.domain.CourseGroupMember;
import com.edumosphere.lms.domain.User;
import com.edumosphere.lms.web.CourseGroupMemberController;
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

privileged aspect CourseGroupMemberController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CourseGroupMemberController.create(@Valid CourseGroupMember courseGroupMember, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, courseGroupMember);
            return "coursegroupmembers/create";
        }
        uiModel.asMap().clear();
        courseGroupMember.persist();
        return "redirect:/coursegroupmembers/" + encodeUrlPathSegment(courseGroupMember.getCougrpmemid().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CourseGroupMemberController.createForm(Model uiModel) {
        populateEditForm(uiModel, new CourseGroupMember());
        return "coursegroupmembers/create";
    }
    
    @RequestMapping(value = "/{cougrpmemid}", produces = "text/html")
    public String CourseGroupMemberController.show(@PathVariable("cougrpmemid") Long cougrpmemid, Model uiModel) {
        uiModel.addAttribute("coursegroupmember", CourseGroupMember.findCourseGroupMember(cougrpmemid));
        uiModel.addAttribute("itemId", cougrpmemid);
        return "coursegroupmembers/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CourseGroupMemberController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("coursegroupmembers", CourseGroupMember.findCourseGroupMemberEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) CourseGroupMember.countCourseGroupMembers() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("coursegroupmembers", CourseGroupMember.findAllCourseGroupMembers(sortFieldName, sortOrder));
        }
        return "coursegroupmembers/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CourseGroupMemberController.update(@Valid CourseGroupMember courseGroupMember, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, courseGroupMember);
            return "coursegroupmembers/update";
        }
        uiModel.asMap().clear();
        courseGroupMember.merge();
        return "redirect:/coursegroupmembers/" + encodeUrlPathSegment(courseGroupMember.getCougrpmemid().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{cougrpmemid}", params = "form", produces = "text/html")
    public String CourseGroupMemberController.updateForm(@PathVariable("cougrpmemid") Long cougrpmemid, Model uiModel) {
        populateEditForm(uiModel, CourseGroupMember.findCourseGroupMember(cougrpmemid));
        return "coursegroupmembers/update";
    }
    
    @RequestMapping(value = "/{cougrpmemid}", method = RequestMethod.DELETE, produces = "text/html")
    public String CourseGroupMemberController.delete(@PathVariable("cougrpmemid") Long cougrpmemid, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        CourseGroupMember courseGroupMember = CourseGroupMember.findCourseGroupMember(cougrpmemid);
        courseGroupMember.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/coursegroupmembers";
    }
    
    void CourseGroupMemberController.populateEditForm(Model uiModel, CourseGroupMember courseGroupMember) {
        uiModel.addAttribute("courseGroupMember", courseGroupMember);
        uiModel.addAttribute("companys", Company.findAllCompanys());
        uiModel.addAttribute("coursegroups", CourseGroup.findAllCourseGroups());
        uiModel.addAttribute("users", User.findAllUsers());
    }
    
    String CourseGroupMemberController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
