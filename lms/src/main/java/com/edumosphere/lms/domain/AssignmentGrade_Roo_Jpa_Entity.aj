// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.AssignmentGrade;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect AssignmentGrade_Roo_Jpa_Entity {
    
    declare @type: AssignmentGrade: @Entity;
    
    declare @type: AssignmentGrade: @Table(name = "assignment_grade");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "asggradedid")
    private Long AssignmentGrade.asggradedid;
    
    public Long AssignmentGrade.getAsggradedid() {
        return this.asggradedid;
    }
    
    public void AssignmentGrade.setAsggradedid(Long id) {
        this.asggradedid = id;
    }
    
}