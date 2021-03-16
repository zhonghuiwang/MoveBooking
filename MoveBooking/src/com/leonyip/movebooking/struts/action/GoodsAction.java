package com.leonyip.movebooking.struts.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.leonyip.movebooking.biz.GoodsBiz;
import com.leonyip.movebooking.biz.impl.GoodsBizImpl;
import com.leonyip.movebooking.entity.Cart;
import com.leonyip.movebooking.entity.Category;
import com.leonyip.movebooking.entity.Goods;
import com.leonyip.movebooking.entity.Shop;
import com.leonyip.movebooking.entity.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsAction extends ActionSupport implements ServletResponseAware{
	private static final long serialVersionUID = 1L;
	private File goodLogo;//�õ��ϴ����ļ�
	private File goodImage;
	private String goodLogoFileName;              //�õ��ļ������ƣ�д���ǹ̶���
	private String goodLogoContentType;		   //�õ��ļ�������
	private String goodImageFileName;              //�õ��ļ������ƣ�д���ǹ̶���
	private String goodImageContentType;		   //�õ��ļ�������
	private  HttpServletRequest request;
	private  HttpServletResponse  response;
	GoodsBiz goodsBiz = new GoodsBizImpl();
	ActionContext ctx = ActionContext.getContext();
	
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
	
	public File getGoodImage() {
		return goodImage;
	}

	public void setGoodImage(File goodImage) {
		this.goodImage = goodImage;
	}

	public String getGoodLogoFileName() {
		return goodLogoFileName;
	}

	public void setGoodLogoFileName(String goodLogoFileName) {
		this.goodLogoFileName = goodLogoFileName;
	}

	public String getGoodLogoContentType() {
		return goodLogoContentType;
	}

	public void setGoodLogoContentType(String goodLogoContentType) {
		this.goodLogoContentType = goodLogoContentType;
	}

	public String getGoodImageFileName() {
		return goodImageFileName;
	}

	public void setGoodImageFileName(String goodImageFileName) {
		this.goodImageFileName = goodImageFileName;
	}

	public String getGoodImageContentType() {
		return goodImageContentType;
	}

	public void setGoodImageContentType(String goodImageContentType) {
		this.goodImageContentType = goodImageContentType;
	}

	public File getGoodLogo() {
		return goodLogo;
	}

	public void setGoodLogo(File goodLogo) {
		this.goodLogo = goodLogo;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	public void getAllCategory() throws Exception{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		List<Category> list = goodsBiz.GetAllCate();
		map.put("status", 200);
		map.put("msg", "SUCCEED");
		map.put("data", list);
	    response.getWriter().write(JSONObject.fromObject(map).toString());
	}
	
	public void getGoodsByCategory() throws Exception{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
        request = ServletActionContext.getRequest();
		String name = java.net.URLDecoder.decode(request.getParameter("cateName"),"UTF-8");   
		List<Goods> list = goodsBiz.getGoodsByCate(name);
		map.put("status", 200);
		map.put("msg", "SUCCEED");
		map.put("data", list);
	    response.getWriter().write(JSONObject.fromObject(map).toString());
	}
	
	public void getGoods() throws Exception{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
        request = ServletActionContext.getRequest();
        String value = java.net.URLDecoder.decode(request.getParameter("value"),"UTF-8");   
		List<Goods> list = goodsBiz.getGoods(value);
		map.put("status", 200);
		map.put("msg", "SUCCEED");
		map.put("data", list);
	    response.getWriter().write(JSONObject.fromObject(map).toString());
	}
	
	//��ҳ�������Ʒ
	@SuppressWarnings("unchecked")
	public String addGoods() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		Goods goods = new Goods();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
        
		String goodName = request.getParameter("goodName");
		String goodPrice = request.getParameter("goodPrice");
		String priceType = request.getParameter("priceType");
		String goodCount = request.getParameter("goodCount");
		String countType = request.getParameter("countType");
		String goodDescription = request.getParameter("goodDescription");
		String shopId = request.getParameter("shop");
		String cateId = request.getParameter("cate");
		goods.setGoodName(goodName);
		goods.setGoodPrice(Integer.parseInt(goodPrice));
		goods.setPriceType(priceType);
		goods.setGoodCount(Integer.parseInt(goodCount));
		goods.setCountType(countType);
		goods.setGoodDescription(goodDescription);
		goods.setShopId(Integer.parseInt(shopId));
		goods.setCateId(Integer.parseInt(cateId));
		
		
		//����ΪͼƬ�ϴ�����
		//���浽��Ŀ¼�µ�uploadImages�ļ�����
		//String realPath = ServletActionContext.getServletContext().getRealPath("/uploadImages");    //ȡ����ʵ·��
		String realPath = ServletActionContext.getServletContext().getRealPath("/uploads");
		System.out.println(realPath);
		
		//�Զ�����
		if(goodLogoFileName!=null && goodLogoFileName.length()!=0 && goodImageFileName!=null && goodImageFileName.length()!=0){
			Random random = new Random(99999);
			int tempInt = random.nextInt();
			Date datenew = new Date();
			SimpleDateFormat simpleDateFormatnew = new SimpleDateFormat("yyyyMMddhhmmss");
			int last = goodLogoFileName.lastIndexOf(".");
			//String head = goodLogoFileName.substring(0,last);
			String type = goodLogoFileName.substring(last);
			int lasti = goodImageFileName.lastIndexOf(".");
			String typei = goodImageFileName.substring(lasti);
			goodLogoFileName = simpleDateFormatnew.format(datenew) + tempInt + type;
			goodImageFileName = simpleDateFormatnew.format(datenew) + tempInt+1 + typei;
		
			//�������ļ���
			if(goodLogo!=null && goodImage!=null){
				File saveFile = new File(new File(realPath), goodLogoFileName);
				File saveFilei = new File(new File(realPath), goodImageFileName);
				if(!saveFile.getParentFile().exists() || !saveFilei.getParentFile().exists()){     //���Images�ļ��в�����
					saveFile.getParentFile().mkdirs();      //�򴴽��µĶ༶�ļ���
					saveFilei.getParentFile().mkdirs();
			
				}
				try {
					FileUtils.copyFile(goodLogo, saveFile);     //�����ļ�
					FileUtils.copyFile(goodImage, saveFilei);     //�����ļ�
					ActionContext.getContext().put("message", "�ϴ��ɹ���");
			
					String path = request.getContextPath();
					String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
					String logoPath = basePath +"uploads"+"/"+goodLogoFileName;
					String imagePath = basePath +"uploads"+"/"+goodImageFileName;
					goods.setGoodLogo(logoPath);
					goods.setGoodImage(imagePath);
			
					} catch (IOException e) {
							e.printStackTrace();
					}
			}
		}else{
			goods.setGoodLogo("");
			goods.setGoodImage("");
		}
		
		@SuppressWarnings("rawtypes")
		Map map = (Map) ActionContext.getContext().get("request");
		if(goodsBiz.addGoods(goods)){
			map.put("ifSuccess","yes");
		}else{
			map.put("ifSuccess","no");
		}
		
		return "goods_chain";
	}
	
	//��ȡ�����������Ϣ
	public String getGoodsBasic() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		List<Category> listcate = goodsBiz.GetAllCate();
		List<Shop> listshop = goodsBiz.getAllShop();
		request.setAttribute("catelist", listcate);
		request.setAttribute("shoplist", listshop);
		return "addgoods";
	}
	
	
	public void moveTo(String des,String from) throws IOException
	{
	    /**
	    * BufferedInputStream����ΪFileInputStream(from)�������һЩ���ܣ�����ʵBufferedInputStream����װ����InputStream����
	    * BufferedInputStream����Ĵ����ᴴ��һ���ڲ����������飬�ὫFileInputStream(from)�Ӵ��̶�ȡ��ָ��������䵽�û�����
	    * BufferedOutputStreamͬ��
	    */
	    BufferedInputStream bis=new BufferedInputStream(new FileInputStream(from));
	    BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(des));
	    byte[] b=new byte[1024*4];//ÿ�δ�FileInputStream��ȡ�ļ����ֽ���
	    int length=0;
	    while((length=bis.read(b))!=-1)
	    {
	    //����ȡ��������д�뵽ָ�����ļ�·����
	    	bos.write(b);
	    }
	    /**
	    * �������Ҫ�ر����룬�����
	    * 
	    */
	    if(null!=bis){
	    	bis.close();//�������ĵ����ǹر�FileInputStream(from)��������
	    }
	    if(null!=bos){
	    	bos.close();//�������ĵ����ǹر�FileOutStream(des)��������
	    }
	}
	
	//��ӹ��ﳵ
	public void addCart() throws IOException{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		request = ServletActionContext.getRequest();
		String cart = java.net.URLDecoder.decode(request.getParameter("cart"),"UTF-8"); 
		JSONObject json = JSONObject.fromObject(cart);
        Cart carts = new Cart();
        Users user = new Users();
        List<Goods> list = new ArrayList<Goods>();
        JSONArray array = json.getJSONArray("list");
        //jsonתʵ����
        for(int i = 0;i < array.size();i++){
        	Goods goods = new Goods();
        	JSONObject object = (JSONObject) array.get(i);
        	goods = (Goods) JSONObject.toBean(object,Goods.class);
        	list.add(goods);
        }
        carts.setList(list);
        JSONObject jsonuser = JSONObject.fromObject(json.getString("user"));
        user = (Users) JSONObject.toBean(jsonuser,Users.class);
        carts.setUser(user);
        
        boolean b = goodsBiz.addCart(carts);
        if(b){
        	map.put("status", 200);
        	map.put("msg", "SUCCEED");
        	map.put("data", b);
        }else{
        	map.put("status", 100);
    		map.put("msg", "FAILED");
    		map.put("data", b);
        }
		response.getWriter().write(JSONObject.fromObject(map).toString());//�����ֻ���
	}
	
	//��ȡ���ﳵ��Ϣ
	public void getCart() throws IOException{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		request = ServletActionContext.getRequest();
		String uid = java.net.URLDecoder.decode(request.getParameter("uid"),"UTF-8"); 
		Cart cart = goodsBiz.getCart(Integer.parseInt(uid));
		map.put("status", 200);
    	map.put("msg", "SUCCEED");
    	map.put("data", cart);
    	response.getWriter().write(JSONObject.fromObject(map).toString());//�����ֻ���
	}
	
	//ɾ�����ﳵ��Ϣ
	public void delCart() throws IOException{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		request = ServletActionContext.getRequest();
		String cartId = java.net.URLDecoder.decode(request.getParameter("cartId"),"UTF-8");
		boolean b = goodsBiz.delCart(Integer.parseInt(cartId));
		if(b){
			map.put("status", 200);
	    	map.put("msg", "SUCCEED");
	    	map.put("data", b);
		}else{
			map.put("status", 100);
	    	map.put("msg", "FAILED");
	    	map.put("data", b);
		}
		response.getWriter().write(JSONObject.fromObject(map).toString());//�����ֻ���
	}

}
