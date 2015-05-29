package com.edumosphere.lms.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "course")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "courseCompletionss", "courseFormatOptionss", "courseModuleses", "courseSectionss", "categoryid", "companyid", "assignments", "courseGroups", "enrolments" })
public class Course {
}
