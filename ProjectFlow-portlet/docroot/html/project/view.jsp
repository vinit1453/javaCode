
<!-- ********************************************my view*******************************************************
 -->
<%-- 
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
	<p:param name="QuoteNo" value="<%=qrn.toString() %>"></p:param>
	<p:param name="jspPage" value="<%=url.toString() %>"></p:param>
</p:renderURL>
<a type="button" href="${update1}" class="btn btn-sm btn-warning">page</a>

<%=qrn %><br><%=url %><br><%=pageName %>
<%} %>  --%>
<%-- <% Project prj=new Project();
						 String st=prj.getFormData("PW1038-C ");
						Gson gson = new Gson();  
						JSONObject obj =  JSONFactoryUtil.createJSONObject(st);
						 <div><p><%=obj.getString("pCode") %></p></div>  
						
						%> 
						<%-- ***************************my view End************************ --%>
						
						
						<!--Home Page  -->
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>
 <%@ page import="com.test.*,java.util.*,com.google.gson.*,com.liferay.portal.kernel.json.*"  %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--Bootstrap Icon-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.min.css" />
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/css/ui.jqgrid.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/jquery.jqgrid.min.js"></script>

<title>Navbar</title>
<style>
.navbar {
	width: 100%;
	background-color: rgba(0, 0, 0, 0.1);
	
	display: flex;
	justify-content: space-between;
	font-family: 'tahoma';
	    padding-top: 13px;
    padding-bottom: 10px;
}

.menu-toggler {
	background-color: rgb(74, 73, 73);
	color: white;
	cursor: pointer;
	width: fit-content;
	padding: 9px;
}

#menu {
	font-size: x-small;
}

#home-icon {
	font-size: larger;
	color: #4c4949;
}

#right-icon {
	color: rgb(149, 147, 147);
	font-size: small;
}

.s {
	align-self: center;
	font-size: small;
	color: #16607e;
}

.btn {
	border: none !important;
	color: white;
	padding: 8px;
	padding-left: 10px;
	padding-right: 12px;
	margin-top: 4px;
	cursor: pointer;
	border-radius: 0px !important;
}

#btn1 {
	background: rgb(115, 195, 226);
	color: white;
}

#btn2, #btn6 {
	background: rgb(11, 113, 153);
	color: white;
}

#btn3 {
	background: rgb(207, 207, 60);
	color: white;
}

#btn4 {
	background: rgb(219, 73, 16);
	color: white;
}

#btn5 {
	background: rgb(112, 195, 112);
	color: white;
}

.icons {
	margin-top: 8px;
	margin-left: 8px;
}

.topNav {
	background: #2577b9;
	padding: 4px;
	padding-top: 8px;
}

#img {
	margin-left: 15px;
}
#myform{
background:rgb(0 0 0 / 91%);
font-family: 'tahoma';
    font-size: small;
}
#menuList{

width: 20%;
line-height: 30px;
position: absolute;
    margin-top: -20px;
    margin-left: 3px;
    z-index: 1;

}

#formIcons{
margin-left: 10px;
    padding-top: 6px;
}

#house{
    background: rgba(0,0,0,0.1);
    color: white;
    border-left: none;
    border-right: none !important;
    border: 1px solid #7a7474;
    width: 100%;
    font-family: 'tahoma';
   text-align: unset;
    
}
.btns{
    background: rgba(0,0,0,0.1);
    color: white;
    border-left: none;
    border-right: none !important;
    border: 1px solid #7a7474;
    width: 100%;
   text-align: unset;
   border-top: none;
   font-family: 'tahoma';
    
}

.ficon{
margin-left: 16px;
    margin-right: 14px;
}
#sub1,#sub2,#sub3,#sub4,#sub5{
font-family: 'tahoma';
    margin-left: 60px;
    text-decoration: none;
    color: white
}

#b1, #b4{
border:2px solid skyblue;
border-left: 5px solid skyblue;
}

#c1, #c4{
border:2px solid skyblue;
}

.box{
width: 23%;
    height: 90px;
    border-radius: 5px;
    display: flex;
    justify-content: center;

}

