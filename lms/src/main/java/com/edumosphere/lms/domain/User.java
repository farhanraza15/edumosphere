package com.edumosphere.lms.domain;
import java.io.Serializable;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "user")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "courseCompletionss", "courseModulesCompletions", "userpermissions", "companyid", "roletype", "assignmentGrades", "assignmentUserMappings", "courseGroupMembers", "userEnrolments" })
public class User implements Serializable {
}
