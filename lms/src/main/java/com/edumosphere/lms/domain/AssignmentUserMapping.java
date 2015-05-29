package com.edumosphere.lms.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "assignment_user_mapping")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "assignmentid", "userid", "companyid" })
public class AssignmentUserMapping {
}
