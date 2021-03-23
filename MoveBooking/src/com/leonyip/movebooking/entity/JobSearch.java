package com.leonyip.movebooking.entity;

public class JobSearch implements java.io.Serializable{
	private static final long serialVersionUID = 2548742047971256421L;
	private Integer id;
	private String jobTitle;
	private String companyName;
	private String CompanyInfo;
	private String jobInfo;
	private String address;
	private String address_detail;
	private String tel;
	private String category;
	private String salary;
	private String workExp;
	private String education;
	private String publish_date;
	private int jobCateId;
	private Users user;
	
	public JobSearch(){
	}

	public JobSearch(Integer id, String jobTitle, String companyName, String companyInfo,
			String jobInfo, String address, String address_detail, String tel, String category,
			String salary, String workExp, String education,
			String publish_date, int jobCateId, Users user) {
		super();
		this.id = id;
		this.jobTitle = jobTitle; //��Ƹ����
		this.companyName = companyName;  //��˾����
		CompanyInfo = companyInfo;  //��˾��Ϣ
		this.jobInfo = jobInfo;  //ְλ��Ϣ����λְ����ְҪ��ʵ�����⣩
		this.address = address;  //��˾��ַ
		this.address_detail = address_detail; //��ϸ��ַ
		this.tel = tel;  //��ϵ�绰
		this.category = category;  //��Ƹ����
		this.salary = salary;  //н��ˮƽ
		this.workExp = workExp;  //��������
		this.education = education;  //ѧ��
		this.publish_date = publish_date;  //����ʱ��
		this.jobCateId = jobCateId;
		this.user = user;  //������id
	}

	public String getAddress_detail() {
		return address_detail;
	}

	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyInfo() {
		return CompanyInfo;
	}

	public void setCompanyInfo(String companyInfo) {
		CompanyInfo = companyInfo;
	}

	public String getJobInfo() {
		return jobInfo;
	}

	public void setJobInfo(String jobInfo) {
		this.jobInfo = jobInfo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getWorkExp() {
		return workExp;
	}

	public void setWorkExp(String workExp) {
		this.workExp = workExp;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getPublish_date() {
		return publish_date;
	}

	public void setPublish_date(String publish_date) {
		this.publish_date = publish_date;
	}

	public int getJobCateId() {
		return jobCateId;
	}

	public void setJobCateId(int jobCateId) {
		this.jobCateId = jobCateId;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
