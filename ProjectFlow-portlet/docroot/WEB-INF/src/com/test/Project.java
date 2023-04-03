package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.ProcessAction;

import com.liferay.portal.kernel.json.JSONException;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;


/**
 * Portlet implementation class Project
 */
public class Project extends MVCPortlet {
	
	String INSERT="insert into jsonTable(QuoteNo,Form1) values(?,?)";
	String GET_FORM_DATA="SELECT Form1 from jsonTable where QuoteNo=?";
	String form2Insert="update jsonTable set Form2=? where QuoteNo=?";
	String form3Insert="update jsonTable set Form3=? where QuoteNo=?";
	String form4Insert = "update jsonTable set Form4=? where QuoteNo=?";
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
	}*/
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
	 formData.put("dropZone1", ParamUtil.getString(actionRequest, "dropZone1"));
	 formData.put("qrn", ParamUtil.getString(actionRequest, "QuoteNo"));
	 formData.put("comments", ParamUtil.getString(actionRequest, "comments"));
	 System.out.println("json:0"+formData.toString());
/*	ObjectMapper objectMapper = new ObjectMapper();
	 JSONObject myJsonObject = objectMapper.readValue(str, JSONObject.class);*/
	 try (Connection con = getConnection();
				PreparedStatement pst = con.prepareStatement(INSERT);) {
		 pst.setString(1,ParamUtil.getString(actionRequest, "QuoteNo"));
		 pst.setString(2,formData.toString());
		
		  int r=pst.executeUpdate();
			if(r>0){
				System.out.println("one Record Inserted Successfully");
				System.out.println("order placed Success");
				actionResponse.setRenderParameter("page", "PrepareToQuote" );
				actionResponse.setRenderParameter("url", "/html/project/PrepareToQuote.jsp");
				actionResponse.setRenderParameter("qrn", ParamUtil.getString(actionRequest, "QuoteNo") );
				actionResponse.setRenderParameter("mvcPath", "/html/project/view.jsp");
				/*actionResponse.setContentType("text/plain");
				actionResponse.getWriter().write(1);*/
			 
		 }else{
			 System.out.println("FormData.actionSample() error");
			 actionResponse.setRenderParameter("error", "unable to insert");
			 actionResponse.setRenderParameter("mvcPath", "/html/project/error.jsp");
		 }
	 }catch(Exception e){
		 actionResponse.setRenderParameter("error", "unable to insert");
		 actionResponse.setRenderParameter("mvcPath", "/html/project/error.jsp");
				 System.out.println("Error in Project.Dummy()");
				 e.printStackTrace();
			 }
	/* PrintWriter writer = PortalUtil.getHttpServletResponse(actionResponse).getWriter();
	 writer.write("hello");*/
	 
			/*PortletRequestDispatcher dispatcher= getPortletContext().getRequestDispatcher("/html/project/PrepareToQuote.jsp");
			dispatcher.forward(actionRequest, actionResponse);*/
	 /*}catch(Exception e){
		 System.out.println("Error in Project.Dummy()");
		 e.printStackTrace();
	 }*/
	 /*System.out.println(formData.getString("firstName"));*/
	 
	
}
	 
	 public String getFormData(String QuoteNo) throws IOException,PortletException {
		 String formData =null;
		 try (Connection con = getConnection();
					PreparedStatement pst = con.prepareStatement(GET_FORM_DATA);) {
			 pst.setString(1,QuoteNo);
			 ResultSet rs = pst.executeQuery();
			 while(rs.next()){
				 formData=rs.getString(1);
			 }
		 }catch(Exception e){
			 System.out.println("Project.getFormData()");
			 e.printStackTrace();
		 }
		 return formData;
	 }
	 
	 
	 @ProcessAction(name = "form2")
		public void update(ActionRequest actionRequest,
				ActionResponse actionResponse) throws IOException, PortletException,JSONException {
				System.out.println("Project.form2()");
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
					 formData.put("dropZone1", ParamUtil.getString(actionRequest, "dropZone1"));
					 JSONObject estimation = JSONFactoryUtil.createJSONObject();
					 JSONObject design = JSONFactoryUtil.createJSONObject();

					 formData.put("qrn", ParamUtil.getString(actionRequest, "QuoteNo"));
					 
					 estimation.put("estimationRequiredDate", ParamUtil.getString(actionRequest, "estimationRequiredDate"));
					 estimation.put("estimationSendRequest", ParamUtil.getString(actionRequest, "estimationSendRequest"));
					 estimation.put("estimationComments", ParamUtil.getString(actionRequest, "estimationComments"));
					 formData.put("estimation", estimation);
					 design.put("designRequiredDate", ParamUtil.getString(actionRequest, "designRequiredDate"));
					 design.put("designSendRequest", ParamUtil.getString(actionRequest, "designSendRequest"));
					 design.put("designComments", ParamUtil.getString(actionRequest, "designComments"));
					 formData.put("design", design);
					 
					 formData.put("quoteFormat", ParamUtil.getString(actionRequest, "quoteFormat"));
					 formData.put("dateonQuote", ParamUtil.getString(actionRequest, "dateonQuote"));
					 formData.put("projectCost", ParamUtil.getString(actionRequest, "projectCost"));
					 formData.put("projectSell", ParamUtil.getString(actionRequest, "projectSell"));
					 
					 formData.put("comments", ParamUtil.getString(actionRequest, "comments"));
					 
					 System.out.println("json:0"+formData.toString());
					 
					 try (Connection con = getConnection();
							 PreparedStatement pst = con.prepareStatement(form2Insert);) {
						 pst.setString(1,formData.toString());
						 pst.setString(2, ParamUtil.getString(actionRequest, "QuoteNo"));
						 int r=pst.executeUpdate();
							if(r>0){
								System.out.println("one Record Inserted Successfully");
								System.out.println("order placed Success");
								actionResponse.setRenderParameter("page", "SubmitQuote" );
								actionResponse.setRenderParameter("url", "/html/project/SubmitQuote.jsp");
								actionResponse.setRenderParameter("qrn", ParamUtil.getString(actionRequest, "QuoteNo") );
								actionResponse.setRenderParameter("mvcPath", "/html/project/view.jsp");
								/*actionResponse.setContentType("text/plain");
								actionResponse.getWriter().write(1);*/
							 
						 }else{
							 System.out.println("FormData.actionSample() error");
							 actionResponse.setRenderParameter("error", "unable to insert");
							 actionResponse.setRenderParameter("mvcPath", "/html/project/error.jsp");
						 }
						 
	 
		}catch(Exception e){
			 System.out.println("Project.getFormData()");
			 actionResponse.setRenderParameter("error", "unable to insert");
			 actionResponse.setRenderParameter("mvcPath", "/html/project/error.jsp");
			 e.printStackTrace();
		 }
	 }
	 
	 @ProcessAction(name = "form3")
	public void form3(ActionRequest actionRequest,
			ActionResponse actionResponse) throws IOException, PortletException {
		System.out.println("Project.form3()");
		 JSONObject formData = JSONFactoryUtil.createJSONObject();
		 formData.put("quoteSub", ParamUtil.getString(actionRequest, "quoteSub"));
		 formData.put("winProb", ParamUtil.getString(actionRequest, "winProb"));
		 formData.put("comments",ParamUtil.getString(actionRequest,"comments"));
		 
		 
		try (Connection con = getConnection();
				PreparedStatement pst = con.prepareStatement(form3Insert);) {
			pst.setString(1, formData.toString());
			pst.setString(2, ParamUtil.getString(actionRequest, "qrn"));
			int r = pst.executeUpdate();
			if (r > 0) {
				System.out.println("one Record Inserted Successfully");
				System.out.println("order placed Success");
				actionResponse.setRenderParameter("page", "StatusOfSubmit_Quote");
				actionResponse.setRenderParameter("url",
						"/html/project/StatusOfSubmit_Quote.jsp");
				actionResponse.setRenderParameter("qrn",
						ParamUtil.getString(actionRequest, "qrn"));
				actionResponse.setRenderParameter("mvcPath",
						"/html/project/view.jsp");
				/*
				 * actionResponse.setContentType("text/plain");
				 * actionResponse.getWriter().write(1);
				 */

			} else {
				System.out.println("FormData.actionSample() error");
				actionResponse.setRenderParameter("error", "unable to insert");
				actionResponse.setRenderParameter("mvcPath",
						"/html/project/error.jsp");
			}

		} catch (Exception e) {
			System.out.println("Project.getFormData()");
			actionResponse.setRenderParameter("error", "unable to insert");
			actionResponse.setRenderParameter("mvcPath",
					"/html/project/error.jsp");
			e.printStackTrace();
		}
	}
	 
	 
	 
	 @ProcessAction(name = "form4")
		public void form4(ActionRequest actionRequest,
				ActionResponse actionResponse) throws IOException, PortletException {
			System.out.println("Project.form4()");
			JSONObject formData = JSONFactoryUtil.createJSONObject();
			formData.put("quoteSub", ParamUtil.getString(actionRequest, "quoteSub"));
			formData.put("winProb", ParamUtil.getString(actionRequest, "winProb"));
			formData.put("comments", ParamUtil.getString(actionRequest, "comments"));

			try (Connection con = getConnection();
					PreparedStatement pst = con.prepareStatement(form4Insert);) {
				// pst.setString(1, formData.toString());
				// pst.setString(2, ParamUtil.getString(actionRequest, "QuoteNo"));
				// int r = pst.executeUpdate();
				// if (r > 0) {
				// System.out.println("one Record Inserted Successfully");
				// System.out.println("order placed Success");
				// actionResponse.setRenderParameter("page", "Start");
				// actionResponse.setRenderParameter("url",
				// "/html/project/RTQ_Form.jsp");
				// actionResponse.setRenderParameter("qrn",
				// ParamUtil.getString(actionRequest, "QuoteNo"));
				// actionResponse.setRenderParameter("mvcPath",
				// "/html/project/view.jsp");
				// /*
				// * actionResponse.setContentType("text/plain");
				// * actionResponse.getWriter().write(1);
				// */

				// } else {
				// System.out.println("FormData.actionSample() error");
				// actionResponse.setRenderParameter("error", "unable to insert");
				// actionResponse.setRenderParameter("mvcPath",
				// "/html/project/error.jsp");
				// }

			} catch (Exception e) {
				System.out.println("Project.getFormData()");
				actionResponse.setRenderParameter("error", "unable to insert");
				actionResponse.setRenderParameter("mvcPath",
						"/html/project/error.jsp");
				e.printStackTrace();
			}
		}
	 
}
