package com.edumosphere.lms.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "company")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "courses", "courseCategorieses", "courseCompletionss", "courseFormatOptionss", "courseModuleses", "courseModulesCompletions", "courseSectionss", "moduleses", "users", "userpermissions", "assignmentGrades", "assignmentUserMappings", "courseGroupMembers", "userEnrolments" })
public class Company {
}
