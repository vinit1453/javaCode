

<!-- Ranjana & pratiksha Doing -->
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>
 <%@ page import="com.test.*,java.util.*,com.google.gson.*,com.liferay.portal.kernel.json.*"  %> 
<p:actionURL name="form4" var="add"></p:actionURL>
<%/* String qrn=request.getParameter("QuoteNo"); */
      /* String qrn="PW1017-I"; */
      Project prj=new Project();
	                     String qrn1=request.getParameter("QuoteNo"); 
	                    
						String st=prj.getFormData(qrn1);
						Gson gson = new Gson();  
						JSONObject obj =  JSONFactoryUtil.createJSONObject(st);
						
						%> 

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.js"
	integrity="sha512-eSeh0V+8U3qoxFnK3KgBsM69hrMOGMBy3CNxq/T4BArsSQJfKVsKb5joMqIPrNMjRQSTl4xG8oJRpgU2o9I7HQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.css"
	integrity="sha512-0nkKORjFgcyxv3HbE4rzFUlENUMNqic/EzDIeYCgsKa/nwqr2B91Vu/tNAu4Q0cBuG4Xe/D1f/freEci/7GDRA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/0a7c3923f5.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<p:defineObjects />

<style>
.icon {
	color: red;
	font-weight: bold;
	font-size: 15px;
	margin-left: 4px;
}

.comment-timeline {
	padding: 10px;
	display: grid;
	grid-template-columns: min-content 1px max-content;
}

.current-user-name {
	text-align: right;
	padding: 0px 15px;
	color: #a069c3;
	font-weight: bold;
}

.verticle-timeline {
	position: relative;
	background: gray;
}

.timeline-point {
	position: absolute;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
	text-align: center;
	background: #6fb3e0;
	height: 10px;
	width: 10px;
	border-radius: 50%;
}

.comments-on-time {
	padding: 0px 5px 5px 20px;
	font-weight: bold;
}

.stage {
	color: #478fca;
	font-weight: bold;
}

.inpsize {
	height: 33px !important;
	width: 248px !important;
}

.w3-white, .w3-hover-white:hover {
	color: #7250d7 !important;
	background-color: #cfc9c900 !important;
}

.w3-display-topright {
	position: absolute;
	right: 0;
	top: 0;
	color: red;
}

.w3-modal-content {
	width: 595px;
}

.btn1 {
	float: right;
	height: 39px;
}

.lnav {
	background-color: #2196f3;
	margin-left: -16px;
	margin-right: -16px;
}

.fa-circle-plus:before, .fa-plus-circle:before {
	content: "\f055";
	margin-left: -14px;
}

