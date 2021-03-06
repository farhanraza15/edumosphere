// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.Company;
import com.edumosphere.lms.domain.CourseGroup;
import com.edumosphere.lms.domain.CourseGroupMember;
import com.edumosphere.lms.domain.User;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect CourseGroupMember_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "coursegroupid", referencedColumnName = "coursegroupid", nullable = false)
    private CourseGroup CourseGroupMember.coursegroupid;
    
    @ManyToOne
    @JoinColumn(name = "userid", referencedColumnName = "userid", nullable = false)
    private User CourseGroupMember.userid;
    
    @ManyToOne
    @JoinColumn(name = "companyid", referencedColumnName = "companyid", nullable = false)
    private Company CourseGroupMember.companyid;
    
    @Column(name = "timeadded")
    @NotNull
    private Long CourseGroupMember.timeadded;
    
    @Column(name = "component", length = 100)
    @NotNull
    private String CourseGroupMember.component;
    
    @Column(name = "itemid")
    @NotNull
    private Long CourseGroupMember.itemid;
    
    public CourseGroup CourseGroupMember.getCoursegroupid() {
        return coursegroupid;
    }
    
    public void CourseGroupMember.setCoursegroupid(CourseGroup coursegroupid) {
        this.coursegroupid = coursegroupid;
    }
    
    public User CourseGroupMember.getUserid() {
        return userid;
    }
    
    public void CourseGroupMember.setUserid(User userid) {
        this.userid = userid;
    }
    
    public Company CourseGroupMember.getCompanyid() {
        return companyid;
    }
    
    public void CourseGroupMember.setCompanyid(Company companyid) {
        this.companyid = companyid;
    }
    
    public Long CourseGroupMember.getTimeadded() {
        return timeadded;
    }
    
    public void CourseGroupMember.setTimeadded(Long timeadded) {
        this.timeadded = timeadded;
    }
    
    public String CourseGroupMember.getComponent() {
        return component;
    }
    
    public void CourseGroupMember.setComponent(String component) {
        this.component = component;
    }
    
    public Long CourseGroupMember.getItemid() {
        return itemid;
    }
    
    public void CourseGroupMember.setItemid(Long itemid) {
        this.itemid = itemid;
    }
    
}
