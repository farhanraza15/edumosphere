// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.CourseModules;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect CourseModules_Roo_Jpa_Entity {
    
    declare @type: CourseModules: @Entity;
    
    declare @type: CourseModules: @Table(name = "course_modules");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "coursemoduleid")
    private Long CourseModules.coursemoduleid;
    
    public Long CourseModules.getCoursemoduleid() {
        return this.coursemoduleid;
    }
    
    public void CourseModules.setCoursemoduleid(Long id) {
        this.coursemoduleid = id;
    }
    
}