*, *:before, *:after {
	box-sizing: unset;
}
.error1{
display:none;
font-weight:bold;
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
<script>

$(document)
.ready(
	function () {
		
			var todayDate = new Date(Date.now()).toLocaleString().split(',')[0];
			/* alert("Date"+new Date(Date.now()).toLocaleString().split(',')[0]); */
			  $("#dateofBirth1").val(todayDate);
		$("#inp1").datepicker();
		$('#calender').click(function () {
			$("#inp1").focus();

		});

		$("#inp2").datepicker();
		$('#calender3').click(function () {
			$("#inp2").focus();

		});

		$("#inp3").datepicker();
		$('#calender4').click(function () {
			$("#inp3").focus();

		});

		$('.drop').hide();
		$('#drop2').hide();
		$('#text').hide();
		/* $('.error1').hide(); */
		$('#comtype').change(function () {

			var temp = $('#comtype').val();
			console.log(temp);
			switch (temp) {
				case "LOI Received - Under Review":
					$(".attr").html("Upload LOI");
					$('.drop').show();
					break;
				case "PO Received - Under Review":
					$(".attr").html("Upload PO");
					$('.drop').show();
					break;
				case "Verbal Commitment Received - Under Review":
					$(".attr").html("");
					$('.drop').show();
					break;
				case "Email Received - Under Review":
					$(".attr").html("Upload email");
					$('.drop').show();
					break;
				case "Sub-Contract Received - Under Review":
					$(".attr").html("Upload sub_contract");
					$('.drop').show();
					break;
				default:
					$(".attr").html("");
				$('.drop').hide();
			}
		});
		/* 	if ($('#comtype').val() != "") {
				if ($('#comtype').val() == "LOI Received - Under Review" ){
					$("attr").html("Upload LOI");
					$('.drop').show();
				}
				else if ($('#comtype').val() == "PO Received - Under Review" ){
					$(".attr").html("Upload PO");
					$('.drop').show();
				}
				
		} 
			 else {
				$('.drop').hide();
			}*/



		$('#credit').change(function () {
			if ($('#credit').val() == "yes") {
				$('#drop2').show();
				$('#text').hide();
			} else if ($('#credit').val() == "No") {
				$('#text').show();
				$('#drop2').hide();

			} else {
				$('#drop2').hide();
				$('#text').hide();
			}

		});

		$('.selectdrop').hide();
		$('#selectcom')
			.change(
				function () {
					var temp1 = $('#selectcom').val();
					switch(temp1){
					case "Customer Commitment Received":
						$('.selectdrop').show();
						$('.order_date').hide();
						$('.status1').css(
							"margin-left",
							"200px");
						break;
					case "Lost":
						$('.order_date').hide();
						$('.status1').css(
							"margin-left",
							"363px");
						$('.selectdrop').hide();
						$('.drop').hide();
						break;
					case "Withdraw":
						$('.order_date').hide();
						$('.status1').css(
							"margin-left",
							"363px");
						$('.selectdrop').hide();
						$('.drop').hide();
						break;
					case "Select":
						$('.order_date').hide();
						$('.status1').css(
							"margin-left",
							"363px");
						$('.selectdrop').hide();
						$('.drop').hide();
						break;
					case "Amend":
						$('.order_date').hide();
						$('.status1').css(
							"margin-left",
							"363px");
						$('.selectdrop').hide();
						$('.drop').hide();
						break;
					case "Update":
						$('.order_date').show();
						$('.status1').removeAttr("style");
						$('.selectdrop').hide();
						$('.drop').hide();
						break;
						default:
							$('.selectdrop').hide();
						$('.drop').hide();
					}
				/* 	if ($('#selectcom').val() == "Customer Commitment Received") {
						$('.selectdrop').show();
						$('.order_date').hide();
						$('.status1').css(
							"margin-left",
							"200px");

					} else if ($('#selectcom').val() == "Lost" || $('#selectcom').val() == "Withdraw"|| $('#selectcom').val() == "Select"
						|| $('#selectcom').val() == "Amend") {
						$('.order_date').hide();
						$('.status1').css(
							"margin-left",
							"363px");
						$('.selectdrop').hide();
					} else if ($('#selectcom').val() == "Update") {
						$('.order_date').show();
						$('.status1').removeAttr("style");
						$('.selectdrop').hide();
						$('.drop').hide();
						/* $('.selectdrop').hide();
					} else {
						$('.selectdrop').hide();
						$('.drop').hide();
					} */

				});

		$('.arrow-down1').hide();
		$('.arrow-down2').hide();
		$("#flip1").click(function () {
			$('.arrow-up1,.arrow-down1').toggle();
			$("#panel1").slideToggle("slow");
		});
		$("#flip2").click(function () {
			$('.arrow-up2,.arrow-down2').toggle();
			$("#panel2").slideToggle("slow");
		});
		$("#datepicker1").datepicker();
		$('#calender1').click(function () {
			$("#datepicker1").focus();
		});

		$("#dateofBirth1").datepicker();
		$('#calender2').click(function () {
			$("#dateofBirth1").focus();
		});

		$(function () {

			// Generic logic
			var toggleDropdown = function (owner) {
				// hasOwner is a boolean store
				var hasOwner = typeof owner !== typeof undefined
					&& owner;

				// Use boolean to decide whether to disable/enable co-owner field
				$('#co-owner').prop('disabled', !hasOwner)
					.val('');
			}

			// Trigger logic when #owner is updated
			$('#owner').on('change', function () {
				toggleDropdown($(this).val());
			});

			// Trigger logic on DOM ready
			toggleDropdown();
		});

	});
</script>
</head>
<body>

	<div>
		<form id="project" name="myForm" action="<%=add%>" method="post" >
			<div style="border: 0.25px solid #C5D0DC; background-color: #eef4f9; color: #066faf; font-weight: bold; padding: 8px"
				id="flip1">
				<span class="arrow1"><span class="arrow-up1">&#x25BC;</span><span
					class="arrow-down1">&#9656;</span></span>Status of Submitted Quote
			</div>
			<div style="border: 0.25px solid #D3D3D3;" id="panel1">
				<br>
				<table style="margin-left: 10%;">
					<tr>
						<td class="error1" colspan="6">
							<p style="margin-left: -107px; color: red">you cannot Submit
								when "Status of Submitted Quote" is selected as Update</p>
						</td>
					</tr>
					<tr>
						<td class="status" style="margin-left: 20%; text-align: right;">
							<label class="status1" id='s5'>Status of Summited Quote<span
								class="icon">*</span></label>
						</td>
						<td style="margin-right: 40%"><select class="inpsize"
							id="selectcom"
							name="statusOfSubmit">
								<option value="Select">Select</option>
								<option value="Lost">Lost</option>
								<option value="Amend">Amend Bid</option>
								<option value="Update" selected>Update</option>
								<option value="Withdraw">Withdrawn</option>
								<option value="Customer Commitment Received">Customer
									Commitment Received</option>

						</select></td>

						<!-- extra column -->
						<td style="text-align: end" class="order_date"><label>Anticipated
								Order Date<span class="icon">*</span>
						</label></td>
						<td class="order_date"><input type="text" id="inp1" name="aod" autocomplete="off" value="<%=obj.getString("aoDate")%>"></td>
						<td class="order_date"><span id="calender"
							style="margin-left: 31%;">&#128197;</span></td>
						<!-- extra column -->
					</tr>
					<tr>
						<td><label class="order_date" id='you'>&nbsp &nbsp
								&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp Win probability<span
								class="icon">*</span>
						</label>
						<td style="margin-right: 40%"  class="order_date"><select
							class="inpsize" id="selectcom"
							name="Win_probability">
								<option value="Select">Select</option>
								<option value="50">50</option>
								<option value="60" selected>60</option>
								<option value="75">75</option>
								<option value="85">85</option>
								<option value="100">100</option>

						</select></td>

						<!-- extra column -->
						<td style="text-align: end" class="order_date"><label>Project
								Programme Start Date<span class="icon">*</span>
						</label></td>
						<td class="order_date"><input type="text" id="inp2" autocomplete="off" value="<%=obj.getString("ppStart")%>"></td>
						<td class="order_date"><span id="calender3"
							style="margin-left: 31%;">&#128197;</span></td>
						<!-- extra column -->
					</tr>

					<!-- extra column -->






					<!-- Pre-Order Information -->
					<tr>
						<td class="status" style="margin-left: 20%; text-align: right;">
							<label
							style="font-size: 16px;">Pre-Order
								Information</label>
						<td><i
							onclick="document.getElementById('id01').style.display='block'"
							class="w3-button w3-white fa-solid fa-circle-plus"
							style="color: rgb(135, 42, 221);"
							id="yui_patched_v3_11_0_1_1680154701549_499"></i></td>





						<!-- extra column -->
						<td class="order_date"><label style="margin-left: 178px;">Project
								Program End Date<span class="icon">*</span>
						</label></td>
						<td class="order_date"><input type="text" id="inp3" autocomplete="off" value="<%=obj.getString("ppEnd")%>"></td>
						<td class="order_date"><span id="calender4"
							style="margin-left: 31%;">&#128197;</span></td>
						<!-- extra column -->

					</tr>



					<!-- Customer Commitment Type Details -->
					<tr class="selectdrop">
						<td style="margin-left: 20%; text-align: right;"><label
							id="s6">Customer Commitment Type<span class="icon">*</span></label>
						</td>
						<td><select id="comtype"
							name="customerCommitmentType"
							style="height: 37px; width: 250px;">
								<option value="Select" selected>Select</option>
								<option value="LOI Received - Under Review">LOI
									Received - Under Review</option>
								<option value="PO Received - Under Review">PO Received
									- Under Review</option>
								<option value="Verbal Commitment Received - Under Review">Verbal
									Commitment Received - Under Review</option>
								<option value="Email Received - Under Review">Email
									Received - Under Review</option>
								<option value="Sub-Contract Received - Under Review">Sub-Contract
									Received - Under Review</option>
						</select></td>
					</tr>
					<tr class="drop">
						<td class="attr" style="text-align: end">
							<!--  Update LOI  -->
						</td>
					</tr>

					<!-- Proposed Order Number & Value of the Commitment Details -->

					<tr class="drop">
						<td style="margin-left: 20%; text-align: right;"><label
							id="s1">Proposed Order Number<span class="icon">*</span></label>
						</td>
						<td><input type="text"
							name="proposed_order" placeholder=""
							id="p_order"></td>

						<td style="margin-left: 80%; text-align: right;"><label
							style="padding-left: 20px;" id="s2">Value of the Commitment(£)<span class="icon">*</span>
						</label></td>
						<td><input type="number"
							name="value_of_commitment" placeholder=""
							id="v_commit"></td>
					</tr>


					<!-- Receipt Method & Receipt Date Details -->

					<tr class="drop">
						<td style="margin-left: 20%; text-align: right;"><label>Receipt
								Method</label></td>
						<td><input type="text"
							name="receipt_method" id='r' placeholder="">
						</td>
						<td><label style="padding-left: 197px;" id="s3">Receipt
								Date<span class="icon">*</span>
						</label></td>
						<td><input style="width: 83%;" type="text" id="datepicker1"
							name="receipt_date" placeholder="DD/MM/YYYY">
							<span id="calender1">&#128197; </span></td>
					</tr>

					<!-- customer deemed creditworthy for this project  Details -->

					<tr class="drop">
						<td><label id="s4">Is the proposed customer deemed
								creditworthy for this project<span class="icon">*</span>
						</label></td>
						<td><select name="creditworthyProject" id="creditworthyProject"
							style="height: 37px; width: 250px;" id="credit">
								<option value="Select" selected>Select</option>
								<option value="yes">Yes</option>
								<option value="No">No</option>
						</select></td>

					</tr>
					<tr id="drop2">
						<td>
							<h3>dropzone</h3>
						</td>
					</tr>

					<tr id="text">
						<td style="text-align: end;"><label>Record proposed
								course of action to protect company<span class="icon">*</span>
						</label></td>
						<td><textarea id="prupaction"> </textarea></td>
					</tr>
				</table>

					<div class="w3-container">

						<div id="id01" class="w3-modal">
							<div class="w3-modal-content">
								<div class="w3-container">
									<span
										onclick="document.getElementById('id01').style.display='none'"
										class="w3-button w3-display-topright">&times;</span>
									<div>
										<div class="lnav">
											<label>Add New</label>
										</div>

										<label style="margin-left: 114px;">Date</label><input
											id="inpN"
											style="width: 163px; height: 34px; margin-left: 152px; margin-bottom: -15px; margin-top: -46px;">
										<span id="calenderN">&#128197;</span> <br>
										<hr>
										<label style="margin-left: 76px;">comment</label>
										<textarea
											style="margin-left: 153px; width: 257px; height: 130px; margin-top: -28px;"></textarea>
										<hr>


										<h3>dropzone...</h3>
										<div>
											<span class="btn1"> <input class="btn btn-info"
												type="button" value="Save">
											</span> <span class="btn1"> <input class="btn btn-danger"
												type="button" value="Cancel"></span>
										</div>

									</div>

								</div>
							</div>
						</div>
					</div>
					<div></div>
				<!-- Order Acknowlege Documents-Po Received  Details -->

				<fieldset style="border: 2px groove #ffffffb6; margin: 15px;"
					class="drop">
					<legend
						style="font-size: 13px; width: fit-content; border:none;margin: 9px; color: #64a9ce;">
						Order Acknowlege Documents-PO Received </legend>

					<table>
						<tr>
							<td style="margin-left: 20%; text-align: right;"><label>Quote
									Reference Number <%=obj.getString("qrn")%> &nbsp; &nbsp; &nbsp;</label></td>
							<td></td>
							<td style="margin-left: 20%; text-align: right;"><label>Date</label>
							</td>
							<td><input type="text" name="date"
								placeholder="DD/MM/YYYY" id="dateofBirth1"> <span id="calender2">&#128197;
							</span></td>
						</tr>

						<!-- Company And Addresss   Details -->

						<tr>
							<td style="margin-left: 20%; text-align: right;"><label>Company</label>
							</td>
							<td><input type="text" name="company" placeholder="" id='company' value="<%=obj.getString("customer")%>"></td>
							<td style="margin-left: 20%; text-align: right;"><label>Address</label>
							</td>
							<td><textarea id='address'
									name="<portlet:namespace/>address"><%=obj.getString("cAdd") %></textarea></td>
						</tr>
						<tr>
							<td style="margin-left: 20%; text-align: right;"><label>Attention
									of</label></td>
							<td><input type="text"
								name="attention_of" placeholder="" value="<%=obj.getString("conName") %>"
								id='attention'></td>
							<td style="margin-left: 20%; text-align: right;"><label>Subject</label>
							</td>
							<td><input type="text" name="subject"
								placeholder="" id='subject'></td>
						</tr>

						<!-- Project Name Setting Panel for Teerth Techonospace & Scope of works   Details -->

						<tr>
							<td style="margin-left: 20%; text-align: right;"><label>Project
									Name  <%=obj.getString("projectName") %> &nbsp; &nbsp; &nbsp;</label>
							</td>
							<td></td>
							<td style="margin-left: 20%; text-align: right;"><label>Scope
									of works</label></td>
							<td><textarea id='sow'
									name="scopeOfWorks" placeholder="" ><%=obj.getString("descWork")%></textarea>
							</td>
						</tr>

						<!-- Quoted Date & Proposed Works at Quadwave -->

						<tr>
							<td style="margin-left: 20%; text-align: right;"><label>Quoted
									Date <%= obj.getString("bidStart")%> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</label></td>
							<td></td>
							<td style="margin-left: 20%; text-align: right;"><label>Proposed
									Works at <%=obj.getString("siteName") %></label></td>
						</tr>

						<!-- advise and Postal Code -->

						<tr>
							<td style="margin-left: 20%; text-align: right;"><label>We
									will advise you</label></td>
							<td><input type="text"
								name="we_will_advise" placeholder=""
								id='advice'></td>
							<td style="margin-left: 20%; text-align: right;"><label>Postal
									Code</label></td>
							<td><input type="text"
								name="postal_code" placeholder="" value="<%=obj.getString("pCode") %>"
								id='postcode'></td>
						</tr>

						<!-- Correspond with role and name details -->

						<tr>
							<td style="margin-left: 20%; text-align: right;"><label>Correspond
									with Role</label></td>
							<td><select name="correspond_with_role"
								style="height: 25px; width: 250px;" id="owner">
									<option value="">select</option>
									<option value="Head of Sales">Head of Sales</option>
									<option value="Sales Leade">Sales Leader</option>
									<option value="Engineering Leader">Engineering Leader</option>
									<option value="Commercial Leader">Commercial Leader</option>
									<option value="Operations Leader">Operations Leader</option>
									<option value="Project Leader">Project Leader</option>
									<option value="Admin">Admin</option>
									<option value="Design Lead">Design Lead</option>
									<option value="Project Lead">Project Lead</option>
									<option value="External Consultant">External
										Consultant</option>
									<option value="Sales Director">Sales Director</option>
									<option value="Econsys National">Econsys National</option>
									<option value="Account Lead">Account Lead</option>
									<option value="Project Delegator">Project Delegator</option>

							</select></td>

							<td style="margin-left: 20%; text-align: right;"><label>Correspond
									with name</label></td>
							<td><select name="<portlet:namespace/>correspond_with_name"
								style="height: 25px; width: 250px;" id="co-owner">
									<option value="" selected>select an option</option>
									<option value="Pradeep">Pradeep</option>
									<option value="Rahul Singh">Rahul Singh</option>
									<option value="Sanket">Sanket</option>
									<option value="Prakash">Prakash</option>
									<option value="Vinit">Vinit</option>
									<option value="Devkaran">Devkaran</option>

							</select></td>
						</tr>

						<!-- Correspond with Email -->
						<tr>
							<td style="margin-left: 20%; text-align: right;"><label>Correspond
									with Email</label></td>
							<td><input type="email" name="email" id="email"
								placeholder=""></td>
						</tr>
					</table>
					<h1>DropZone</h1>
				</fieldset>
			</div>
			<!-- --Comment history-->
			<!-- -Comment history start -->


			<div
				style="border: 0.25px solid #C5D0DC; background-color: #eef4f9; color: #066faf; font-weight: bold; padding: 8px;"
				id="flip2">
				<span class="arrow2"><span class="arrow-up2">&#x25BC;</span>
					<span class="arrow-down2">&#9656;</span></span>Comment History
			</div>
			<div style="border: 0.25px solid #D3D3D3;" id="panel2">
				
<%  
				String str=prj.getAllComments(qrn1);
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
			%>
</div>
			<!-- -Comment history end -->



			<!-- --Comment section- details--->
			<div>
				<label id="s7">Comment<span class="icon">*</span></label>
				<textarea id="comment" maxlength="2000" style="width: 99%" rows="4" name="comment"></textarea>
			</div>

			<!-- --Button section- details--->

			<div style="float: right;">
				<span><input type="button" class="btn btn-primary" value="New Link"/> </span> 
				<span><input type="button" class="btn btn-primary" style="text-align: right;" value="Link Project"/></span> 
				<span> <input class="btn btn-info" type="button" value="Save">
				</span>
				<input type="submit" onclick="validate()" class="btn btn-success" id="submit" value="Submit"/>
				<span> <input class="btn btn-danger" type="reset"
					value="Cancel"></span>
			</div>
			<br>
		</form>
	</div>


	<!--  Validation part---->

	<script>
	

	function setError(tagname, errormsg) {
		tagname.style.border = "1px solid red";
		/*  var err=tagname.parentElement.parentElement.querySelector('.labels');
		  err.style.color="red";   */
	}

	function removeError(tagname) {
		tagname.style.border = "1px solid #cbcbcb";
	}
	function validateLOI(){
		validateThreeFields();
		var creditworthyProject=document.getElementById("creditworthyProject");
		if(creditworthyProject.value=="" || creditworthyProject.value==null || creditworthyProject.value=="Select"){
			setError(creditworthyProject, "Choose valid option");
			validForm = false;
			return true;
		}else{
			removeError(creditworthyProject);
			return false;
		}
		
		
	}
	
	function validateCustomerCommitment(){
		var comtype=document.getElementById('comtype');
		 switch(comtype.value){
		 case "Select":
			 setError(comtype, "Choose valid option");
			if(validateThreeFields()){
				 return true;
			 }else{
				 return false;
			 }
			 break;
		 case "LOI Received - Under Review":
			 if(validateLOI()){
				 return true;
			 }else{
				 return false;
			 }
			 break;
			 default:
				 return false;		 
		 }
		
	}

	function validate() {
		var validForm = true;
		var StatusOfSubmitQuote=document.getElementById("selectcom");

			if (StatusOfSubmitQuote.value == "Update") {
				 document.getElementsByClassName("error1")[0].style.display = "block"; 
				setError(StatusOfSubmitQuote, "Choose valid option");
				validForm = false;
			} else {
				 document.getElementsByClassName("error1")[0].style.display = "none"; 
				removeError(StatusOfSubmitQuote);
			}
		if (StatusOfSubmitQuote.value == ""
					|| StatusOfSubmitQuote.value == null
					|| StatusOfSubmitQuote.value == "Select") {
				setError(StatusOfSubmitQuote, "Choose valid option");
				validForm = false;
			} else {
				removeError(StatusOfSubmitQuote);
			}
		if (StatusOfSubmitQuote.value == "Customer Commitment Received") {
			       if(validateCustomerCommitment()){
                    validForm = false;
			       }
		} else {
			removeError(StatusOfSubmitQuote);
		}

			var comments = document.getElementById("comment");
			if (comments.value == "" || comments.value== null) {
				setError(comments, "Choose valid Comments");
				validForm = false;
			} else {
				removeError(comments);
			}

			if (validForm == true) {
				alert("success");
				return validForm;
			}
			alert("enter valid details marked in red");
			event.preventDefault();

		}
	</script>
</body>


