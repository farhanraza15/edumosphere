// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.Company;
import com.edumosphere.lms.domain.Course;
import com.edumosphere.lms.domain.CourseFormatOptions;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect CourseFormatOptions_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "companyid", referencedColumnName = "companyid", nullable = false)
    private Company CourseFormatOptions.companyid;
    
    @ManyToOne
    @JoinColumn(name = "courseid", referencedColumnName = "courseid", nullable = false)
    private Course CourseFormatOptions.courseid;
    
    @Column(name = "format", length = 21, unique = true)
    @NotNull
    private String CourseFormatOptions.format;
    
    @Column(name = "sectionid", unique = true)
    @NotNull
    private Long CourseFormatOptions.sectionid;
    
    @Column(name = "name", length = 100, unique = true)
    @NotNull
    private String CourseFormatOptions.name;
    
    @Column(name = "value")
    private String CourseFormatOptions.value;
    
    public Company CourseFormatOptions.getCompanyid() {
        return companyid;
    }
    
    public void CourseFormatOptions.setCompanyid(Company companyid) {
        this.companyid = companyid;
    }
    
    public Course CourseFormatOptions.getCourseid() {
        return courseid;
    }
    
    public void CourseFormatOptions.setCourseid(Course courseid) {
        this.courseid = courseid;
    }
    
    public String CourseFormatOptions.getFormat() {
        return format;
    }
    
    public void CourseFormatOptions.setFormat(String format) {
        this.format = format;
    }
    
    public Long CourseFormatOptions.getSectionid() {
        return sectionid;
    }
    
    public void CourseFormatOptions.setSectionid(Long sectionid) {
        this.sectionid = sectionid;
    }
    
    public String CourseFormatOptions.getName() {
        return name;
    }
    
    public void CourseFormatOptions.setName(String name) {
        this.name = name;
    }
    
    public String CourseFormatOptions.getValue() {
        return value;
    }
    
    public void CourseFormatOptions.setValue(String value) {
        this.value = value;
    }
    
}