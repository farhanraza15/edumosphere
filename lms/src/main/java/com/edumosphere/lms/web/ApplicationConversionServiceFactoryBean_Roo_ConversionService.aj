// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.edumosphere.lms.web;

import com.edumosphere.lms.domain.Assignment;
import com.edumosphere.lms.domain.AssignmentGrade;
import com.edumosphere.lms.domain.AssignmentUserMapping;
import com.edumosphere.lms.domain.Company;
import com.edumosphere.lms.domain.Course;
import com.edumosphere.lms.domain.CourseCategories;
import com.edumosphere.lms.domain.CourseCompletions;
import com.edumosphere.lms.domain.CourseFormatOptions;
import com.edumosphere.lms.domain.CourseGroup;
import com.edumosphere.lms.domain.CourseGroupMember;
import com.edumosphere.lms.domain.CourseModules;
import com.edumosphere.lms.domain.CourseModulesCompletion;
import com.edumosphere.lms.domain.CourseSections;
import com.edumosphere.lms.domain.Enrolment;
import com.edumosphere.lms.domain.Modules;
import com.edumosphere.lms.domain.Permission;
import com.edumosphere.lms.domain.Role;
import com.edumosphere.lms.domain.User;
import com.edumosphere.lms.domain.UserEnrolment;
import com.edumosphere.lms.domain.Userpermission;
import com.edumosphere.lms.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Assignment, String> ApplicationConversionServiceFactoryBean.getAssignmentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.Assignment, java.lang.String>() {
            public String convert(Assignment assignment) {
                return new StringBuilder().append(assignment.getName()).append(' ').append(assignment.getIntro()).append(' ').append(assignment.getIntroformat()).append(' ').append(assignment.getAssignmenttype()).toString();
            }
        };
    }
    
    public Converter<Long, Assignment> ApplicationConversionServiceFactoryBean.getIdToAssignmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.Assignment>() {
            public com.edumosphere.lms.domain.Assignment convert(java.lang.Long id) {
                return Assignment.findAssignment(id);
            }
        };
    }
    
    public Converter<String, Assignment> ApplicationConversionServiceFactoryBean.getStringToAssignmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.Assignment>() {
            public com.edumosphere.lms.domain.Assignment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Assignment.class);
            }
        };
    }
    
    public Converter<AssignmentGrade, String> ApplicationConversionServiceFactoryBean.getAssignmentGradeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.AssignmentGrade, java.lang.String>() {
            public String convert(AssignmentGrade assignmentGrade) {
                return new StringBuilder().append(assignmentGrade.getCreatedtime()).append(' ').append(assignmentGrade.getModifiedtime()).append(' ').append(assignmentGrade.getGrader()).append(' ').append(assignmentGrade.getGrade()).toString();
            }
        };
    }
    
    public Converter<Long, AssignmentGrade> ApplicationConversionServiceFactoryBean.getIdToAssignmentGradeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.AssignmentGrade>() {
            public com.edumosphere.lms.domain.AssignmentGrade convert(java.lang.Long id) {
                return AssignmentGrade.findAssignmentGrade(id);
            }
        };
    }
    
    public Converter<String, AssignmentGrade> ApplicationConversionServiceFactoryBean.getStringToAssignmentGradeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.AssignmentGrade>() {
            public com.edumosphere.lms.domain.AssignmentGrade convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), AssignmentGrade.class);
            }
        };
    }
    
    public Converter<AssignmentUserMapping, String> ApplicationConversionServiceFactoryBean.getAssignmentUserMappingToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.AssignmentUserMapping, java.lang.String>() {
            public String convert(AssignmentUserMapping assignmentUserMapping) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, AssignmentUserMapping> ApplicationConversionServiceFactoryBean.getIdToAssignmentUserMappingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.AssignmentUserMapping>() {
            public com.edumosphere.lms.domain.AssignmentUserMapping convert(java.lang.Long id) {
                return AssignmentUserMapping.findAssignmentUserMapping(id);
            }
        };
    }
    
    public Converter<String, AssignmentUserMapping> ApplicationConversionServiceFactoryBean.getStringToAssignmentUserMappingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.AssignmentUserMapping>() {
            public com.edumosphere.lms.domain.AssignmentUserMapping convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), AssignmentUserMapping.class);
            }
        };
    }
    
    public Converter<Company, String> ApplicationConversionServiceFactoryBean.getCompanyToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.Company, java.lang.String>() {
            public String convert(Company company) {
                return new StringBuilder().append(company.getCompanyname()).append(' ').append(company.getDescription()).append(' ').append(company.getCreatetime()).append(' ').append(company.getUpdatetime()).toString();
            }
        };
    }
    
    public Converter<Long, Company> ApplicationConversionServiceFactoryBean.getIdToCompanyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.Company>() {
            public com.edumosphere.lms.domain.Company convert(java.lang.Long id) {
                return Company.findCompany(id);
            }
        };
    }
    
    public Converter<String, Company> ApplicationConversionServiceFactoryBean.getStringToCompanyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.Company>() {
            public com.edumosphere.lms.domain.Company convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Company.class);
            }
        };
    }
    
    public Converter<Course, String> ApplicationConversionServiceFactoryBean.getCourseToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.Course, java.lang.String>() {
            public String convert(Course course) {
                return new StringBuilder().append(course.getSortorder()).append(' ').append(course.getFullname()).append(' ').append(course.getShortname()).append(' ').append(course.getCoursenumber()).toString();
            }
        };
    }
    
    public Converter<Long, Course> ApplicationConversionServiceFactoryBean.getIdToCourseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.Course>() {
            public com.edumosphere.lms.domain.Course convert(java.lang.Long id) {
                return Course.findCourse(id);
            }
        };
    }
    
    public Converter<String, Course> ApplicationConversionServiceFactoryBean.getStringToCourseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.Course>() {
            public com.edumosphere.lms.domain.Course convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Course.class);
            }
        };
    }
    
    public Converter<CourseCategories, String> ApplicationConversionServiceFactoryBean.getCourseCategoriesToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.CourseCategories, java.lang.String>() {
            public String convert(CourseCategories courseCategories) {
                return new StringBuilder().append(courseCategories.getTitle()).append(' ').append(courseCategories.getCategorynumber()).append(' ').append(courseCategories.getDescription()).append(' ').append(courseCategories.getSortorder()).toString();
            }
        };
    }
    
    public Converter<Long, CourseCategories> ApplicationConversionServiceFactoryBean.getIdToCourseCategoriesConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.CourseCategories>() {
            public com.edumosphere.lms.domain.CourseCategories convert(java.lang.Long id) {
                return CourseCategories.findCourseCategories(id);
            }
        };
    }
    
    public Converter<String, CourseCategories> ApplicationConversionServiceFactoryBean.getStringToCourseCategoriesConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.CourseCategories>() {
            public com.edumosphere.lms.domain.CourseCategories convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CourseCategories.class);
            }
        };
    }
    
    public Converter<CourseCompletions, String> ApplicationConversionServiceFactoryBean.getCourseCompletionsToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.CourseCompletions, java.lang.String>() {
            public String convert(CourseCompletions courseCompletions) {
                return new StringBuilder().append(courseCompletions.getTimeenrolled()).append(' ').append(courseCompletions.getTimestarted()).append(' ').append(courseCompletions.getTimecompleted()).toString();
            }
        };
    }
    
    public Converter<Long, CourseCompletions> ApplicationConversionServiceFactoryBean.getIdToCourseCompletionsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.CourseCompletions>() {
            public com.edumosphere.lms.domain.CourseCompletions convert(java.lang.Long id) {
                return CourseCompletions.findCourseCompletions(id);
            }
        };
    }
    
    public Converter<String, CourseCompletions> ApplicationConversionServiceFactoryBean.getStringToCourseCompletionsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.CourseCompletions>() {
            public com.edumosphere.lms.domain.CourseCompletions convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CourseCompletions.class);
            }
        };
    }
    
    public Converter<CourseFormatOptions, String> ApplicationConversionServiceFactoryBean.getCourseFormatOptionsToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.CourseFormatOptions, java.lang.String>() {
            public String convert(CourseFormatOptions courseFormatOptions) {
                return new StringBuilder().append(courseFormatOptions.getFormat()).append(' ').append(courseFormatOptions.getSectionid()).append(' ').append(courseFormatOptions.getName()).append(' ').append(courseFormatOptions.getValue()).toString();
            }
        };
    }
    
    public Converter<Long, CourseFormatOptions> ApplicationConversionServiceFactoryBean.getIdToCourseFormatOptionsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.CourseFormatOptions>() {
            public com.edumosphere.lms.domain.CourseFormatOptions convert(java.lang.Long id) {
                return CourseFormatOptions.findCourseFormatOptions(id);
            }
        };
    }
    
    public Converter<String, CourseFormatOptions> ApplicationConversionServiceFactoryBean.getStringToCourseFormatOptionsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.CourseFormatOptions>() {
            public com.edumosphere.lms.domain.CourseFormatOptions convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CourseFormatOptions.class);
            }
        };
    }
    
    public Converter<CourseGroup, String> ApplicationConversionServiceFactoryBean.getCourseGroupToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.CourseGroup, java.lang.String>() {
            public String convert(CourseGroup courseGroup) {
                return new StringBuilder().append(courseGroup.getIdnumber()).append(' ').append(courseGroup.getName()).append(' ').append(courseGroup.getDescription()).append(' ').append(courseGroup.getDescriptionformat()).toString();
            }
        };
    }
    
    public Converter<Long, CourseGroup> ApplicationConversionServiceFactoryBean.getIdToCourseGroupConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.CourseGroup>() {
            public com.edumosphere.lms.domain.CourseGroup convert(java.lang.Long id) {
                return CourseGroup.findCourseGroup(id);
            }
        };
    }
    
    public Converter<String, CourseGroup> ApplicationConversionServiceFactoryBean.getStringToCourseGroupConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.CourseGroup>() {
            public com.edumosphere.lms.domain.CourseGroup convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CourseGroup.class);
            }
        };
    }
    
    public Converter<CourseGroupMember, String> ApplicationConversionServiceFactoryBean.getCourseGroupMemberToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.CourseGroupMember, java.lang.String>() {
            public String convert(CourseGroupMember courseGroupMember) {
                return new StringBuilder().append(courseGroupMember.getTimeadded()).append(' ').append(courseGroupMember.getComponent()).append(' ').append(courseGroupMember.getItemid()).toString();
            }
        };
    }
    
    public Converter<Long, CourseGroupMember> ApplicationConversionServiceFactoryBean.getIdToCourseGroupMemberConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.CourseGroupMember>() {
            public com.edumosphere.lms.domain.CourseGroupMember convert(java.lang.Long id) {
                return CourseGroupMember.findCourseGroupMember(id);
            }
        };
    }
    
    public Converter<String, CourseGroupMember> ApplicationConversionServiceFactoryBean.getStringToCourseGroupMemberConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.CourseGroupMember>() {
            public com.edumosphere.lms.domain.CourseGroupMember convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CourseGroupMember.class);
            }
        };
    }
    
    public Converter<CourseModules, String> ApplicationConversionServiceFactoryBean.getCourseModulesToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.CourseModules, java.lang.String>() {
            public String convert(CourseModules courseModules) {
                return new StringBuilder().append(courseModules.getInstance()).append(' ').append(courseModules.getSection()).append(' ').append(courseModules.getIdnumber()).append(' ').append(courseModules.getAddedon()).toString();
            }
        };
    }
    
    public Converter<Long, CourseModules> ApplicationConversionServiceFactoryBean.getIdToCourseModulesConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.CourseModules>() {
            public com.edumosphere.lms.domain.CourseModules convert(java.lang.Long id) {
                return CourseModules.findCourseModules(id);
            }
        };
    }
    
    public Converter<String, CourseModules> ApplicationConversionServiceFactoryBean.getStringToCourseModulesConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.CourseModules>() {
            public com.edumosphere.lms.domain.CourseModules convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CourseModules.class);
            }
        };
    }
    
    public Converter<CourseModulesCompletion, String> ApplicationConversionServiceFactoryBean.getCourseModulesCompletionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.CourseModulesCompletion, java.lang.String>() {
            public String convert(CourseModulesCompletion courseModulesCompletion) {
                return new StringBuilder().append(courseModulesCompletion.getModifiedtime()).toString();
            }
        };
    }
    
    public Converter<Long, CourseModulesCompletion> ApplicationConversionServiceFactoryBean.getIdToCourseModulesCompletionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.CourseModulesCompletion>() {
            public com.edumosphere.lms.domain.CourseModulesCompletion convert(java.lang.Long id) {
                return CourseModulesCompletion.findCourseModulesCompletion(id);
            }
        };
    }
    
    public Converter<String, CourseModulesCompletion> ApplicationConversionServiceFactoryBean.getStringToCourseModulesCompletionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.CourseModulesCompletion>() {
            public com.edumosphere.lms.domain.CourseModulesCompletion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CourseModulesCompletion.class);
            }
        };
    }
    
    public Converter<CourseSections, String> ApplicationConversionServiceFactoryBean.getCourseSectionsToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.CourseSections, java.lang.String>() {
            public String convert(CourseSections courseSections) {
                return new StringBuilder().append(courseSections.getSection()).append(' ').append(courseSections.getName()).append(' ').append(courseSections.getSummary()).append(' ').append(courseSections.getSummaryformat()).toString();
            }
        };
    }
    
    public Converter<Long, CourseSections> ApplicationConversionServiceFactoryBean.getIdToCourseSectionsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.CourseSections>() {
            public com.edumosphere.lms.domain.CourseSections convert(java.lang.Long id) {
                return CourseSections.findCourseSections(id);
            }
        };
    }
    
    public Converter<String, CourseSections> ApplicationConversionServiceFactoryBean.getStringToCourseSectionsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.CourseSections>() {
            public com.edumosphere.lms.domain.CourseSections convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CourseSections.class);
            }
        };
    }
    
    public Converter<Enrolment, String> ApplicationConversionServiceFactoryBean.getEnrolmentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.Enrolment, java.lang.String>() {
            public String convert(Enrolment enrolment) {
                return new StringBuilder().append(enrolment.getEnrol()).append(' ').append(enrolment.getStatus()).append(' ').append(enrolment.getSortorder()).append(' ').append(enrolment.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Enrolment> ApplicationConversionServiceFactoryBean.getIdToEnrolmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.Enrolment>() {
            public com.edumosphere.lms.domain.Enrolment convert(java.lang.Long id) {
                return Enrolment.findEnrolment(id);
            }
        };
    }
    
    public Converter<String, Enrolment> ApplicationConversionServiceFactoryBean.getStringToEnrolmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.Enrolment>() {
            public com.edumosphere.lms.domain.Enrolment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Enrolment.class);
            }
        };
    }
    
    public Converter<Modules, String> ApplicationConversionServiceFactoryBean.getModulesToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.Modules, java.lang.String>() {
            public String convert(Modules modules) {
                return new StringBuilder().append(modules.getName()).append(' ').append(modules.getCron()).append(' ').append(modules.getLastcron()).append(' ').append(modules.getSearch()).toString();
            }
        };
    }
    
    public Converter<Long, Modules> ApplicationConversionServiceFactoryBean.getIdToModulesConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.Modules>() {
            public com.edumosphere.lms.domain.Modules convert(java.lang.Long id) {
                return Modules.findModules(id);
            }
        };
    }
    
    public Converter<String, Modules> ApplicationConversionServiceFactoryBean.getStringToModulesConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.Modules>() {
            public com.edumosphere.lms.domain.Modules convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Modules.class);
            }
        };
    }
    
    public Converter<Permission, String> ApplicationConversionServiceFactoryBean.getPermissionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.Permission, java.lang.String>() {
            public String convert(Permission permission) {
                return new StringBuilder().append(permission.getPermissiontype()).append(' ').append(permission.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, Permission> ApplicationConversionServiceFactoryBean.getIdToPermissionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.Permission>() {
            public com.edumosphere.lms.domain.Permission convert(java.lang.Long id) {
                return Permission.findPermission(id);
            }
        };
    }
    
    public Converter<String, Permission> ApplicationConversionServiceFactoryBean.getStringToPermissionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.Permission>() {
            public com.edumosphere.lms.domain.Permission convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Permission.class);
            }
        };
    }
    
    public Converter<Role, String> ApplicationConversionServiceFactoryBean.getRoleToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.Role, java.lang.String>() {
            public String convert(Role role) {
                return new StringBuilder().append(role.getRoletype()).append(' ').append(role.getDescription()).append(' ').append(role.getSortorder()).append(' ').append(role.getArchetype()).toString();
            }
        };
    }
    
    public Converter<Long, Role> ApplicationConversionServiceFactoryBean.getIdToRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.Role>() {
            public com.edumosphere.lms.domain.Role convert(java.lang.Long id) {
                return Role.findRole(id);
            }
        };
    }
    
    public Converter<String, Role> ApplicationConversionServiceFactoryBean.getStringToRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.Role>() {
            public com.edumosphere.lms.domain.Role convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Role.class);
            }
        };
    }
    
    public Converter<User, String> ApplicationConversionServiceFactoryBean.getUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.User, java.lang.String>() {
            public String convert(User user) {
                return new StringBuilder().append(user.getAuth()).append(' ').append(user.getUsername()).append(' ').append(user.getPassword()).append(' ').append(user.getFirstname()).toString();
            }
        };
    }
    
    public Converter<Long, User> ApplicationConversionServiceFactoryBean.getIdToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.User>() {
            public com.edumosphere.lms.domain.User convert(java.lang.Long id) {
                return User.findUser(id);
            }
        };
    }
    
    public Converter<String, User> ApplicationConversionServiceFactoryBean.getStringToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.User>() {
            public com.edumosphere.lms.domain.User convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), User.class);
            }
        };
    }
    
    public Converter<UserEnrolment, String> ApplicationConversionServiceFactoryBean.getUserEnrolmentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.UserEnrolment, java.lang.String>() {
            public String convert(UserEnrolment userEnrolment) {
                return new StringBuilder().append(userEnrolment.getStatus()).append(' ').append(userEnrolment.getTimestart()).append(' ').append(userEnrolment.getTimeend()).append(' ').append(userEnrolment.getModifierid()).toString();
            }
        };
    }
    
    public Converter<Long, UserEnrolment> ApplicationConversionServiceFactoryBean.getIdToUserEnrolmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.UserEnrolment>() {
            public com.edumosphere.lms.domain.UserEnrolment convert(java.lang.Long id) {
                return UserEnrolment.findUserEnrolment(id);
            }
        };
    }
    
    public Converter<String, UserEnrolment> ApplicationConversionServiceFactoryBean.getStringToUserEnrolmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.UserEnrolment>() {
            public com.edumosphere.lms.domain.UserEnrolment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), UserEnrolment.class);
            }
        };
    }
    
    public Converter<Userpermission, String> ApplicationConversionServiceFactoryBean.getUserpermissionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.edumosphere.lms.domain.Userpermission, java.lang.String>() {
            public String convert(Userpermission userpermission) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Userpermission> ApplicationConversionServiceFactoryBean.getIdToUserpermissionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.edumosphere.lms.domain.Userpermission>() {
            public com.edumosphere.lms.domain.Userpermission convert(java.lang.Long id) {
                return Userpermission.findUserpermission(id);
            }
        };
    }
    
    public Converter<String, Userpermission> ApplicationConversionServiceFactoryBean.getStringToUserpermissionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.edumosphere.lms.domain.Userpermission>() {
            public com.edumosphere.lms.domain.Userpermission convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Userpermission.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAssignmentToStringConverter());
        registry.addConverter(getIdToAssignmentConverter());
        registry.addConverter(getStringToAssignmentConverter());
        registry.addConverter(getAssignmentGradeToStringConverter());
        registry.addConverter(getIdToAssignmentGradeConverter());
        registry.addConverter(getStringToAssignmentGradeConverter());
        registry.addConverter(getAssignmentUserMappingToStringConverter());
        registry.addConverter(getIdToAssignmentUserMappingConverter());
        registry.addConverter(getStringToAssignmentUserMappingConverter());
        registry.addConverter(getCompanyToStringConverter());
        registry.addConverter(getIdToCompanyConverter());
        registry.addConverter(getStringToCompanyConverter());
        registry.addConverter(getCourseToStringConverter());
        registry.addConverter(getIdToCourseConverter());
        registry.addConverter(getStringToCourseConverter());
        registry.addConverter(getCourseCategoriesToStringConverter());
        registry.addConverter(getIdToCourseCategoriesConverter());
        registry.addConverter(getStringToCourseCategoriesConverter());
        registry.addConverter(getCourseCompletionsToStringConverter());
        registry.addConverter(getIdToCourseCompletionsConverter());
        registry.addConverter(getStringToCourseCompletionsConverter());
        registry.addConverter(getCourseFormatOptionsToStringConverter());
        registry.addConverter(getIdToCourseFormatOptionsConverter());
        registry.addConverter(getStringToCourseFormatOptionsConverter());
        registry.addConverter(getCourseGroupToStringConverter());
        registry.addConverter(getIdToCourseGroupConverter());
        registry.addConverter(getStringToCourseGroupConverter());
        registry.addConverter(getCourseGroupMemberToStringConverter());
        registry.addConverter(getIdToCourseGroupMemberConverter());
        registry.addConverter(getStringToCourseGroupMemberConverter());
        registry.addConverter(getCourseModulesToStringConverter());
        registry.addConverter(getIdToCourseModulesConverter());
        registry.addConverter(getStringToCourseModulesConverter());
        registry.addConverter(getCourseModulesCompletionToStringConverter());
        registry.addConverter(getIdToCourseModulesCompletionConverter());
        registry.addConverter(getStringToCourseModulesCompletionConverter());
        registry.addConverter(getCourseSectionsToStringConverter());
        registry.addConverter(getIdToCourseSectionsConverter());
        registry.addConverter(getStringToCourseSectionsConverter());
        registry.addConverter(getEnrolmentToStringConverter());
        registry.addConverter(getIdToEnrolmentConverter());
        registry.addConverter(getStringToEnrolmentConverter());
        registry.addConverter(getModulesToStringConverter());
        registry.addConverter(getIdToModulesConverter());
        registry.addConverter(getStringToModulesConverter());
        registry.addConverter(getPermissionToStringConverter());
        registry.addConverter(getIdToPermissionConverter());
        registry.addConverter(getStringToPermissionConverter());
        registry.addConverter(getRoleToStringConverter());
        registry.addConverter(getIdToRoleConverter());
        registry.addConverter(getStringToRoleConverter());
        registry.addConverter(getUserToStringConverter());
        registry.addConverter(getIdToUserConverter());
        registry.addConverter(getStringToUserConverter());
        registry.addConverter(getUserEnrolmentToStringConverter());
        registry.addConverter(getIdToUserEnrolmentConverter());
        registry.addConverter(getStringToUserEnrolmentConverter());
        registry.addConverter(getUserpermissionToStringConverter());
        registry.addConverter(getIdToUserpermissionConverter());
        registry.addConverter(getStringToUserpermissionConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
