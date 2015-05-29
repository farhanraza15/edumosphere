// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.UserEnrolment;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserEnrolment_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager UserEnrolment.entityManager;
    
    public static final List<String> UserEnrolment.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager UserEnrolment.entityManager() {
        EntityManager em = new UserEnrolment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserEnrolment.countUserEnrolments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM UserEnrolment o", Long.class).getSingleResult();
    }
    
    public static List<UserEnrolment> UserEnrolment.findAllUserEnrolments() {
        return entityManager().createQuery("SELECT o FROM UserEnrolment o", UserEnrolment.class).getResultList();
    }
    
    public static List<UserEnrolment> UserEnrolment.findAllUserEnrolments(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM UserEnrolment o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, UserEnrolment.class).getResultList();
    }
    
    public static UserEnrolment UserEnrolment.findUserEnrolment(Long userenrolmentid) {
        if (userenrolmentid == null) return null;
        return entityManager().find(UserEnrolment.class, userenrolmentid);
    }
    
    public static List<UserEnrolment> UserEnrolment.findUserEnrolmentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM UserEnrolment o", UserEnrolment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<UserEnrolment> UserEnrolment.findUserEnrolmentEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM UserEnrolment o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, UserEnrolment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void UserEnrolment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserEnrolment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserEnrolment attached = UserEnrolment.findUserEnrolment(this.userenrolmentid);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserEnrolment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void UserEnrolment.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public UserEnrolment UserEnrolment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserEnrolment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}