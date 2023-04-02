<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>
 <%@ page import="com.test.*,java.util.*,com.google.gson.*,com.liferay.portal.kernel.json.*"  %> 
<p:defineObjects />

This is the <b>Project</b> portlet in View mode.
<br>
<%
String pageName=request.getParameter("page");
String url=request.getParameter("url");
String qrn=request.getParameter("qrn");
if(pageName==null || url==null || qrn==null || pageName=="" || url=="" || qrn==""){
%>
	<p:renderURL var="update">
	<p:param name="name" value="vinit"></p:param>
	<p:param name="QuoteNo" value=""></p:param>
	<p:param name="jspPage" value="/html/project/StatusOfSubmit_Quote.jsp"></p:param>
</p:renderURL>
<a type="button" href="${update}" class="btn btn-sm btn-warning">page</a>
<%}else{ %>
<p:renderURL var="update1">
	<p:param name="name" value="vinit"></p:param>
	<p:param name="QuoteNo" value="<%=qrn %>"></p:param>
	<p:param name="jspPage" value="<%=url.toString() %>"></p:param>
</p:renderURL>
<a type="button" href="${update1}" class="btn btn-sm btn-warning">page</a>

<%=qrn %><br><%=url %><br><%=pageName %>
<%} %>
<%-- <% Project prj=new Project();
						 String st=prj.getFormData("PW1038-C ");
						Gson gson = new Gson();  
						JSONObject obj =  JSONFactoryUtil.createJSONObject(st);
						 <div><p><%=obj.getString("pCode") %></p></div>  
						
						%> --%>