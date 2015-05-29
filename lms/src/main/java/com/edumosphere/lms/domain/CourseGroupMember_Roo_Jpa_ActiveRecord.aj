// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.CourseGroupMember;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CourseGroupMember_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CourseGroupMember.entityManager;
    
    public static final List<String> CourseGroupMember.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager CourseGroupMember.entityManager() {
        EntityManager em = new CourseGroupMember().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CourseGroupMember.countCourseGroupMembers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CourseGroupMember o", Long.class).getSingleResult();
    }
    
    public static List<CourseGroupMember> CourseGroupMember.findAllCourseGroupMembers() {
        return entityManager().createQuery("SELECT o FROM CourseGroupMember o", CourseGroupMember.class).getResultList();
    }
    
    public static List<CourseGroupMember> CourseGroupMember.findAllCourseGroupMembers(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CourseGroupMember o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CourseGroupMember.class).getResultList();
    }
    
    public static CourseGroupMember CourseGroupMember.findCourseGroupMember(Long cougrpmemid) {
        if (cougrpmemid == null) return null;
        return entityManager().find(CourseGroupMember.class, cougrpmemid);
    }
    
    public static List<CourseGroupMember> CourseGroupMember.findCourseGroupMemberEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CourseGroupMember o", CourseGroupMember.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CourseGroupMember> CourseGroupMember.findCourseGroupMemberEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CourseGroupMember o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CourseGroupMember.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CourseGroupMember.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CourseGroupMember.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CourseGroupMember attached = CourseGroupMember.findCourseGroupMember(this.cougrpmemid);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CourseGroupMember.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CourseGroupMember.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CourseGroupMember CourseGroupMember.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CourseGroupMember merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
