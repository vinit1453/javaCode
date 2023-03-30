package com.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.ProcessAction;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.liferay.portal.kernel.json.JSONException;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;


/**
 * Portlet implementation class Project
 */
public class Project extends MVCPortlet {
	
	String INSERT="insert into jsonTable(object) value(?)";
	String url = "jdbc:mysql://localhost:3306/std";
	String user = "root";
	String pass = "Quad@2022";
	
	
	
public Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection(url, user, pass);
			/*System.out.println("DbConnected");*/
			} catch (ClassNotFoundException | SQLException e) {
			System.out.println("DBConnection Problem");
			e.printStackTrace();
		}
		return con;
	}
	
	@ProcessAction(name = "action")
public void Dummy(ActionRequest actionRequest,
		ActionResponse actionResponse) throws IOException, PortletException,JSONException {
		System.out.println("Project.Dummy()");
	
	/*String str=ParamUtil.getString(actionRequest, "data");
	System.out.println("String:"+str);
	Gson gson = new Gson();  
	System.out.println("String1:"+gson.toJsonTree(str));
	  String json=gson.toJson(ParamUtil.getString(actionRequest, "data"));
	  System.out.println("Json:"+json);
	  JsonStreamParser parser = new JsonStreamParser(json);  
	 System.out.println("parse:"+parser.next());
	 Object obj=ParamUtil.getString(actionRequest, "data");
	 System.out.println("obj:"+obj.toString());
	
	 StringBuilder sb=new StringBuilder(str);
	 String[] introduction = str.split("&");
	for(String e:introduction){
		System.out.println(e);
	}
	 JSONObject formData = JSONFactoryUtil.createJSONObject();
	 formData.put("customer", ParamUtil.getString(actionRequest, "customer"));
	 formData.put("cAdd", ParamUtil.getString(actionRequest, "cAdd"));
	 formData.put("pCode", ParamUtil.getString(actionRequest, "pCode"));
	 formData.put("conName", ParamUtil.getString(actionRequest, "conName")); 
	 formData.put("email", ParamUtil.getString(actionRequest, "email"));
	 formData.put("phone", ParamUtil.getString(actionRequest, "ph"));
	 
	 formData.put("projectName", ParamUtil.getString(actionRequest, "projectName"));
	 formData.put("siteName", ParamUtil.getString(actionRequest, "siteName"));
	 formData.put("siteAddress", ParamUtil.getString(actionRequest, "siteAddress"));
	 formData.put("descWork", ParamUtil.getString(actionRequest, "descWork"));	 
	 formData.put("leadName", ParamUtil.getString(actionRequest, "leadName"));
	 formData.put("leadData", ParamUtil.getString(actionRequest, "leadData"));
	 formData.put("consultant", ParamUtil.getString(actionRequest, "consultant"));
	 formData.put("ch1", ParamUtil.getString(actionRequest, "ch1"));
	 
	 formData.put("size", ParamUtil.getString(actionRequest, "size"));
	 formData.put("bidStart", ParamUtil.getString(actionRequest, "bidStart"));
	 formData.put("bidEnd", ParamUtil.getString(actionRequest, "bidEnd"));
	 formData.put("bidWeek",ParamUtil.getString(actionRequest,"bidWeek"));
	 formData.put("aoDate", ParamUtil.getString(actionRequest, "aoDate"));
	 formData.put("ppStart", ParamUtil.getString(actionRequest, "ppStart"));
	 formData.put("ppEnd", ParamUtil.getString(actionRequest, "ppEnd"));
	 formData.put("ppDuration",ParamUtil.getString(actionRequest,"ppDuration"));
	 formData.put("points", ParamUtil.getString(actionRequest, "points"));
	 formData.put("deadLine", ParamUtil.getString(actionRequest, "deadLine"));
	 formData.put("survey",ParamUtil.getString(actionRequest,"survey"));
	 formData.put("deadLineDate", ParamUtil.getString(actionRequest, "deadLineDate"));
	
	 formData.put("productSpec", ParamUtil.getString(actionRequest, "productSpec"));
	 formData.put("buildingType",ParamUtil.getString(actionRequest,"buildingType"));
	 formData.put("endUser", ParamUtil.getString(actionRequest, "endUser"));
	 formData.put("projectType", ParamUtil.getString(actionRequest, "projectType"));
	 formData.put("enqState",ParamUtil.getString(actionRequest,"enqState"));
	 formData.put("techType", ParamUtil.getString(actionRequest, "techType"));
	 
	 formData.put("enquiryFormat", ParamUtil.getString(actionRequest, "enquiryFormat"));
	 formData.put("documentStatus",ParamUtil.getString(actionRequest,"documentStatus"));
	 formData.put("nameSpec", ParamUtil.getString(actionRequest, "nameSpec"));
	 formData.put("location", ParamUtil.getString(actionRequest, "location"));
	 formData.put("beforeWork",ParamUtil.getString(actionRequest,"beforeWork"));
	 formData.put("terms", ParamUtil.getString(actionRequest, "terms"));
	 formData.put("pcg", ParamUtil.getString(actionRequest, "pcg"));
	 formData.put("perfoBond",ParamUtil.getString(actionRequest,"perfoBond"));
	 formData.put("nec", ParamUtil.getString(actionRequest, "nec"));
	 formData.put("damage", ParamUtil.getString(actionRequest, "damage"));
	 formData.put("retention",ParamUtil.getString(actionRequest,"retention"));
	 formData.put("siteExp", ParamUtil.getString(actionRequest, "techType"));
	 
	
	 formData.put("comments", ParamUtil.getString(actionRequest, "comments"));
	 System.out.println("json:0"+formData);
	ObjectMapper objectMapper = new ObjectMapper();
	 JSONObject myJsonObject = objectMapper.readValue(str, JSONObject.class);
	 try (Connection con = getConnection();
				PreparedStatement pst = con.prepareStatement(INSERT);) {
		 pst.setObject(1, formData);
		 pst.setObject(1,myJsonObject);
		  int r=pst.executeUpdate();
			if(r>0){
				System.out.println("one Record Inserted Successfully");
				System.out.println("order placed Success");
				
				
			 
		 }else{
			 System.out.println("FormData.actionSample() error");
		 }

	 }catch(Exception e){
		 System.out.println("Error in Project.Dummy()");
		 e.printStackTrace();
	 }*/
	 /*System.out.println(formData.getString("firstName"));*/
	 
	
}

}
