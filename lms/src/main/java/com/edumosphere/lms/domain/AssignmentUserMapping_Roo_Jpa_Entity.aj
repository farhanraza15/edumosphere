// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.AssignmentUserMapping;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect AssignmentUserMapping_Roo_Jpa_Entity {
    
    declare @type: AssignmentUserMapping: @Entity;
    
    declare @type: AssignmentUserMapping: @Table(name = "assignment_user_mapping");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "asgusrmapid")
    private Long AssignmentUserMapping.asgusrmapid;
    
    public Long AssignmentUserMapping.getAsgusrmapid() {
        return this.asgusrmapid;
    }
    
    public void AssignmentUserMapping.setAsgusrmapid(Long id) {
        this.asgusrmapid = id;
    }
    
}