.circle{
border-radius:50%;
    height: 49px;
    width: 43px;
    display: flex;
    justify-content: center;
    margin-top: 17px;
}

.numbers{
margin-top: 12px;
font-weight:200;
    font-size: x-large;
    font-family: 'tahoma';

}

#colorBox{
display: flex;
justify-content: space-between;
}

#b2{
border:2px solid #f38425 ;
border-left: 5px solid #f38425 ;
}

#c2{
border:2px solid #f38425 ;
}

#b3{
border:2px solid #87b87f;
border-left: 5px solid #87b87f;
}

#c3{
border:2px solid #87b87f;
}
.v{
    font-family: 'tahoma';
    font-size: large;
    margin-top: 32px;
    margin-right: 9px;
}

.n{
    font-size: smaller;
    margin-top: 23px;
    text-decoration: underline  2px skyblue;
}
.l{
    font-size: smaller;
    margin-bottom: 31px;
    text-decoration: underline  2px skyblue;
}
.nl{
    display: grid;
    text-align: inherit;
    /* border: 1px solid black; */
    margin-left: 29px;
}
#sub1,#sub2,#sub3,#sub4,#sub5{
font-size: smaller;
}



/*tab css starts  */
.tabbed {
	overflow-x: hidden; /* so we could easily hide the radio inputs */
	margin: 32px 0;
	padding-bottom: 16px;
	    margin-left: -22px;
	
}

.tabbed [type="radio"] {
	
	display: none;
}

.tabs {
	display: flex;
	align-items: stretch;
	list-style: none;
	padding: 0;
	border-bottom: 1px solid #83b0da;	
    margin-left: 0px;

}
.tab > label {
	display: block;
	margin-bottom: -1px;
	padding: 12px 15px;
	border: 1px solid #7faad3;
	background: #eee;
	color: #666;
	font-size: 14px; 
	letter-spacing: 1px;
	cursor: pointer;	
	transition: all 0.3s;
	font-family: 'tahoma';
	      padding-right: 46px;
    padding-left: 58px;
}
.tab:hover label {
	border-top-color: rgb(170, 167, 167);
	color: #333;
}

.tab-content {
	display: none;
	margin-left: 24px;

	
}

/* As we cannot replace the numbers with variables or calls to element properties, the number of this selector parts is our tab count limit */
.tabbed [type="radio"]:nth-of-type(1):checked ~ .tabs .tab:nth-of-type(1) label,
.tabbed [type="radio"]:nth-of-type(2):checked ~ .tabs .tab:nth-of-type(2) label,
.tabbed [type="radio"]:nth-of-type(3):checked ~ .tabs .tab:nth-of-type(3) label,
.tabbed [type="radio"]:nth-of-type(4):checked ~ .tabs .tab:nth-of-type(4) label,
.tabbed [type="radio"]:nth-of-type(5):checked ~ .tabs .tab:nth-of-type(5) label,
.tabbed [type="radio"]:nth-of-type(6):checked ~ .tabs .tab:nth-of-type(6) label {
	border-bottom-color: #fff;
	border-top-color: #307ecc;
	background: #fff;
	color: #222;
}

.tabbed [type="radio"]:nth-of-type(1):checked ~ .tab-content:nth-of-type(1),
.tabbed [type="radio"]:nth-of-type(2):checked ~ .tab-content:nth-of-type(2),
.tabbed [type="radio"]:nth-of-type(3):checked ~ .tab-content:nth-of-type(3),
.tabbed [type="radio"]:nth-of-type(4):checked ~ .tab-content:nth-of-type(4),
.tabbed [type="radio"]:nth-of-type(5):checked ~ .tab-content:nth-of-type(5) {
	display: block;
}

.sc{
    border: 1px solid black;
    padding: 6px;
    border-radius: 50%;
    margin-left: 13px;
}


/*tab css end  */



/* table css starts */
	.ui-jqgrid .ui-jqgrid-htable .ui-jqgrid-labels th div {
    overflow: hidden;
    position: relative;
    height: auto;
    margin: 15px 5px;
        font-size: larger;
    font-family: 'tahoma';
}

