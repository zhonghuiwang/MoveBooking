package com.leonyip.movebooking.struts.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.leonyip.movebooking.biz.JobSearchBiz;
import com.leonyip.movebooking.biz.impl.JobSearchBizImpl;
import com.leonyip.movebooking.entity.JobSearch;
import com.leonyip.movebooking.entity.ResultData;
import com.leonyip.movebooking.entity.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class JobSearchAction extends ActionSupport implements ServletRequestAware, ServletResponseAware{
	/**
	 * 
	 */
	private final int SUCCEED = 200;
	private final int FAILED = 100;
	private  HttpServletRequest request;
	private  HttpServletResponse  response;
	private static final long serialVersionUID = 1L;
	private JobSearch jobSearch = new JobSearch();
    JobSearchBiz jobSearchBiz = new JobSearchBizImpl();
    ActionContext ctx = ActionContext.getContext();

	public JobSearch getModel() {
		// TODO Auto-generated method stub
		return jobSearch;
	}
	
	 //获得HttpServletResponse对象
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
			
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}
	
	public String getAllJobSearch() throws IOException{
		List<JobSearch> list = jobSearchBiz.getAllInfo("全部城市","全部分类");
		ActionContext.getContext().put("InfoList", list);
		return "edit";
	}
	
	public void doPost() throws Exception{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
        request = ServletActionContext.getRequest();
        String city = java.net.URLDecoder.decode(request.getParameter("city"),"UTF-8");
        String cate = java.net.URLDecoder.decode(request.getParameter("cate"),"UTF-8");
		List<JobSearch> list = jobSearchBiz.getAllInfo(city,cate);
		map.put("status", 200);
		map.put("msg", "SUCCEED");
		map.put("data", list);
	    response.getWriter().write(JSONObject.fromObject(map).toString());
	}
	
	public void ifEstResume() throws Exception{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
        String uid = java.net.URLDecoder.decode(request.getParameter("uid"),"UTF-8");
		boolean b = jobSearchBiz.ifExtResume(Integer.parseInt(uid));
		if(b){
			map.put("status", 200);
			map.put("msg", "yes");
			map.put("data", b);
		}else{
			map.put("status", 100);
			map.put("msg", "no");
			map.put("data", b);
		}
	    response.getWriter().write(JSONObject.fromObject(map).toString());
	}
	
	public String getJobsBasic() throws IOException{
		return "addjobs";
	}
	
	@SuppressWarnings("unchecked")
	public String addJobs() throws Exception{
		JobSearch job = new JobSearch();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		request = ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		Users user = (Users)session.getAttribute("user"); //获取登录用户信息
		String jobTitle = request.getParameter("jobTitle");
		String companyName = request.getParameter("companyName");
		String companyInfo = request.getParameter("companyInfo");
		String jobInfo = request.getParameter("jobInfo");
		String address = request.getParameter("address");
		String addressdetail = request.getParameter("addressdetail");
		String tel = request.getParameter("tel");
		String category = request.getParameter("category");
		String salary = request.getParameter("salary");
		String workExp = request.getParameter("workExp");
		String education = request.getParameter("education");
		job.setJobTitle(jobTitle);
		job.setCompanyName(companyName);
		job.setCompanyInfo(companyInfo);
		job.setJobInfo(jobInfo);
		job.setAddress(address);
		job.setAddress_detail(addressdetail);
		job.setTel(tel);
		job.setCategory(category);
		job.setSalary(salary);
		job.setWorkExp(workExp);
		job.setEducation(education);
		job.setPublish_date(df.format(new Date()));
		job.setUser(user);
		job.setJobCateId(1);
		
		//前端显示是否成功
		@SuppressWarnings("rawtypes")
		Map map = (Map) ActionContext.getContext().get("request");
		if(jobSearchBiz.addJobSearch(job)){
			map.put("ifjobSuccess","yes");
		}else{
			map.put("ifjobSuccess","no");
		}
		return "jobs_chain";
	}
}
