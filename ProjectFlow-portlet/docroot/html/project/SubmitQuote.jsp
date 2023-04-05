<!-- Asks to submitQuote to when any business rule are not flagged in b/w to prepare Quote-PreOrder Info-->
<%@ taglib uri="http://java.sun.com/portlet" prefix="p" %>
 <%@ page import="com.test.*,java.util.*,com.google.gson.*,com.liferay.portal.kernel.json.*"  %> 
<p:actionURL name="form3" var="add"></p:actionURL>
<%String qrn=request.getParameter("QuoteNo"); %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>SubmitQuote</title>
	<style type="text/css">
	.a *{
font-size:18px;
font-family:'Segoe UI' !important;
}
	#identity{
	          margin-left: 15px;
	          padding-bottom: 10px;
	}
	 /* timeLIne CSS */

	.timeline {
  	display: grid;
  	grid-template-columns: 10% 3px 50%;
}
.timeline__middle {
  		
  position: relative;
  background: grey;
  width: 1px;
  top: 15px;
}
.timeline__component{
	color: #a069c3;
	margin-top: 10px;
	margin-left: 10%;
	font-weight: bold;
}
.timeline__point {
  position: absolute;
  top: 0;
  left: 55%;
  transform: translateX(-50%);
  width: 10px;
  height: 10px;
  background: #009EFF;
  border-radius: 50%;
}
.timeline__component__right{
	padding: 15px;
}
.timeline__component--bottom {
  margin-bottom: 0;
}
div.timeline:last-of-type .timeline__middle{
	height:10px;
}
	
	</style>
	
	<!--jquery cdn  -->
	  <script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
        <link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--Bootstrap Icon-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<script>


