// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.domain;

import com.edumosphere.lms.domain.Permission;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Permission_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Permission.entityManager;
    
    public static final EntityManager Permission.entityManager() {
        EntityManager em = new Permission().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Permission.countPermissions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Permission o", Long.class).getSingleResult();
    }
    
    public static List<Permission> Permission.findAllPermissions() {
        return entityManager().createQuery("SELECT o FROM Permission o", Permission.class).getResultList();
    }
    
    public static Permission Permission.findPermission(Long id) {
        if (id == null) return null;
        return entityManager().find(Permission.class, id);
    }
    
    public static List<Permission> Permission.findPermissionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Permission o", Permission.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Permission.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Permission.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Permission attached = Permission.findPermission(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Permission.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Permission.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Permission Permission.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Permission merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
