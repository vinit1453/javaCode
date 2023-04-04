<!-- Asks to assign Sales Lead if not any business rule Flagged in between RTQ -PtQ -->
<!-- Display when business rules are flagged. -->
<%@ taglib uri="http://java.sun.com/portlet" prefix="p" %>
<p:actionURL name="asignSalesLead" var="update"></p:actionURL>
<%String qrn=request.getParameter("QuoteNo"); %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>SalesLeader Assign</title>
	<style type="text/css">
	.a *{
font-size:18px;
font-family:'Segoe UI' !important;
}
	#identity{
	          margin-left: 15px;
	          padding-bottom: 10px;
	}
	</style>
	<!--jquery cdn  -->
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
 <!--Bootstrap Icon-->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>
<body>
	<div class="a">
		<form action="<%=update%>" method="post">
		<div class="first">
			<div class="toggle-bar" style="font-family: 'tahoma';">
				<label
					style="border: 1px solid rgba(0, 0, 0, 0.3); padding: 7px; color: #057ac1; font-weight: bold"
					class="toggle-button "><span class="arrow1"><span
						class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>
					Sales Leader</label>
			</div>
			<div class="toggle-content"
				style="border: 1px solid rgba(0, 0, 0, 0.3); margin-top: -6px;">
				<div style="display: flex; flex-direction: row; margin: 15px;padding:2px">
					<div>
						Sales Leader &nbsp<span style="color: red; font-weight: bold">*</span>
					</div>
					<div style="margin:0 10px;">
						<select id="leadName" name="salesLead">
						<option value="">Select</option>
						<option value="Vinit">Vinit</option>
							<option value="Prakash">Prakash</option>
							<option value="Ranjana">Ranjana</option>
							<option value="Pratiksha">Pratiksha</option></select>
					</div>
					<div>
						<span class="btn" style="background-color: #057ac1">View
							WorkLoad</span>
					</div>
					<input type="hidden" name="QuoteNo" value="<%=qrn%>"/>
				</div>
			</div>
		</div>
		<div class="second" style="margin-top:10px;">
				<div class="toggle-bar" style="font-family: 'tahoma';">
					<label
						style="border: 1px solid rgba(0, 0, 0, 0.3); padding: 7px; color: #057ac1; font-weight: bold"
						class="toggle-button "><span class="arrow1"><span
							class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>
						Comment History</label>
				</div>
				<div class="toggle-content"
					style="border: 1px solid rgba(0, 0, 0, 0.3); margin-top: -6px;">
                          no Comments at present
				</div>
			</div>
		
		<div class="3" style="margin-top:10px;">
		<div style="margin-top:10px;"><strong>Comments &nbsp<span style="color:red;font-weight:bold">*</span></strong></div>
		<div><textarea class="ta" id="comments" name="comments" rows="4" style="width:98%;max-width:100%" ></textarea></div>
		</div>
		<div class="btns" style="text-align:end">

						<div>
							<div class="btn " id="btn1" >New Link</div>
							<div class="btn " id="btn2">Link Project</div>
							<div class="btn btn-primary" id="btn3">Save</div>
							<input type="submit" class="btn btn-success" onclick="validate()" id="btn4" value="Allocate"/>
							<input type="reset" class="btn btn-danger" id="btn5" value="Cancel"/>
						</div>
					</div>
		</form>
	</div>
	<script>

	
		function setError(tagname, errormsg) {
			tagname.style.border = "1px solid red";
			/*  var err=tagname.parentElement.parentElement.querySelector('.labels');
			  err.style.color="red";   */
		}

		function removeError(tagname) {
			tagname.style.border = "1px solid #cbcbcb";
		}

		function validate() {

			validForm = true;
             var lead=document.getElementById('leadName');
             if(lead.value=="" || lead.value==null ){
            	 setError(lead,"Choose valid Lead Name");
 				validForm=false;
             }else{
            	 removeError(lead);	
             }
             var comments=document.getElementById('comments');
             if(comments.value=="" || comments.value==null ){
            	 setError(comments,"Choose valid Lead Name");
 				validForm=false;
             }else{
            	 removeError(comments);	
             }
			if (validForm == true) {

				alert("success");
				return validForm;

			}
			alert("enter valid details marked in red");
			event.preventDefault();

		}
		$(document)
				.ready(
						function() {
							$('.toggle-content').hide();
							$('.arrow-up1').hide();

							$(".toggle-button")
									.click(
											function() {
												/* alert(this.parentElement.parentElement.classList); */
												var parent = $('.'
														+ this.parentElement.parentElement.classList);
												$('.arrow-up1,.arrow-down1',
														parent).toggle();
												/* $('.'+this.parentElement.parentElement.classList).children('.arrow-up1,.arrow-down1').toggle(); */
												$(
														'.'
																+ this.parentElement.parentElement.classList)
														.children(
																".toggle-content")
														.slideToggle("fast");
											});
						});
	</script>
</body>
</html>