// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.Company;
import com.edumosphere.lms.domain.Course;
import com.edumosphere.lms.domain.CourseSections;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect CourseSections_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "courseid", referencedColumnName = "courseid", nullable = false)
    private Course CourseSections.courseid;
    
    @ManyToOne
    @JoinColumn(name = "companyid", referencedColumnName = "companyid", nullable = false)
    private Company CourseSections.companyid;
    
    @Column(name = "section", unique = true)
    @NotNull
    private Long CourseSections.section;
    
    @Column(name = "name", length = 255)
    private String CourseSections.name;
    
    @Column(name = "summary")
    private String CourseSections.summary;
    
    @Column(name = "summaryformat")
    @NotNull
    private Short CourseSections.summaryformat;
    
    @Column(name = "sequence")
    private String CourseSections.sequence;
    
    @Column(name = "status")
    @NotNull
    private boolean CourseSections.status;
    
    public Course CourseSections.getCourseid() {
        return courseid;
    }
    
    public void CourseSections.setCourseid(Course courseid) {
        this.courseid = courseid;
    }
    
    public Company CourseSections.getCompanyid() {
        return companyid;
    }
    
    public void CourseSections.setCompanyid(Company companyid) {
        this.companyid = companyid;
    }
    
    public Long CourseSections.getSection() {
        return section;
    }
    
    public void CourseSections.setSection(Long section) {
        this.section = section;
    }
    
    public String CourseSections.getName() {
        return name;
    }
    
    public void CourseSections.setName(String name) {
        this.name = name;
    }
    
    public String CourseSections.getSummary() {
        return summary;
    }
    
    public void CourseSections.setSummary(String summary) {
        this.summary = summary;
    }
    
    public Short CourseSections.getSummaryformat() {
        return summaryformat;
    }
    
    public void CourseSections.setSummaryformat(Short summaryformat) {
        this.summaryformat = summaryformat;
    }
    
    public String CourseSections.getSequence() {
        return sequence;
    }
    
    public void CourseSections.setSequence(String sequence) {
        this.sequence = sequence;
    }
    
    public boolean CourseSections.isStatus() {
        return status;
    }
    
    public void CourseSections.setStatus(boolean status) {
        this.status = status;
    }
    
}
