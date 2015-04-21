// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.CourseSections;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CourseSections_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CourseSections.entityManager;
    
    public static final List<String> CourseSections.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager CourseSections.entityManager() {
        EntityManager em = new CourseSections().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CourseSections.countCourseSectionses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CourseSections o", Long.class).getSingleResult();
    }
    
    public static List<CourseSections> CourseSections.findAllCourseSectionses() {
        return entityManager().createQuery("SELECT o FROM CourseSections o", CourseSections.class).getResultList();
    }
    
    public static List<CourseSections> CourseSections.findAllCourseSectionses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CourseSections o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CourseSections.class).getResultList();
    }
    
    public static CourseSections CourseSections.findCourseSections(Long coursesectionid) {
        if (coursesectionid == null) return null;
        return entityManager().find(CourseSections.class, coursesectionid);
    }
    
    public static List<CourseSections> CourseSections.findCourseSectionsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CourseSections o", CourseSections.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CourseSections> CourseSections.findCourseSectionsEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CourseSections o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CourseSections.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CourseSections.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CourseSections.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CourseSections attached = CourseSections.findCourseSections(this.coursesectionid);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CourseSections.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CourseSections.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CourseSections CourseSections.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CourseSections merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}