.ui-jqgrid .ui-jqgrid-caption, .ui-jqgrid .ui-jqgrid-errorbar-ltr {
    text-align: left;
    height: 50px;
    font-family: 'tahoma';
    color: gray;
    background: #eef4f9;
}

.ui-jqgrid .ui-pg-table td {
    font-weight: 400;
    vertical-align: middle;
    padding: 1px;
    background: #eef4f9;
    padding-bottom: 6px;
    padding-top: 6px;
    font-size: small;
    font-family: 'tahoma';
}
.ui-jqgrid .ui-jqgrid-titlebar>.ui-jqgrid-titlebar-close>span.ui-icon {
    margin-top: -1px;
    display: none;
}
.ui-state-highlight, .ui-widget-content .ui-state-highlight, .ui-widget-header .ui-state-highlight {
    border: 1px solid gray; 
    background: #fbf9ee url(images/ui-bg_glass_55_fbf9ee_1x400.png) 50% 50% repeat-x;
    color: #363636;
    background: #bdff0030;
}
.ui-jqgrid-jquery-ui.ui-jqgrid .ui-jqgrid-bdiv tr.ui-row-ltr>td {
    border-color: #8080805c;
    font-size: larger;
    font-family: 'tahoma';
    line-height: 3.5;
}

#sel{
	width:70px;
	    background: #6fb3e0 !important;
    color: white;
    font-family: 'tahoma';
    font-size: revert;
	}
	.op{
	background-color: white;
	color:black;
	}
	
	.ui-state-highlight a, .ui-widget-content .ui-state-highlight a, .ui-widget-header .ui-state-highlight a {
    color: #00aaff;
    font-weight: 700;
}

.ui-jqgrid .ui-pager {
  height: 100px; /* Set the height of the pager element to 50 pixels */
}

 .ui-jqgrid .ui-pg-button {
  margin-left: 0.5em;
  margin-right: 0.5em;
  padding: 0.3em 0.5em;
} 

#down{
    float: right;
    margin-right: 9px;
}
/* table css ends  */
#tbl{
	border:1px solid rgba(0,0,0,0.1);
	width: 100%;
    text-align: center;
    border-collapse: collapse;
    font-family: 'tahoma';
    margin-top: 5%;
}
.th,.td{
border:1px solid rgba(0,0,0,0.2);


}
.th{
    color: #545454;
    background: rgba(0,0,0,0.1);
    height: 49px;
}
#cp
{
    background: aliceblue;
    height: 47px;
    border: 1px solid rgba(0,0,0,0.1);

}
.td{
    height: 40px;
}

#caption{
    float: left;
    align-self: end;
    margin-top: 12px;
    margin-left: 11px;
    font-size: revert;
    font-weight: bold;
}
#foot{
    background: aliceblue;
    border: 1px solid rgba(0,0,0,0.1);
    height: 48px;
    /* float: left; */
    display: flex;
    align-items: center;
    font-family: 'tahoma';
        font-size: initial;
  
}
#search1{
 margin-left: 11px;
    font-size: revert;
    font-weight: bold;
}
</style>
</head>

<body>
	<div class="topNav">
		<span id="img"><img
			src="https://rcc-test.econsys.io/ace-theme/images/LogoForHubPage.png"
			alt="Italian Trulli"></span>
	</div>
	<div class="navbar">

		<div style="display: flex;">
			<div class="menu-toggler">
				<span><i class="bi bi-list"></i></span> <span id="menu">MENU</span>
			</div>

			<div class="icons">
				<span id="home-icon"><i class="bi bi-house-door-fill"></i></span> <span
					class="s" style="margin-left: 3px;">RCC Limited</span> <span
					id="right-icon"><i class="bi bi-chevron-right"></i></span> <span
					class="s">Home</span>
			</div>
		</div>

		<div class="buttons">
			<button id="btn1" class="btn">
				<i class="bi bi-house-door-fill"></i>
			</button>
			<button id="btn2" class="btn">
				<i class="bi bi-diagram-3-fill"></i>
			</button>   
			<button id="btn3" class="btn">
				<i class="bi bi-tags-fill"></i>
			</button>
			<button id="btn4" class="btn">
				<i class="bi bi-ethernet"></i>
			</button>
			<button id="btn5" class="btn">
				<i class="bi bi-stopwatch-fill"></i>
			</button>
			<button id="btn6" class="btn">
				<i class="bi bi-info-circle-fill"></i>
			</button>
		</div>
	</div>
	
	
	

