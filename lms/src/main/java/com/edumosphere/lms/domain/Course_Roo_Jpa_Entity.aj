// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.Course;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Course_Roo_Jpa_Entity {
    
    declare @type: Course: @Entity;
    
    declare @type: Course: @Table(name = "course");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "courseid")
    private Long Course.courseid;
    
    public Long Course.getCourseid() {
        return this.courseid;
    }
    
    public void Course.setCourseid(Long id) {
        this.courseid = id;
    }
    
}
