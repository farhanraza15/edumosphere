// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.User;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect User_Roo_Jpa_Entity {
    
    declare @type: User: @Entity;
    
    declare @type: User: @Table(name = "user");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "userid")
    private Long User.userid;
    
    public Long User.getUserid() {
        return this.userid;
    }
    
    public void User.setUserid(Long id) {
        this.userid = id;
    }
    
}