<div id="menuList">
<form id="myform">
<div id="formIcons">
<button id="btn1" class="btn">
				<i class="bi bi-house-door-fill"></i>
			</button>
			<button id="btn2" class="btn">
				<i class="bi bi-diagram-3-fill"></i>
			</button>
			<button id="btn3" class="btn">
				<i class="bi bi-tags-fill"></i>
			</button>
			<button id="btn4" class="btn">
				<i class="bi bi-ethernet"></i>
			</button>
			<button id="btn5" class="btn">
				<i class="bi bi-stopwatch-fill"></i>
			</button>
			<button id="btn6" class="btn">
				<i class="bi bi-info-circle-fill"></i>
			</button>
</div >



<div id="house"><span class="ficon"><i class="bi bi-house-door-fill"></i></span>Home</div>
<div id="edit"  class="btns" style="cursor: pointer;"><span class="ficon"><i class="bi bi-pencil-square"></i></span>RTQ<span id="down"><i class="bi bi-chevron-down"></i></span></div>

<div id="btnGroup">
<!-- <div class="btns"><span class="ficon" id="sub1" style="cursor: pointer;">Project</span></div> -->
 <div class="btns">
 
<%
String pageName=request.getParameter("page");
String url=request.getParameter("url");
String qrn=request.getParameter("qrn");
String customer=request.getParameter("customer");
{
%>
	<p:renderURL var="update">
	<p:param name="name" value="vinit"></p:param>
	<p:param name="QuoteNo" value=""></p:param>
	<p:param name="jspPage" value="/html/project/RTQ_Form.jsp"></p:param>
	
</p:renderURL>
<a href="${update}"  class="ficon" id="sub1" style="cursor: pointer;">Project</a>
<%--  <%}else{ %>
<p:renderURL var="update1">
	<p:param name="name" value="vinit"></p:param>
	<p:param name="QuoteNo" value="<%=qrn.toString() %>"></p:param>
	<p:param name="jspPage" value="<%=url.toString() %>"></p:param>
	
</p:renderURL>
<a  href="${update1}"  class="ficon" id="sub1" style="cursor: pointer;" >Project</a>

 
<%} %> --%>
</div>
<div class="btns"><span class="ficon" id="sub2">Small Work</span></div>
<div class="btns"><span class="ficon" id="sub3">T&M</span></div>
<div class="btns"><span class="ficon" id="sub4">Service & Maintenance</span></div>
<div class="btns"><span class="ficon" id="sub5">Call Out</span></div>
</div>

