// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.CourseFormatOptions;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect CourseFormatOptions_Roo_Jpa_Entity {
    
    declare @type: CourseFormatOptions: @Entity;
    
    declare @type: CourseFormatOptions: @Table(name = "course_format_options");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "formatoptionid")
    private Long CourseFormatOptions.formatoptionid;
    
    public Long CourseFormatOptions.getFormatoptionid() {
        return this.formatoptionid;
    }
    
    public void CourseFormatOptions.setFormatoptionid(Long id) {
        this.formatoptionid = id;
    }
    
}
