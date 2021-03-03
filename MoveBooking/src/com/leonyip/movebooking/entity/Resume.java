package com.leonyip.movebooking.entity;

import java.util.List;

public class Resume {
	private ResumeBasic resumeBasic;
	private ResumeSkills resumeSkills;
	private List<ResumeSchools> schoollist;
	private List<ResumeProjects> projectslist;
	private List<ResumeExperience> explist;
	public Resume() {
		super();
	}
	public Resume(ResumeBasic resumeBasic, ResumeSkills resumeSkills,
			List<ResumeSchools> schoollist, List<ResumeProjects> projectslist,
			List<ResumeExperience> explist) {
		super();
		this.resumeBasic = resumeBasic;
		this.resumeSkills = resumeSkills;
		this.schoollist = schoollist;
		this.projectslist = projectslist;
		this.explist = explist;
	}
	public ResumeBasic getResumeBasic() {
		return resumeBasic;
	}
	public void setResumeBasic(ResumeBasic resumeBasic) {
		this.resumeBasic = resumeBasic;
	}
	public ResumeSkills getResumeSkills() {
		return resumeSkills;
	}
	public void setResumeSkills(ResumeSkills resumeSkills) {
		this.resumeSkills = resumeSkills;
	}
	public List<ResumeSchools> getSchoollist() {
		return schoollist;
	}
	public void setSchoollist(List<ResumeSchools> schoollist) {
		this.schoollist = schoollist;
	}
	public List<ResumeProjects> getProjectslist() {
		return projectslist;
	}
	public void setProjectslist(List<ResumeProjects> projectslist) {
		this.projectslist = projectslist;
	}
	public List<ResumeExperience> getExplist() {
		return explist;
	}
	public void setExplist(List<ResumeExperience> explist) {
		this.explist = explist;
	}
	
	
}