<div id="myleads"  class="btns"><span class="ficon"><i class="bi bi-diagram-3-fill"></i></span>My Leads</div>
<div id="mo"  class="btns"><span class="ficon"><i class="bi bi-tags-fill"></i></span>My oportunities</div>
<div id="customer"  class="btns"><span class="ficon"><i class="bi bi-building"></i></span>Customer</div>
<div id="star"  class="btns"><span class="ficon"><i class="bi bi-star-fill"></i></span>My Watchlist</div>
<div id="pr"  class="btns"><span class="ficon"><i class="bi bi-people-fill"></i></span>Project Report</div>
<div id="admin"  class="btns"><span class="ficon"><i class="bi bi-person-fill"></i></span>Admin</div>
<div id="allproject"  class="btns"><span class="ficon"><i class="bi bi-building-fill"></i></span>All Projects</div>
<div id="wl"  class="btns"><span class="ficon"><i class="bi bi-check2-square"></i></span>Warrenty List</div>
<div id="al"  class="btns"><span class="ficon"><i class="bi bi-list"></i></span>All Leads</div>
<div id="reports"  class="btns"><span class="ficon"><i class="bi bi-clock-fill"></i></span>Reports</div>
<div id="edb"  class="btns"><span class="ficon"><i class="bi bi-clipboard-data-fill"></i></span>Executive Dash board</div>
<div id="pd"  class="btns"><span class="ficon"><i class="bi bi-file-earmark-fill"></i></span>Project Documets</div>
</form>
</div>


	<div id="colorBox">
	
	<div id="b1" class="box">
	<span class="v">Tasks</span>
	<div id="c1" class="circle">
	<span class="numbers">40</span>	
	</div>
	<div class="nl">
	<span class="n"><a href="#">Now : 30</a></span>
	<span class="l"><a href="#">Later : 05</a></span>
	</div>
	</div>
	
	
	<div id="b2" class="box">
	<span class="v">Reviews</span>
	<div id="c2" class="circle">
	<span class="numbers">25</span>	
	</div>
	<div class="nl">
	<span class="n"><a href="#">Now : 10</a></span>
	<span class="l"><a href="#">Later : 00</a></span>
	</div>
	</div>
	
	<div id="b3" class="box">
	<span class="v">Approvals</span>
	<div id="c3" class="circle">
	<span class="numbers">15</span>	
	</div>
	<div class="nl">
	<span class="n"><a href="#">Now : 20</a></span>
	<span class="l"><a href="#">Later : 01</a></span>
	</div>
	</div>
	
	<div id="b4" class="box">
	<span class="v">Buddy Tasks</span>
	<div id="c4" class="circle">
	<span class="numbers">40</span>
	</div>
	</div>
	</div>
	
	
	<!--Tabs starts  -->
	<div class="page-content">
        <div class="tabbed">
            <input type="radio" id="tab1" name="css-tabs" >
            <input type="radio" id="tab2" name="css-tabs" checked>
            <input type="radio" id="tab3" name="css-tabs">
              <input type="radio" id="tab4" name="css-tabs">
            
           
            <ul class="tabs">
                <li class="tab"><label for="tab1">Now<span class="sc">40</span></label></li>
                <li class="tab"><label for="tab2">Later<span class="sc">10</span></label></li>
                <li class="tab"><label for="tab3">All<span class="sc">01</span></label></li>
                 <li class="tab"><label for="tab4">Buddy Task<span class="sc">05</span></label></li>
            </ul>
           
            
            <div class="tab-content">
               
           
   
   <!--table starts here  -->
   
	 <div id="jgDiv1" style="margin-top: 53px;">
        <table id="JQGrid1" >
        </table>
        <div id="pager"></div>
          
       </div>
       
       <!-- table ends here -->
       
        </div>
            
            <div class="tab-content">
               <div id="table">
<table id="tbl">
<caption id="cp"><span id="caption"><span id="search" style="color: orange;"><i class="bi bi-search"></i> </span>Search
<span id="doc" style="color:green; margin-left:5px"><i class="bi bi-file-earmark-arrow-down"></i></span>
<span id='print' style="color:#f1536f;margin-left:5px"><i class="bi bi-printer-fill"></i></span>
</span>
 </caption>
<tr>
<th class="th">Quote Referance</th>
<th class="th">Job Referance</th>
<th class="th">Customer</th>
<th class="th">Site Name</th>
<th class="th">Project</th>
<th class="th">Task</th>
<th class="th">Anticipated Order date</th>
<th class="th">Recipt Date</th>
<th class="th">Type</th>
<th class="th">Last Update</th>
</tr>

<tr>
 <%
