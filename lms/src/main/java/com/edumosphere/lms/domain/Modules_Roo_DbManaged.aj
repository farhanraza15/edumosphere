// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.Company;
import com.edumosphere.lms.domain.CourseModules;
import com.edumosphere.lms.domain.Modules;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Modules_Roo_DbManaged {
    
    @OneToMany(mappedBy = "moduleid", cascade = CascadeType.ALL)
    private Set<CourseModules> Modules.courseModuleses;
    
    @ManyToOne
    @JoinColumn(name = "companyid", referencedColumnName = "companyid", nullable = false)
    private Company Modules.companyid;
    
    @Column(name = "name", length = 20)
    @NotNull
    private String Modules.name;
    
    @Column(name = "cron")
    @NotNull
    private Long Modules.cron;
    
    @Column(name = "lastcron")
    @NotNull
    private Long Modules.lastcron;
    
    @Column(name = "search", length = 255)
    @NotNull
    private String Modules.search;
    
    @Column(name = "status")
    @NotNull
    private boolean Modules.status;
    
    public Set<CourseModules> Modules.getCourseModuleses() {
        return courseModuleses;
    }
    
    public void Modules.setCourseModuleses(Set<CourseModules> courseModuleses) {
        this.courseModuleses = courseModuleses;
    }
    
    public Company Modules.getCompanyid() {
        return companyid;
    }
    
    public void Modules.setCompanyid(Company companyid) {
        this.companyid = companyid;
    }
    
    public String Modules.getName() {
        return name;
    }
    
    public void Modules.setName(String name) {
        this.name = name;
    }
    
    public Long Modules.getCron() {
        return cron;
    }
    
    public void Modules.setCron(Long cron) {
        this.cron = cron;
    }
    
    public Long Modules.getLastcron() {
        return lastcron;
    }
    
    public void Modules.setLastcron(Long lastcron) {
        this.lastcron = lastcron;
    }
    
    public String Modules.getSearch() {
        return search;
    }
    
    public void Modules.setSearch(String search) {
        this.search = search;
    }
    
    public boolean Modules.isStatus() {
        return status;
    }
    
    public void Modules.setStatus(boolean status) {
        this.status = status;
    }
    
}
