package com.edumosphere.lms.domain;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "course_completions")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "companyid", "userid", "courseid" })
public class CourseCompletions {
}