String pageName1=request.getParameter("page");
String url1=request.getParameter("url");
String qrn1=request.getParameter("qrn");
if(pageName1==null || url1==null || qrn1==null || pageName=="" || url1=="" || qrn1==""){
%>
<td class="td">CH2589-7</td>
<td class="td">-</td>
<td class="td">Green Space</td>
<td class="td">Baner</td>
<td class="td">GreenParkHotel</td>
<td class="td"> 
	<p:renderURL var="update2">
	<p:param name="name" value="vinit"></p:param>
	<p:param name="QuoteNo" value=""></p:param>
	<p:param name="jspPage" value="/html/project/RTQ_Form.jsp"></p:param>
</p:renderURL>
<a href="${update2}">Request To Quote</a>
<%}else{ %>
<td class="td"><%=qrn1 %></td>
<td class="td">-</td>
<td class="td">Green Space</td>
<td class="td">Baner</td>
<td class="td">GreenParkHotel</td>
<td class="td"> 
<p:renderURL var="update3">
	<p:param name="name" value="vinit"></p:param>
	<p:param name="QuoteNo" value="<%=qrn1.toString() %>"></p:param>
	<p:param name="jspPage" value="<%=url1.toString() %>"></p:param>
</p:renderURL>
<a  href="${update3}" ><%=pageName1%></a>


<%}} %> 
</td>
<td class="td">12/03/2023</td>
<td class="td">04/04/2023</td>
<td class="td">P</td>
<td class="td">03/04/2023</td>
</tr>

<tr>
<td class="td">CW1258-2</td>
<td class="td">-</td>
<td class="td">PIP</td>
<td class="td">Mumbai</td>
<td class="td">TechPark</td>
<td class="td">Cummercial Review</td>
<td class="td">15/04/2023</td>
<td class="td">1/03/2023</td>
<td class="td">T&M</td>
<td class="td">25/04/2023</td>
</tr>

<tr>
<td class="td">PX1588-2</td>
<td class="td">-</td>
<td class="td">Lean</td>
<td class="td">Pune</td>
<td class="td">Hospital</td>
<td class="td"> Review</td>
<td class="td">10/04/2023</td>
<td class="td">11/03/2023</td>
<td class="td">S</td>
<td class="td">19/04/2023</td>
</tr>

<tr>
<td class="td">GE4358-2</td>
<td class="td">-</td>
<td class="td">Swiggy</td>
<td class="td">Delhi</td>
<td class="td">TechPark</td>
<td class="td">Prepare To Quote</td>
<td class="td">29/03/2023</td>
<td class="td">24/03/2023</td>
<td class="td">S</td>
<td class="td">05/04/2023</td>
</tr>

<tr>
<td class="td">CW1258-2</td>
<td class="td">-</td>
<td class="td">WestSide</td>
<td class="td">Mumbai</td>
<td class="td">Shopping Mall</td>
<td class="td">RTQ</td>
<td class="td">10/04/2023</td>
<td class="td">12/03/2023</td>
<td class="td">T&M</td>
<td class="td">07/04/2023</td>
</tr>
</table>
<div id="foot"><span id="search1" style="color: orange;"><i class="bi bi-search"></i> </span>Search
<span id="doc1" style="color:green; margin-left:6px"><i class="bi bi-file-earmark-arrow-down"></i></span>
<span id='print1' style="color:#f1536f;margin-left:6px"><i class="bi bi-printer-fill"></i></span>
</div>
</div> 
            </div>
            
            <div class="tab-content">
                <h4>ssssssssssssss</h4>
            </div>
            
            <div class="tab-content">
                <h4>div number4</h4>
            </div>
        </div>
        
    </div>

 



