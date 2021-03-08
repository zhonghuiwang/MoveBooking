package com.leonyip.movebooking.struts.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.leonyip.movebooking.biz.UsersBiz;
import com.leonyip.movebooking.biz.impl.UsersBizImpl;
import com.leonyip.movebooking.entity.Address;
import com.leonyip.movebooking.entity.JobApply;
import com.leonyip.movebooking.entity.MoveBooking;
import com.leonyip.movebooking.entity.ResumeBasic;
import com.leonyip.movebooking.entity.ResumeExperience;
import com.leonyip.movebooking.entity.ResumeProjects;
import com.leonyip.movebooking.entity.ResumeSchools;
import com.leonyip.movebooking.entity.ResumeSkills;
import com.leonyip.movebooking.entity.Users;
import com.leonyip.movebooking.utils.Base64Utils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UsersAction extends ActionSupport implements ModelDriven<Users> ,ServletResponseAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private  HttpServletRequest request;
	private  HttpServletResponse  response;
    private Users user = new Users();
	UsersBiz usersBiz = new UsersBizImpl();
	ActionContext ctx = ActionContext.getContext();
	
	public Users getModel() {
		return user;
	}
	
	private int pageNum;
	private int pageSize;
	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	//获得HttpServletResponse对象
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	//用户登录
	public void doLogin() throws Exception {
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		request = ServletActionContext.getRequest();
		String phone = java.net.URLDecoder.decode(request.getParameter("phone"),"UTF-8");
        List<Users> loginedUser = usersBiz.login(phone); //数据库查询 
		map.put("status", 200);
		map.put("msg", "SUCCEED");
		map.put("data", loginedUser);
		response.getWriter().write(JSONObject.fromObject(map).toString());//返回手机端
		
		/*if(loginedUser.get(0).getId() != 0){
			return SUCCESS;
		}
		return LOGIN;*/
	}
	
	//添加用户
	public void addUser() throws Exception{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		request = ServletActionContext.getRequest();
		Users user = new Users();
		String pwd = java.net.URLDecoder.decode(request.getParameter("password"),"UTF-8"); 
		user.setName(java.net.URLDecoder.decode(request.getParameter("name"),"UTF-8"));
		user.setPassword(Base64Utils.decryptBASE64(pwd));  //base64解密
		user.setPhone(java.net.URLDecoder.decode(request.getParameter("phone"),"UTF-8"));
		user.setLocation(java.net.URLDecoder.decode(request.getParameter("location"),"UTF-8"));
		user.setMember(request.getParameter("member"));
		
		boolean b = usersBiz.addUsers(user);
		
		if(b){
			map.put("status", 200);
			map.put("msg", "success");
			map.put("data", "注册成功");
			response.getWriter().write(JSONObject.fromObject(map).toString());//返回手机端
		}else{
			map.put("status", 100);
			map.put("msg", "failed");
			map.put("data", "注册失败");
			response.getWriter().write(JSONObject.fromObject(map).toString());//返回手机端
		}
	}
	
	//添加简历基本信息
	public void addResumeBasic() throws Exception{
		ResumeBasic resumeBasic = new ResumeBasic();
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		request = ServletActionContext.getRequest();
        String apply = java.net.URLDecoder.decode(request.getParameter("basic"),"utf-8");
        JSONObject json = JSONObject.fromObject(apply);
        resumeBasic.setResume_name(json.getString("resume_name"));
        resumeBasic.setResume_salary(json.getString("resume_salary"));
        resumeBasic.setResume_location(json.getString("resume_location"));
        resumeBasic.setResume_workl(json.getString("resume_workl"));
        resumeBasic.setResume_tel(json.getString("resume_tel"));
        resumeBasic.setResume_email(json.getString("resume_email"));
        resumeBasic.setUid(json.getInt("uid"));
       
		boolean b = usersBiz.addBasic(resumeBasic);
		if(b){
			map.put("status", 200);
			map.put("msg", "SUCCEED");
			map.put("data", b);
		}else{
			map.put("status", 100);
			map.put("msg", "FAILED");
			map.put("data", b);
		}
	    response.getWriter().write(JSONObject.fromObject(map).toString());
	}
	
	//添加简历技能信息
		public void addResumeSkills() throws Exception{
			ResumeSkills resumeSkill = new ResumeSkills();
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
	        String apply = java.net.URLDecoder.decode(request.getParameter("skill"),"utf-8");
	        JSONObject json = JSONObject.fromObject(apply);
	        resumeSkill.setResume_skill(json.getString("resume_skill"));
	        resumeSkill.setResume_rcm(json.getString("resume_rcm"));
	        resumeSkill.setUid(json.getInt("uid"));
			boolean b = usersBiz.addSkills(resumeSkill);
			if(b){
				map.put("status", 200);
				map.put("msg", "SUCCEED");
				map.put("data", b);
			}else{
				map.put("status", 100);
				map.put("msg", "FAILED");
				map.put("data", b);
			}
		    response.getWriter().write(JSONObject.fromObject(map).toString());
	   }
		
		//添加简历项目信息
		public void addResumeProjects() throws Exception{
			ResumeProjects resumeProject = new ResumeProjects();
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
	        String apply = java.net.URLDecoder.decode(request.getParameter("project"),"utf-8");
	        
	        JSONObject json = JSONObject.fromObject(apply);
	        resumeProject.setResume_pname(json.getString("resume_pname"));
	        resumeProject.setResume_pward(json.getString("resume_pward"));
	        resumeProject.setResume_pdescription(json.getString("resume_pdescription"));
	        resumeProject.setUid(json.getInt("uid"));
			boolean b = usersBiz.addProjects(resumeProject);
			if(b){
				map.put("status", 200);
				map.put("msg", "SUCCEED");
				map.put("data", b);
			}else{
				map.put("status", 100);
				map.put("msg", "FAILED");
				map.put("data", b);
			}
		    response.getWriter().write(JSONObject.fromObject(map).toString());
		}		
		//添加简历学历信息
		public void addResumeSchools() throws Exception{
			ResumeSchools resumeSchool = new ResumeSchools();
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
	        String apply = java.net.URLDecoder.decode(request.getParameter("school"),"utf-8");
	        
	        JSONObject json = JSONObject.fromObject(apply);
	        resumeSchool.setResume_ename(json.getString("resume_ename"));
	        resumeSchool.setResume_elocation(json.getString("resume_elocation"));
	        resumeSchool.setResume_grade(json.getString("resume_grade"));
	        resumeSchool.setResume_edescription(json.getString("resume_edescription"));
	        resumeSchool.setUid(json.getInt("uid"));
			boolean b = usersBiz.addSchools(resumeSchool);
			if(b){
				map.put("status", 200);
				map.put("msg", "SUCCEED");
				map.put("data", b);
			}else{
				map.put("status", 100);
				map.put("msg", "FAILED");
				map.put("data", b);
			}
		    response.getWriter().write(JSONObject.fromObject(map).toString());
		}
		//添加简历工作经历信息
		public void addResumeExperience() throws Exception{
			ResumeExperience resumeExperience = new ResumeExperience();
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
	        String apply = java.net.URLDecoder.decode(request.getParameter("experience"),"utf-8");
	        
	        JSONObject json = JSONObject.fromObject(apply);
	        resumeExperience.setResume_jname(json.getString("resume_jname"));
	        resumeExperience.setResume_jlocation(json.getString("resume_jlocation"));
	        resumeExperience.setResume_jdo(json.getString("resume_jdo"));
	        resumeExperience.setResume_jdescription(json.getString("resume_jdescription"));
	        resumeExperience.setUid(json.getInt("uid"));
			boolean b = usersBiz.addExperience(resumeExperience);
			if(b){
				map.put("status", 200);
				map.put("msg", "SUCCEED");
				map.put("data", b);
			}else{
				map.put("status", 100);
				map.put("msg", "FAILED");
				map.put("data", b);
			}
		    response.getWriter().write(JSONObject.fromObject(map).toString());
		}
		
		//获取简历项目经验
		public void getResumeProjects() throws Exception{
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
	        int uid = Integer.parseInt( java.net.URLDecoder.decode(request.getParameter("uid"),"utf-8"));
	        System.out.println(uid);
			List<ResumeProjects> b = usersBiz.getResumeProjects(uid);
			if(b.size() != 0){
				map.put("status", 200);
				map.put("msg", "SUCCEED");
				map.put("data", b);
			}else{
				map.put("status", 100);
				map.put("msg", "FAILED");
				map.put("data", b);
			}
		    response.getWriter().write(JSONObject.fromObject(map).toString());
		}
		
		//获取简历学历
		public void getResumeSchools() throws Exception{
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
			    response.setContentType("application/json;charset=utf-8");
			    request = ServletActionContext.getRequest();
			    int uid = Integer.parseInt( java.net.URLDecoder.decode(request.getParameter("uid"),"utf-8"));
			    System.out.println(uid);
				List<ResumeSchools> b = usersBiz.getResumeSchools(uid);
				if(b.size() != 0){
					map.put("status", 200);
					map.put("msg", "SUCCEED");
					map.put("data", b);
				}else{
					map.put("status", 100);
					map.put("msg", "FAILED");
					map.put("data", b);
				}
			 response.getWriter().write(JSONObject.fromObject(map).toString());
		}
		//获取简历项目经验
		public void getResumeExp() throws Exception{
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
	        int uid = Integer.parseInt( java.net.URLDecoder.decode(request.getParameter("uid"),"utf-8"));
			List<ResumeExperience> b = usersBiz.getResumeExp(uid);
			if(b.size() != 0){
				map.put("status", 200);
				map.put("msg", "SUCCEED");
				map.put("data", b);
			}else{
				map.put("status", 100);
				map.put("msg", "FAILED");
				map.put("data", b);
			}
		    response.getWriter().write(JSONObject.fromObject(map).toString());
		}
		
		//获取收货地址
		public void getMyAddress() throws Exception{
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
	        int uid = Integer.parseInt( java.net.URLDecoder.decode(request.getParameter("uid"),"utf-8"));
	        List<Address> list = usersBiz.getMyAddress(uid);
	        if(list.size() != 0){
				map.put("status", 200);
				map.put("msg", "SUCCEED");
				map.put("data", list);
			}else{
				map.put("status", 100);
				map.put("msg", "FAILED");
				map.put("data", list);
			}
		    response.getWriter().write(JSONObject.fromObject(map).toString());
		}
		
		//添加收货地址
		public void addMyAddress() throws Exception{
			Address address = new Address();
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
	        String apply = java.net.URLDecoder.decode(request.getParameter("address"),"utf-8");
	        
	        JSONObject json = JSONObject.fromObject(apply);
	        address.setAddr_info(json.getString("addr_info"));
	        address.setUid(json.getInt("uid"));
			boolean b = usersBiz.addMyAddress(address);
			if(b){
				map.put("status", 200);
				map.put("msg", "SUCCEED");
				map.put("data", b);
			}else{
				map.put("status", 100);
				map.put("msg", "FAILED");
				map.put("data", b);
			}
		    response.getWriter().write(JSONObject.fromObject(map).toString());
		} 
		
		//网页端系统管理员登录
		@SuppressWarnings("unchecked")
		public String doWebLogin() throws Exception {
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
			HttpSession session=request.getSession();
			String pwd = request.getParameter("password");   
			String userName = request.getParameter("name");
			String price = request.getParameter("price");
	        List<Users> loginedUser = usersBiz.weblogin(userName,pwd); //数据库查询
	        @SuppressWarnings("rawtypes")
			Map map = (Map) ActionContext.getContext().get("request");
			if(loginedUser.get(0).getId() != 0){
				Users user = loginedUser.get(0);
				ctx.getSession().put("user", user);
				session.setAttribute("user", user);
				map.put("ifSuccess","yes");
				if(price == "" || price == null ){
					return SUCCESS;
				}else{
					map.put("price",price);
					return "gotoorders";
				}
			}
			map.put("ifSuccess","no");
			return "opfailed";
		}
		
	  //网页后端管理页面登录
	  @SuppressWarnings("unchecked")
	  public String doWebBackLogin() throws Exception {
		  response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
			HttpSession session=request.getSession();
			String pwd = request.getParameter("password");   
			String userName = request.getParameter("name");
	        List<Users> loginedUser = usersBiz.weblogin(userName,pwd); //数据库查询
	        @SuppressWarnings("rawtypes")
			Map map = (Map) ActionContext.getContext().get("request");
			if(loginedUser.get(0).getId() != 0){
				Users user = loginedUser.get(0);
				ctx.getSession().put("user", user);
				session.setAttribute("user", user);
				map.put("ifSuccess","yes");
				return "backmanage";
			}
			map.put("ifSuccess","no");
			return "backlogin";
	  } 
	  
	  //网页端查询用户信息
	   public String getWebUsers() throws Exception {
			List<Users> userslist = usersBiz.getUsersByPaging(pageNum, pageSize);
			ActionContext.getContext().put("usersList", userslist);
			ActionContext.getContext().put("pageCount", usersBiz.getPageCount(pageSize));
		   return "allusers";
	   }
	   
	   public String doWebLogout() throws Exception {
		   response.setCharacterEncoding("UTF-8");
	       response.setContentType("application/json;charset=utf-8");
	       request = ServletActionContext.getRequest();
		   HttpSession session=request.getSession();
		   session.removeAttribute("user");  
		   return SUCCESS;
	   }
	   
	 //添加网页用户
		@SuppressWarnings("unchecked")
		public String addWebUser() throws Exception{
			@SuppressWarnings("rawtypes")
			Map map = (Map) ActionContext.getContext().get("request");
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
			Users user = new Users();
			String name = request.getParameter("username");
			String pwd =request.getParameter("password"); 
			String pwdan = request.getParameter("repassword");
			System.out.println("name:"+name+" | "+"pwd:"+pwd);
			user.setName(name);
			user.setPassword(pwd);
			
			if(pwd.equals(pwdan) || pwd == pwdan){
				if(usersBiz.addUsers(user)){
					map.put("ifrSuccess","yes");
					return SUCCESS;
				}else{
					map.put("ifrSuccess","no");
					return "opfailed";
				}
				
			}else{
				map.put("ifrSuccess","repeat");
				return "opfailed";
			}
		}
		
		//跳转market
		public String loginMarket() throws Exception{
			return "goMarkert";
		}
		
		//查询是否登录
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public String marketDoLogin() throws Exception{
			Map map = (Map) ActionContext.getContext().get("request");
			response.setCharacterEncoding("UTF-8");
		    response.setContentType("application/json;charset=utf-8");
		    request = ServletActionContext.getRequest();
			String price = request.getParameter("price");
		    HttpSession session=request.getSession();
					 
			if(session.getAttribute("user") == null){
				map.put("price",price);
				return "gotologin";
			}else{
				map.put("price",price);
				return "gotoorders";
			}
	  }
}