$(document).ready(function() {
	
	/* alert("Date"+new Date(Date.now()).toLocaleString().split(',')[0]); */

	 
	  //1 date field
      $("#quoteSub").datepicker({dateFormat: 'dd/mm/yy',numberOfMonths: 3, showCurrentAtPos:0});
  	  	$('#calender1').click(function() {
  	  
  	    $("#quoteSub").focus();
  	  	});
});
</script>
</head>
<body>
	<div class="a">
		<form action="<%=add%>" method="post">
		<div class="first">
			<div class="toggle-bar" style="font-family: 'tahoma';">
				<label style="border: 1px solid rgba(0, 0, 0, 0.3); padding: 7px; color: #057ac1; font-weight: bold"
					class="toggle-button "><span class="arrow1"><span class="arrow-up1">&#x25BC;</span><span
							class="arrow-down1">&#9656;</span></span>
					Submit Quote</label>
			</div>
			<div class="toggle-content" style="border: 1px solid rgba(0, 0, 0, 0.3); margin-top: -6px;">
				<div style="display: flex; flex-direction: row; margin: 15px; padding: 2px">
					<div>
						Quote Submitted on &nbsp<span style="color: red; font-weight: bold">*</span>
					</div>
					<div style="margin: 0 10px;">
					<input  id="quoteSub" name="quoteSub" autocomplete="off"/><span class="calender1" id="calender1">&#128197</span>
					</div>
				</div>
					<input type="hidden" name="qrn" value="<%=qrn%>"/>
				<div style="display: flex; flex-direction: row; margin: 15px; padding: 2px">
					<div>
						% Win Probability &nbsp &nbsp<span style="color: red; font-weight: bold">*</span>
					</div>
					<div style="margin: 0 10px;">
						<select name="winProb" id="winProb" name="winProb">
						<option value="select" >Select</option>
						  <option value="60" selected>60</option>
						  <option value="10">10</option>
						   <option value="30">30</option>
						    <option value="50">50</option>
						      <option value="100">100</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<div class="second" style="margin-top: 10px;">
			<div class="toggle-bar" style="font-family: 'tahoma';">
				<label style="border: 1px solid rgba(0, 0, 0, 0.3); padding: 7px; color: #057ac1; font-weight: bold"
					class="toggle-button "><span class="arrow1"><span class="arrow-up1">&#x25BC;</span><span
							class="arrow-down1">&#9656;</span></span>
					Comment History</label>
			</div>
			<div class="toggle-content" style="border: 1px solid rgba(0, 0, 0, 0.3); margin-top: -6px;">
				<% Project prj=new Project(); 
				String str=prj.getAllComments(qrn);
                    String[] array=str.split("-");%>
               <% for(String s:array){%>
               <%  String[] a1=s.split(",");
        	   for(String e:a1){ %>
               
                        <div class="timeline">
				<div class="timeline__component">Prakash<br>Kamble</div>
				<div class="timeline__middle">
   					<div class="timeline__point"></div>
  				</div>
  			    <div class="timeline__component__right">
  			    	<p style="font-weight: bold;"><%=e.replaceAll("[^a-zA-Z0-9]", "")%></p>
  			    	<p></p>
  			    </div>
			</div>
			<%
			}}
			%></div>
		</div>

		<div class="3" style="margin-top: 10px;">
			<span style="color: red"><strong style="font-size: 15px">Please Record What Manner and When the Quote Was Submitted</strong></span>
			<div style="margin-top: 10px;">
				<strong>Comments &nbsp<span style="color: red; font-weight: bold">*</span></strong>
			</div>
			<div>
				<textarea class="ta" id="comments" maxlength="2000" name="comments" rows="3" style="width: 98%; max-width: 100%"></textarea>
			</div>
		</div>
		<div class="btns" style="text-align: end">

			<div>
				<div class="btn btn-primary" id="btn1">New Link</div>
				<div class="btn btn-primary" id="btn2">Link Project</div>
				<div class="btn btn-primary" id="btn4">Save</div>
				<input class="btn btn-success" type="submit" onclick="validate()" id="btn3" value="Submit"/>
				<input class="btn btn-danger" type="reset" id="btn5" value="Cancel"/>
			</div>
		</div>
		</form>
	</div>
	<script>
		$(document).ready(function(){
			$('.toggle-content').hide();
			$('.arrow-up1').hide();  
           
			$(".toggle-button").click(function(){
				/* alert(this.parentElement.parentElement.classList); */
				var parent= $('.'+this.parentElement.parentElement.classList);
                  $('.arrow-up1,.arrow-down1',parent).toggle();
				/* $('.'+this.parentElement.parentElement.classList).children('.arrow-up1,.arrow-down1').toggle(); */
				$('.'+this.parentElement.parentElement.classList).children(".toggle-content").slideToggle("fast"); 
			});
		});
		


		function setError(tagname,errormsg) {
		    tagname.style.border="1px solid red";
		   /*  var err=tagname.parentElement.parentElement.querySelector('.labels');
		     err.style.color="red";   */
		}

		function removeError(tagname){
			 tagname.style.border="1px solid #cbcbcb";
		}	
		
           function validate(){
        	   validForm=true;
        	   var first=document.getElementById('quoteSub');
        	   var second=document.getElementById('winProb');
        	   var three=document.getElementById('comments');
        	   
        	   if(first.value=="" || first.value==null ){
        		   setError(first,"Choose valid Project Location");
   				validForm=false;
   			}else{
   				removeError(first);	
   			}
        	   if(second.value=="" || second.value==null || second.value=="select"  ){
        		   setError(second,"Choose valid Project Location");
   				validForm=false;
   			}else{
   				removeError(second);	
   			}
        	   if(three.value=="" || three.value==null || three.value=="select"  ){
        		   setError(three,"Choose valid Project Location");
   				validForm=false;
   			}else{
   				removeError(three);	
   			}
        	   if (validForm==true) {
   				alert("success");
   				return validForm;
   			} 
   				alert("enter valid details marked in red");
   				event.preventDefault();
   		
   		}
		</script>
</body>
</html> 