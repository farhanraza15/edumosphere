// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.web;

import com.edumosphere.lms.domain.Company;
import com.edumosphere.lms.domain.Course;
import com.edumosphere.lms.domain.CourseCategories;
import com.edumosphere.lms.web.CourseCategoriesController;
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

privileged aspect CourseCategoriesController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CourseCategoriesController.create(@Valid CourseCategories courseCategories, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, courseCategories);
            return "coursecategorieses/create";
        }
        uiModel.asMap().clear();
        courseCategories.persist();
        return "redirect:/coursecategorieses/" + encodeUrlPathSegment(courseCategories.getCategoryid().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CourseCategoriesController.createForm(Model uiModel) {
        populateEditForm(uiModel, new CourseCategories());
        return "coursecategorieses/create";
    }
    
    @RequestMapping(value = "/{categoryid}", produces = "text/html")
    public String CourseCategoriesController.show(@PathVariable("categoryid") Long categoryid, Model uiModel) {
        uiModel.addAttribute("coursecategories", CourseCategories.findCourseCategories(categoryid));
        uiModel.addAttribute("itemId", categoryid);
        return "coursecategorieses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CourseCategoriesController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("coursecategorieses", CourseCategories.findCourseCategoriesEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) CourseCategories.countCourseCategorieses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("coursecategorieses", CourseCategories.findAllCourseCategorieses(sortFieldName, sortOrder));
        }
        return "coursecategorieses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CourseCategoriesController.update(@Valid CourseCategories courseCategories, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, courseCategories);
            return "coursecategorieses/update";
        }
        uiModel.asMap().clear();
        courseCategories.merge();
        return "redirect:/coursecategorieses/" + encodeUrlPathSegment(courseCategories.getCategoryid().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{categoryid}", params = "form", produces = "text/html")
    public String CourseCategoriesController.updateForm(@PathVariable("categoryid") Long categoryid, Model uiModel) {
        populateEditForm(uiModel, CourseCategories.findCourseCategories(categoryid));
        return "coursecategorieses/update";
    }
    
    @RequestMapping(value = "/{categoryid}", method = RequestMethod.DELETE, produces = "text/html")
    public String CourseCategoriesController.delete(@PathVariable("categoryid") Long categoryid, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        CourseCategories courseCategories = CourseCategories.findCourseCategories(categoryid);
        courseCategories.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/coursecategorieses";
    }
    
    void CourseCategoriesController.populateEditForm(Model uiModel, CourseCategories courseCategories) {
        uiModel.addAttribute("courseCategories", courseCategories);
        uiModel.addAttribute("companys", Company.findAllCompanys());
        uiModel.addAttribute("courses", Course.findAllCourses());
        uiModel.addAttribute("coursecategorieses", CourseCategories.findAllCourseCategorieses());
    }
    
    String CourseCategoriesController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