<script type="text/javascript">
$(document).ready(function(){
	
	$('#btnGroup').hide();
	$('#edit').click(function(){
		$('#btnGroup').slideToggle();
	});
	
	
	/*  grid table start here*/
	 var dataArray = [
	      {quoteReference:"Q48684-P",JobReference:"JS00252",customer:"Park Plaza",SiteName:"Mumbai",Project:"AmaTechPark",task:"PrepareToQuote",AnticipatedOrderDate:"16/4/2023",ReceiptDate:"23/4/2023",type:"P",LastUpdate:"30/4/2023"},
	      {quoteReference:"PS2684-Q",JobReference:"SD00122",customer:"AmarTechPark",SiteName:"Pune",Project:"PIP",task:"Submit",AnticipatedOrderDate:"26/5/2023",ReceiptDate:"02/5/2023",type:"P",LastUpdate:"29/4/2023"},
	      {quoteReference:"Q48684-Z",JobReference:"VF00522",customer:"PIP",SiteName:"Nashik",Project:"Ranger",task:"Customer",AnticipatedOrderDate:"12/4/2023",ReceiptDate:"22/5/2023",type:"P&S",LastUpdate:"25/4/2023"},
	      {quoteReference:"L74684-F",JobReference:"JR00222",customer:"Green",SiteName:"Mumbai",Project:"Hi-tech",task:"Preorder",AnticipatedOrderDate:"28/4/2023",ReceiptDate:"23/4/2023",type:"P",LastUpdate:"15/4/2023"},
	      {quoteReference:"Z28684-G",JobReference:"JG00852",customer:"Spcies",SiteName:"Delhi",Project:"Paraoxide",task:"OrderAcceptance",AnticipatedOrderDate:"15/4/2023",ReceiptDate:"19/4/2023",type:"S",LastUpdate:"10/4/2023"},
	      {quoteReference:"V46584-K",JobReference:"FR00932",customer:"Hospital",SiteName:"London",Project:"Radium",task:"PrepareToQuote",AnticipatedOrderDate:"14/4/2023",ReceiptDate:"05/4/2023",type:"T&M",LastUpdate:"13/4/2023"}

	    ];
	

	    $("#JQGrid1").jqGrid({
	      datatype: "local",
	      data: dataArray,
	      colNames:["", "Quote Reference","Job reference","Customer", "Site Name","Project","Task","Anticipated Order Date","Receipt Date","Type","Last update",""],
	      colModel: [
	       
            {
		    name: 'iconColumn',
 			width: 70,
		    align: 'center',
 			formatter: function(cellvalue, options, rowObject) {
    	    return '<i class="bi bi-star"></i>';
 			}
				}, 
			
	        { name: "quoteReference",id:1, width: 120,align: "center", resizable: true, editable: true, editoptions: { size: 10 } },
	        { name: "JobReference",id:2,width: 130,  editable: true,align: "center", resizable: true,editoptions: { size: 10 } },
	        { name: "customer",width: 130, editable: true,align: "center",resizable: true, editoptions: { size: 10 } },
	        { name: "SiteName", width:130, editable: true,align: "center",resizable: true, editoptions: { size: 10 } },
	        { name: "Project", width: 130, editable: true,align: "center",resizable: true, editoptions: { size: 10 } },
	        { name: "task", width: 120,formatter:'link',align: "center",resizable: true, editoptions: { size: 10 } },
	        	    
	        	    
	        { name: "AnticipatedOrderDate",formatter: "date",resizable: true,  editable: true,align: "center", editoptions: { size: 10 } },
	        { name: "ReceiptDate",formatter: "date",width:120, resizable: true,  editable: true,align: "center", editoptions: { size: 10 } },
	        { name: "type", width: 70, editable: false,align: "center",resizable: true, editoptions: { size: 10 } },
	        { name: "LastUpdate",width:100,formatter: "date", resizable: true,  editable: true,align: "center", editoptions: { size: 10 } },
	        { name: 'iconColumn',
     			width: 90,
    		    align: 'center',
     			formatter: function(cellvalue, options, rowObject) {
        	    return '<select id="sel"><option  class="op">Action</option>'
        	    +'<option class="op">Open</option><option class="op">Mark For Later</option>'
        	    +'<option class="op">Snooze</option></select>';
     			}
	        }
	        ],
	      sortorder: "desc",
	      viewrecords: true,
	      rowNum:5,
	      pager:'pager',
	      toppager: true,
	      caption:"Now",
	      
	      
	    	 /*  beforeSelectRow: function (rowid, e) {
		    	  var target = $(e.target);
		    	  if (target.is("a")) {
		    	    e.preventDefault();
		    	    var url = target.attr("href");
		    	    window.location.href = url;
		    	  }
		    	  return true;
		    	}
 */
	    }).navGrid('#pager',{edit:false,add:true,del:false,search:true,refresh:false,})
	    
	    
	    
	   $('#JQGrid1').navButtonAdd('#pager', {
  		caption: '',
        buttonicon: 'ui-icon-print',
 	    onClickButton: function() {
   	    $('#JQGrid1').printThis();
  		}
		});
	    
	   

		
		$('#menuList').hide();
		$('.menu-toggler').click(function(){
			
			$('#menuList').slideToggle();
		})
		

});
</script>

</body>
</html>
						