<!-- prakash Doing -->
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>

<p:defineObjects />
<p:actionURL name="action" var="actionSample"></p:actionURL>
<html lang="en">
<head>
<title>Prepare To Quote</title>

<!--jquery cdn  -->
 <script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
        <link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<!--Bootstrap Icon-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<style type="text/css">
#table1 {
	margin-left: 50px;
	line-height: 4em;
}

#table2 {
	margin-left: 71px;
	line-height: 4em;
}

#table3 {
	margin-left: 19px;
	line-height: 4em;
}

#table4 {
	margin-left: 53px;
	line-height: 3.5em;
}

#table5 {
	margin-left: 49px;
	line-height: 3.5em;
}

#table6 {
	margin-left: 103px;
	line-height: 3.5em;
}

#table7 {
	margin-left: 126px;
	line-height: 3.5em;
}

#table8 {
	margin-left: 103px;
	line-height: 3.5em;
}

.l1 {
	text-align: end;
}

.t1 {
	border: 1px solid rgba(0, 0, 0, 0.3) !important;
}

.error {
	color: red;
}

.labels {
	margin-right: 9px;
}

.legends {
	color: #1d7bb3 !important;
	font-size:15px !important;
	font-weight:bold;
	width:fit-content;
	background:none;
	
}

#reqEst {
	margin-bottom: 31px;
	margin-left: 497px;
	padding: 9px;
	background: #4dacd3;
	border: none;
	color: white;
	font-family: 'tahoma';
}

#file1 {
	font-size: larger;
	cursor: pointer;
}

#file2 {
	font-size: larger;
	cursor: pointer;
	float: right;
}

#file3 {
	font-size: larger;
	cursor: pointer;
	float: right;
}

#buttons {
	float: right;
	margin-right: 12px;
}

#btn3 {
	background-color: #9585bf !important;
	border: none;
	cursor: pointer;
	color: white;
	font-size: small;
	font-family: 'tahoma';
	padding: 9px;
}

#btn4 {
	background-color: #9585bf !important;
	border: none;
	cursor: pointer;
	color: white;
	font-size: small;
	font-family: 'tahoma';
	padding: 9px;
}

#btn5 {
	background-color: #52bdd7;
	border: none;
	cursor: pointer;
	color: white;
	font-size: small;
	font-family: 'tahoma';
	padding: 9px;
}

#btn6 {
	background-color: #89c38f;
	border: none;
	cursor: pointer;
	color: white;
	font-size: small;
	font-family: 'tahoma';
	padding: 9px;
}

#btn7 {
	background-color: #eb6354;
	border: none;
	cursor: pointer;
	color: white;
	font-size: small;
	font-family: 'tahoma';
	padding: 9px;
}

.chat {
	font-size: revert;
}

/*Toggle button 2 css starts here  */
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

.about {
	margin: 70px auto 40px;
	padding: 8px;
	width: 260px;
	font: 10px/18px 'Lucida Grande', Arial, sans-serif;
	color: #bbb;
	text-align: center;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.3);
	background: #383838;
	background: rgba(34, 34, 34, 0.8);
	border-radius: 4px;
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.3));
	background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.3));
	background-image: -o-linear-gradient(top, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.3));
	background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.3));
	-webkit-box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2), 0 0 6px
		rgba(0, 0, 0, 0.4);
	box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2), 0 0 6px
		rgba(0, 0, 0, 0.4);
}

.about a {
	color: #eee;
	text-decoration: none;
	border-radius: 2px;
	-webkit-transition: background 0.1s;
	-moz-transition: background 0.1s;
	-o-transition: background 0.1s;
	transition: background 0.1s;
}

.about a:hover {
	text-decoration: none;
	background: #555;
	background: rgba(255, 255, 255, 0.15);
}

.about-links {
	height: 30px;
}

.about-links>a {
	float: left;
	width: 50%;
	line-height: 30px;
	font-size: 12px;
}

.about-author {
	margin-top: 5px;
}

.about-author>a {
	padding: 1px 3px;
	margin: 0 -1px;
}

.container {
	margin: 50px auto;
	width: 280px;
	text-align: center;
}

.container>.switch {
	display: block;
	margin: 12px auto;
}

.switch {
	position: relative;
	display: inline-block;
	vertical-align: top;
	width: 56px;
	height: 24px;
	padding: 1px;
	background-color: white;
	border-radius: 18px;
	box-shadow: inset 0 -1px white, inset 0 1px 1px rgba(0, 0, 0, 0.05);
	cursor: pointer;
	background-image: -webkit-linear-gradient(top, #eeeeee, white 25px);
	background-image: -moz-linear-gradient(top, #eeeeee, white 25px);
	background-image: -o-linear-gradient(top, #eeeeee, white 25px);
	background-image: linear-gradient(to bottom, #eeeeee, white 25px);
}

.switch-input {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
}

.switch-label {
	position: relative;
	display: block;
	height: inherit;
	font-size: 12px;
	text-transform: uppercase;
	background: #b9bfc1;
	border-radius: inherit;
	/* box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.12), inset 0 0 2px rgba(0, 0, 0, 0.15); */
	-webkit-transition: 0.15s ease-out;
	-moz-transition: 0.15s ease-out;
	-o-transition: 0.15s ease-out;
	transition: 0.15s ease-out;
	-webkit-transition-property: opacity background;
	-moz-transition-property: opacity background;
	-o-transition-property: opacity background;
	transition-property: opacity background;
}

.switch-label:before, .switch-label:after {
	position: absolute;
	top: 50%;
	margin-top: -.5em;
	line-height: 1;
	-webkit-transition: inherit;
	-moz-transition: inherit;
	-o-transition: inherit;
	transition: inherit;
}

.switch-label:before {
	content: attr(data-off);
	right: 11px;
	color: rgb(96, 95, 95);
	text-shadow: 0 1px rgba(110, 109, 109, 0.5);
}

.switch-label:after {
	content: attr(data-on);
	left: 11px;
	color: white;
	text-shadow: 0 1px rgba(0, 0, 0, 0.2);
	opacity: 0;
}

.switch-input:checked ~.switch-label {
	background: #3fa6d9;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.15), inset 0 0 3px
		rgba(0, 0, 0, 0.2);
}

.switch-input:checked ~.switch-label:before {
	opacity: 0;
}

.switch-input:checked ~.switch-label:after {
	opacity: 1;
}

.switch-handle {
	position: absolute;
	top: 4px;
	left: 4px;
	width: 18px;
	height: 18px;
	background: white;
	border-radius: 10px;
	box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.2);
	background-image: -webkit-linear-gradient(top, white 40%, #f0f0f0);
	background-image: -moz-linear-gradient(top, white 40%, #f0f0f0);
	background-image: -o-linear-gradient(top, white 40%, #f0f0f0);
	background-image: linear-gradient(to bottom, white 40%, #f0f0f0);
	-webkit-transition: left 0.15s ease-out;
	-moz-transition: left 0.15s ease-out;
	-o-transition: left 0.15s ease-out;
	transition: left 0.15s ease-out;
}

.switch-handle:before {
	content: '';
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -6px 0 0 -6px;
	width: 12px;
	height: 12px;
	background: #f9f9f9;
	border-radius: 6px;
	box-shadow: inset 0 1px rgba(0, 0, 0, 0.02);
	background-image: -webkit-linear-gradient(top, #eeeeee, white);
	background-image: -moz-linear-gradient(top, #eeeeee, white);
	background-image: -o-linear-gradient(top, #eeeeee, white);
	background-image: linear-gradient(to bottom, #eeeeee, white);
}

.switch-input:checked ~.switch-handle {
	left: 40px;
	box-shadow: -1px 1px 5px rgba(0, 0, 0, 0.2);
}

.switch-green>.switch-input:checked ~.switch-label {
	background: #4fb845;
}
/*  .c2{
      display:flex;
      align-items: center;
          margin-left: 190px;
          margin-top: 9px;
    } */
/*    .c1{
 display:flex;
      align-items: center;
          margin-left: 224px;
          margin-bottom: 9px;
          margin-top: 8px
    } */
#myForm {
	font-family: 'tahoma';
}



/* DropzONE css */
 .drop {
     width:70%;
     max-height:80% !important;
      overflow: hidden;
    position: relative;
      font-family: "Open Sans", sans-serif;
      font-weight: 300;
      /* background: #f3f4f5; */
      color: #646c7f;
      text-rendering: optimizeLegibility;
     display: flex;
     justify-content:space-between;
    flex-direction: row;
    align-items: center;
      border: 1px solid gray;
      padding:0 5px;
      margin:20px 10px;
    }
    
    .drop .items1{
      width:45%;
      max-height:50% !important;
      margin: 15px 20px;
      padding:2px;
      display:flex;
      flex-direction: column;
      overflow-y:wrap;
      overflow-x:hidden;
    }
    .items2{
    width:55%;
    max-height:50% !important;
    }
    .frm1{
    max-height:80% !important;
     border-top:none;
      border-bottom:none;
      border-radius:none !important;
    }
    .drop .cntrl{
    /*   border:1px solid black; */
     
      width:70%;  
     max-height:50% !important;
      display:flex;
      justify-content:center;
      text-align:center;
    }
    
    .browsebtn{
        background:#fff;
        text-align:center;
        color:#146da9;
         border:1px solid #146da9; 
        border-radius:5px;
        font-weight:bold;
        font-size:20px;
        padding:5px;
        cursor:pointer;
    }
   .drop #btns{
        display:flex;
        flex-direction:column;
       
        margin:0 10px;
    }
    
    .dz-filename{
		    overflow: hidden;
		    white-space: nowrap;
		    text-overflow: ellipsis;
		    max-width: 85%;
    }
    .dz-message{
   
       max-height:50% !important;
        margin-top:0px !important;
        
    }

</style>
</head>
<body>
	<div style="width:100%">
	
	<form action="/" id="myForm" style="width:100%">
		<div class="toggle1">
			<div class="toggle-bar" style="font-family: 'tahoma';">
				<label
					style="width:99%; font-weight: bold; font-size: small; background: #eef4f9; border: 1px solid #C5D0DC; padding: 7px; color: #066faf;"
					class="toggle-button "><span class="arrow1"><span
						class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>Project
					Info</label>
			</div>
			<div class="toggle-content"
				style="width: 100%; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
				<br>

				<!-- Customer part start  -->


				<fieldset
					style="border: 1px solid #d5d2d2; margin-top: 0px; margin-left: 9px; margin-right: 7px;">
					<legend class="legends"
						style="background: none; width: fit-content; border: none; margin-left: 10px; font-size: small;">Customer</legend>

					<table id="table1" style="font-family: 'tahoma';">
						<tr>
							<td class="l1"><label class="labels">Customer</label></td>
							<td><input type="text" class="t1"><span
								class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						</tr>

						<tr>
							<td class="l1"><label class="labels">Customer
									Address</label></td>
							<td><textarea rows="4" cols="70" class="t1"
									style="width: 270px;"></textarea><span class="chat"> <i
									class="bi bi-chat-dots"></i></span></td>
							<td class="l1"><label class="labels"
								style="margin-left: 160px;">Postal Code</label></td>
							<td><input type="text" class="t1"><span class="chat">
									<i class="bi bi-chat-dots"></i>
							</span></td>
						</tr>

						<tr>
							<td class="l1"><label class="labels">Contact Name<span
									class="error">*</span></label></td>
							<td><input type="text" class="t1"></td>
							<td><label class="labels" style="margin-left: 202px;">Email<span
									class="error">*</span></label></td>
							<td><input type="text" class="t1"></td>
						</tr>

						<tr>
							<td class="l1"><label class="labels">Phone<span
									class="error">*</span></label></td>
							<td><input type="text" class="t1"></td>
						</tr>
					</table>
				</fieldset>
				<br>

				<!-- Customer part End  -->


				<!-- Project part Start  -->

				<fieldset
					style="border: 1px solid #d5d2d2; margin-top: 0px; margin-left: 16px; margin-right: 7px;">
					<legend
						style="background: none; width: fit-content; border: none; margin-left: 10px; font-size: small;"
						class="legends">Project</legend>

					<table id="table2" style="font-family: 'tahoma';">
						<tr>
							<td class="l1"><label class="labels">Project Name</label></td>
							<td><input type="text" class="t1"><span
								class="chat"> <i class="bi bi-chat-dots"></i></span></td>
							<td class="l1"><label class="labels">Site Name</label></td>
							<td><input type="text" class="t1"> <span
								class="chat"><i class="bi bi-chat-dots"></i></span></td>
						</tr>

						<tr>
							<td class="l1"><label class="labels">Site Address</label></td>
							<td><textarea rows="4" cols="70" class="t1"
									style="width: 288px;"></textarea><span class="chat"> <i
									class="bi bi-chat-dots"></i></span></td>
							<td class="l1"><label class="labels">Description of<br>
									Works
							</label></td>
							<td><textarea rows="4" cols="70" class="t1"
									style="width: 300px;"></textarea><span class="chat"> <i
									class="bi bi-chat-dots"></i></span></td>
						</tr>

						<tr>
							<td class="l1"><label class="labels">Project Name</label></td>
							<td><select class="t1">
									<option value="Select">Select</option>
									<option value="Sales Relationship">Sales Relationship</option>
									<option value="Existing Contact">Existing Contact</option>
									<option value="Cold Call">Cold Call</option>
									<option value="Ad-Hoc Enquiry">Ad-Hoc Enquiry</option>
									<option value="Online Portal">Online Portal</option>
									<option value="Sub Contractor">Sub Contractor</option>
									<option value="On Site Contact">On Site Contact</option>
									<option value="Select">Select</option>
									<option value="Word Of Mouth">Word Of Mouth</option>
									<option value="Search Engine">Search Engine</option>
									<option value="Email Marketing">Email Marketing</option>
									<option value="Press Article">Press Article</option>
							</select><span class="chat"> <i class="bi bi-chat-dots"></i></span></td>

							<td class="l1"><label class="labels"
								style="margin-left: 104px;">Lead Source<br>
									Contextual Data
							</label></td>
							<td><textarea rows="4" cols="70" class="t1"
									style="width: 300px;"></textarea><span class="chat"> <i
									class="bi bi-chat-dots"></i></span></td>
						</tr>

						<tr>
							<td class="l1"><label class="labels">Consultant</label></td>
							<td><input type="text" class="t1"><span
								class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						</tr>

						<tr>
							<td class="l1"><label class="labels">End User</label></td>
							<td><input type="text" class="t1"><span
								class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						</tr>
					</table>

				</fieldset>
				<br>

				<!--Project parts end  -->


				<!-- Estimated section starts -->
				<fieldset
					style="border: 1px solid #d5d2d2; margin-top: 0px; margin-left: 7px; margin-right: 7px;">
					<legend
						style="background: none; width: fit-content; border: none; margin-left: 10px; font-size: small;"
						class="legends">Estimated</legend>

					<table id="table3" style="font-family: 'tahoma';">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><label>Start Date</label></td>
							<td><label>End Date</label></td>
							<td><label style="margin-left: 27px;">Week</label></td>
						</tr>

						<tr>
							<td class="l1"><label class="labels">Project Name</label></td>
							<td><select class="t1">
									<option value="Select">Select</option>
									<option value="A 0-100k">A 0-100k</option>
									<option value="B 101-250k">B 101-250k</option>
									<option value="C 250-500k">C 250-500k</option>
									<option value="D 500+">D 500+</option>
							</select><span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
							<td class="l1"><label class="labels">Bid Programme</label></td>
							<td><input type="text" class="t1" style="width: 96px;"><span
								class="cal">&#128197</span></td>
							<td><input type="text" class="t1" style="width: 96px;"><span
								class="cal">&#128197</span></td>
							<td><input type="number" class="t1"
								style="width: 30px; margin-left: 27px;"> <span
								class="chat"> <i class="bi bi-chat-dots"></i></span></td>


						</tr>

						<tr>
							<td class="l1"><label class="labels">Anticipated
									Order Dater</label></td>
							<td><input type="text" class="t1"><span class="cal">&#128197</span><span
								class="chat"> <i class="bi bi-chat-dots"></i></span></td>
							<td class="l1"><label class="labels">Project
									Programme</label></td>
							<td><input type="text" class="t1" style="width: 96px;"><span
								class="cal">&#128197</span></td>
							<td><input type="text" class="t1" style="width: 96px;"><span
								class="cal">&#128197</span></td>
							<td><input type="number" class="t1"
								style="width: 30px; margin-left: 27px;"> <span
								class="chat"> <i class="bi bi-chat-dots"></i></span></td>

						</tr>

						<tr>
							<td class="l1"><label class="labels">Points</label></td>
							<td><input type="number" class="t1"> <span
								class="chat"> <i class="bi bi-chat-dots"></i></span></td>

							<td class="l1"><label class="labels"
								style="margin-left: 84px">Is there deadline to submit<br>
									RFIs
							</label></td>
							<td><select class="t1" style="width: 120px" id="rfi">
									<option value="select">Select</option>
									<option value="yes">Yes</option>
									<option value="No">No</option>
							</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						</tr>

						<tr>
							<td class="l1"><label class="labels">Is a site
									survey required</label></td>
							<td><select class="t1">
									<option value="select">Select</option>
									<option value="yes">Yes</option>
									<option value="No">No</option>
							</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>

							<td class="l1"><label id="r1" class="labels">Deadline
									Date to submit RFIs</label></td>
							<td><input type="text" id="r2" class="t1"
								style="width: 106px;"><span id="r3" class="cal">&#128197</span></td>
						</tr>
					</table>

				</fieldset>
				<br>

				<!-- Estimated section Ends -->
			</div>
		</div>

		<!--Engineering section starts  -->
		<div class="toggle2">
			<div class="toggle-bar" style="font-family: 'tahoma';">
				<label
					style="width: 99%; font-weight: bold; background: #eef4f9; font-size: small; border: 1px solid #C5D0DC; padding: 7px; color: #066faf;"
					class="toggle-button "><span class="arrow1"><span
						class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>Engineering</label>
			</div>
			<div class="toggle-content"
				style="width: 100%; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
				<br>
				<table id="table4" style="font-family: 'tahoma';">
					<tr>
						<td class="l1"><label class="labels">Product
								Specified</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Trend">Trend</option>
								<option value="Center Line">Center Line</option>
								<option value="tyrrel">tyrrel</option>
								<option value="Schnelder">Schnelder</option>
								<option value="Delta">Delta</option>
								<option value="ALC">ALC</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>


						<td class="l1"><label class="labels">Type Of Building</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Data Center">Data Center</option>
								<option value="Hi-tech Pharma">Hi-tech Pharma</option>
								<option value="Hotel">Hotel</option>
								<option value="Leisure">Leisure</option>
								<option value="Muesioum">Muesioum</option>
								<option value="Ofice High Rise">Ofice High Rise</option>
								<option value="Ofice Low Rise">Ofice Low Rise</option>
								<option value="Production">Production</option>
								<option value="Percidental">Percidental</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
					</tr>

					<tr>
						<td class="l1"><label class="labels">End User
								Industry Sector</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Hospital">Hospital</option>
								<option value="Education">Education</option>
								<option value="Commercial">Commercial</option>
								<option value="Goverment">Goverment</option>
								<option value="Mod">Mod</option>
								<option value="Pharma">Pharma</option>
								<option value="Hotel">Hotel</option>
								<option value="Other">Other</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>


						<td class="l1"><label class="labels">Type of Project</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Refit">Refit</option>
								<option value="New Building S&C">New Building S&C</option>
								<option value="New Build Fitout">New Build Fitout</option>
								<option value="Survey">Survey</option>
								<option value="Supply only labours">Supply only labours</option>
								<option value="Other">Other</option>
								<option value="BMS">BMS</option>
								<option value="IoT">IoT</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
					</tr>


					<tr>
						<td class="l1"><label class="labels">Enquiry states
								Out Of Hours Work</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Nights">Nights</option>
								<option value="Nights and weekends">Nights and weekends</option>
								<option value="Weekends">Weekends</option>
								<option value="No">No</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>


						<td class="l1"><label class="labels"
							style="margin-left: 137px;">Technology Type</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Backnet">Backnet</option>
								<option value="KNX">KNX</option>
								<option value="LON">LON</option>
								<option value="N/A">N/A</option>
								<option value="N4 headends">N4 headends</option>
								<option value="Not specified">Not specified</option>
								<option value="Trend Lan">Trend Lan</option>
								<option value="Other">Other</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
					</tr>
				</table>

			</div>
		</div>


		<!--Enginering section end  -->


		<!-- Commercial section starts  -->
		<div class="toggle3">
			<div class="toggle-bar" style="font-family: 'tahoma';">
				<label
					style="width: 99%; background: #eef4f9; font-weight: bold; font-size: small; border: 1px solid #C5D0DC; padding: 7px; color: #066faf;"
					class="toggle-button "><span class="arrow1"><span
						class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>Commercial</label>
			</div>
			<div class="toggle-content"
				style="width: 100%; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
				<br>
				<table id="table5" style="font-family: 'tahoma';">
					<tr>
						<td class="l1"><label class="labels">Enquiry Format</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Email with other">Email with other</option>
								<option value="Formal Enquiry">Formal Enquiry</option>
								<option value="Email with Docs">Email with Docs</option>
								<option value="Other">Other</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						<td></td>

						<td class="l1"><label class="labels">Documentation
								Received</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Detailed">Detailed</option>
								<option value="none">none</option>
								<option value="Poor detail">Poor detail</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
					</tr>

					<tr>
						<td class="l1"><label class="labels">Are we
								Named/Specified?</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						<td></td>

						<td class="l1"><label class="labels">Location</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Inside M25">Inside M25</option>
								<option value="Other">Other</option>
								<option value="South East">South East</option>
								<option value="Leeds">Leeds</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
					</tr>


					<tr>
						<td class="l1"><label class="labels">Have we worked
								on this site before</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						<td></td>

						<td class="l1"><label class="labels">Terms and
								conditions advised</label></td>
						<td><select class="t1" id="tAndc">
								<option value="select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select><span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						<td style="width: 43px; float: right;"><span id="file2"><i
								class="bi bi-folder2"></i></span></td>
					</tr>

					<tr>
						<td class="l1"><label class="labels">PCG ?</label></td>
						<td><select class="t1" id="pcg">
								<option value="select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						<td style="text-align: center"><span id="file1"><i
								class="bi bi-folder2"></i></span></td>

						<td class="l1"><label class="labels">Performance
								Bond ?</label></td>
						<td><select class="t1" id="pb">
								<option value="select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						<td style="width: 40px; float: right;"><span id="file3"><i
								class="bi bi-folder2"></i></span></td>
					</tr>


					<tr>
						<td class="l1"><label class="labels">NEC form of
								contract referenced?</label></td>
						<td><select class="t1" id="">
								<option value="select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>

						<td></td>
						<td class="l1"><label class="labels">Damages Advised
								?</label></td>
						<td><select class="t1">
								<option value="select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
					</tr>

					<tr>
						<td class="l1"><label class="labels">Retention
								Advised ?</label></td>
						<td><select class="t1" id="retention">
								<option value="Select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
						<td style="width: 60px"><span id="value"><span>Value</span><input
								style="width: 30px" type="number" id="val">%</span></td>



						<td class="l1"><label class="labels">Site Experience</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Incrumbent">Incrumbent</option>
								<option value="Yes Prior">Yes Prior</option>
								<option value="No">No</option>
						</select> <span class="chat"> <i class="bi bi-chat-dots"></i></span></td>
					</tr>
				</table>

			</div>
		</div>

		<!-- Commercial section Ends  -->

		<!-- Upload Documents starts -->
		<div class="toggle4">
			<div class="toggle-bar" style="font-family: 'tahoma';">
				<label
					style="width: 99%; font-weight: bold; background: #eef4f9; font-size: small; border: 1px solid #C5D0DC; padding: 7px; color: #066faf;"
					class="toggle-button "><span class="arrow1"><span
						class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>Upload
					Documents</label>
			</div>
			<div class="toggle-content"
				style="width: 100%; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
				<div id="drop1">
				<div class="drop">
					<div class="items1" id="items"></div>
					<div class="items2">
						<div
							style="display: flex; flex-direction: row; align-items: center">
							<div class="cntrl">
								<div class="frm1 dropzone needsclick" id="zone1">

									<div class="dz-message">
										<span class="btn btn-link"><i
											class="bi bi-cloud-upload" style="font-size: 45px"></i></span><br>
										<span class="note ">Drop Files Here</span><br> <strong>OR</strong><br>
										<div class="browsebtn" style="width: 95%">Browse</div>
									</div>
								</div>
							</div>
							<div class="btns" id="btns">
								<div class="btn "
									style="margin-bottom: 5px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">Link
									to File</div>
								<div class="btn "
									style="margin-top: 15px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">Link
									to DropBox</div>

								<div class="btn " id="sbt"
									style="margin-top: 15px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">
									Upload</div>
							</div>
						</div>
					</div>

				</div>
				</div>

			</div>
		</div>
		<!-- Upload Documents Ends -->


		<!-- Quote form start -->
		<div class="toggle5">
			<div class="toggle-bar" style="font-family: 'tahoma';">
				<label
					style="width: 99%; font-weight: bold; font-size: small; border: 1px solid #C5D0DC; background: #eef4f9; padding: 7px; color: #066faf;"
					class="toggle-button "><span class="arrow1"><span
						class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>Quote
					Form</label>
			</div>
			<div class="toggle-content"
				style="width: 100%; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
				<br>

				<!--table of check box starts  -->
				<table id="table6" style="font-family: 'tahoma';">
					<tr>
						<td class="l1"><label class="labels">Quote Reference
								Number<span class="error"> *</span>
						</label></td>
						<td><input type="number" class="t1"></td>
					</tr>

					<tr>
						<td><label class="labels">Delegate Estimation Task?</label></td>
						<td>
							<div class="check1">
								<label class="switch"> <input type="checkbox" id="ch1"
									class="switch-input"> <span class="switch-label"
									data-on="yes" data-off="no"></span> <span class="switch-handle"></span>
								</label>
							</div>
						</td>

						<td><label class="labels" style="margin-left: 130px">Delegate
								Design Task?</label></td>
						<td>
							<div class="check1">
								<label class="switch"> <input type="checkbox" id="ch2"
									class="switch-input"> <span class="switch-label"
									data-on="yes" data-off="no"></span> <span class="switch-handle"></span>
								</label>
							</div>
						</td>
					</tr>
				</table>


				<!--table of check box ends  -->

				<br>

				<!-- Estimation starts -->
				<div id="est">
					<div class="toggle6" >
						<div class="tog1-bar" style="font-family: 'tahoma';">
							<label
								style="width: 90%; margin-left: 23px; background: #eef4f9; font-weight: bold; font-size: small; border: 1px solid #C5D0DC; padding: 7px; color: #066faf;"
								class="toggle-button "><span class="arrow1"><span
									class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>Estimation</label>
						</div>
						<div class="tog1"
							style="width: 90%; margin-left: 23px; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
							<br>
							<table id="table7" style="font-family: 'tahoma';">
								<tr>
									<td class="l1"><label class="labels">Required By
											Date<span class="error"> *</span>
									</label></td>
									<td><input type="date" class="t1" style="width: 102px">
									</td>

									<td class="l1"><label class="labels"
										style="margin-left: 60px;">Send Request to<span
											class="error"> *</span></label></td>
									<td><select class="t1" style="width: 140px">
											<option value="Select">Select</option>
											<option value="Super Admin">Super Admin</option>
											<option value="Andrew Redfern">Andrew Redfern</option>
											<option value="Narendra">Narendra</option>
											<option value="Joe Root">Joe Root</option>
											<option value="Paola Grahm">Paola Grahm</option>
											<option value="Nikki Morton">Nikki Morton</option>
											<option value="Cristian Okoye">Cristian Okoye</option>
											<option value="Jack sponder">Jack sponder</option>
									</select></td>
								</tr>

								<tr>
									<td class="l1"><label class="labels">Comments<span
											class="error">*</span></label></td>
									<td><textarea rows="5" cols="70" class="t1"
											style="width: 270px;"></textarea></td>
							</table>
							<br>
							<button id="reqEst">Request Estimation</button>

							<div class="tog3-bar" style="font-family: 'tahoma';">
								<label
									style="width:90%; background: #eef4f9; margin-left: 23px; font-weight: bold; font-size: small; border: 1px solid #C5D0DC; padding: 7px; color: #066faf;"
									class="toggle-button "><span class="arrow1"><span
										class="arrow-down1">&#x25BC;</span><span class="arrow-up1">&#9656;</span></span>Comment
									History Estimation</label>
							</div>
							<div class="tog3"
								style="width: 90%; margin-left: 23px; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
								<span> No comments History</span>
							</div>
							<br>

						</div>
					</div>
				</div>
				<!--Estimation ends  -->

				<!-- Design calculation starts -->
				<div id="dc" style="margin-top: 5px">
					<div class="toggle6" >
						<div class="tog2-bar" >
							<label
								style="width: 90%; background: #eef4f9; margin-left: 23px; font-weight: bold; font-size: small; border: 1px solid #C5D0DC; padding: 7px; color: #066faf;"
								class="toggle-button "><span class="arrow1"><span
									class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>Design
								Calculations</label>
						</div>
						<div class="tog2"
							style="width:90%; margin-left: 23px; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
							<br>
							<table id="table7" style="font-family: 'tahoma';">
								<tr>
									<td class="l1"><label class="labels">Required By
											Date<span class="error"> *</span>
									</label></td>
									<td><input type="date" class="t1" style="width: 102px">
									</td>

									<td class="l1"><label class="labels"
										style="margin-left: 60px;">Send Request to<span
											class="error"> *</span></label></td>
									<td><select class="t1" style="width: 140px">
											<option value="Select">Select</option>
											<option value="Super Admin">Super Admin</option>
											<option value="Andrew Redfern">Andrew Redfern</option>
											<option value="Narendra">Narendra</option>
											<option value="Joe Root">Joe Root</option>
											<option value="Paola Grahm">Paola Grahm</option>
											<option value="Nikki Morton">Nikki Morton</option>
											<option value="Cristian Okoye">Cristian Okoye</option>
											<option value="Jack sponder">Jack sponder</option>
									</select></td>
								</tr>

								<tr>
									<td class="l1"><label class="labels">Comments<span
											class="error">*</span></label></td>
									<td><textarea rows="5" cols="70" class="t1"
											style="width: 270px;"></textarea></td>
							</table>
							<br>
							<button id="reqEst">Request Design Calculation</button>

							<div class="tog4-bar">
								<label
									style="width: 90%; background: #eef4f9; margin-left: 23px; font-weight: bold; font-size: small; border: 1px solid #C5D0DC; padding: 7px; color: #066faf;"
									class="toggle-button "><span class="arrow1"><span
										class="arrow-down1">&#x25BC;</span><span class="arrow-up1">&#9656;</span></span>Comment
									History - Design Calculations</label>
							</div>
							<div class="tog4"
								style="width:90%; margin-left: 23px; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
								<span> No comments History</span>
							</div>
							<br>

						</div>
					</div>
				</div>
				<!-- Design calculation ends  -->


				<div id="drop2">
				<div class="drop">
					<div class="items1" id="items"></div>
					<div class="items2">
						<div
							style="display: flex; flex-direction: row; align-items: center">
							<div class="cntrl">
								<div class="frm1 dropzone needsclick" id="zone2">

									<div class="dz-message">
										<span class="btn btn-link"><i
											class="bi bi-cloud-upload" style="font-size: 45px"></i></span><br>
										<span class="note ">Drop Files Here</span><br> <strong>OR</strong><br>
										<div class="browsebtn" style="width: 95%">Browse</div>
									</div>
								</div>
							</div>
							<div class="btns" id="btns">
								<div class="btn "
									style="margin-bottom: 5px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">Link
									to File</div>
								<div class="btn "
									style="margin-top: 15px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">Link
									to DropBox</div>

								<div class="btn " id="sbt"
									style="margin-top: 15px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">
									Upload</div>
							</div>
						</div>
					</div>

				</div>
				</div>

				<table id="table7" style="font-family: 'tahoma';">
					<tr>
						<td class="l1"><label style="margin-left: 71px">Does
								the Bid Sheet meet company<br> authorisation criteria?<span
								class="error"> *</span>
						</label></td>
						<td><select class="t1">
							<option value="Select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select></td>


						<td><label style="margin-left: 81px">Populate Bid
								Information from Bid Sheet<span class="error">*</span>
						</label></td>
						<td>
							<div class="check1">
								<label class="switch"> <input type="checkbox" id="ch3"
									class="switch-input"> <span class="switch-label"
									data-on="yes" data-off="no"></span> <span class="switch-handle"></span>
								</label>
							</div>
						</td>
					</tr>
				</table>
				<h1 style="margin-left: 280px">Grid table here</h1>

				<div id="drop3">
				<div class="drop">
					<div class="items1" id="items"></div>
					<div class="items2">
						<div
							style="display: flex; flex-direction: row; align-items: center">
							<div class="cntrl">
								<div class="frm1 dropzone needsclick" id="zone3">

									<div class="dz-message">
										<span class="btn btn-link"><i
											class="bi bi-cloud-upload" style="font-size: 45px"></i></span><br>
										<span class="note ">Drop Files Here</span><br> <strong>OR</strong><br>
										<div class="browsebtn" style="width: 95%">Browse</div>
									</div>
								</div>
							</div>
							<div class="btns" id="btns">
								<div class="btn "
									style="margin-bottom: 5px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">Link
									to File</div>
								<div class="btn "
									style="margin-top: 15px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">Link
									to DropBox</div>

								<div class="btn " id="sbt"
									style="margin-top: 15px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">
									Upload</div>
							</div>
						</div>
					</div>

				</div>
				</div>

				<table id="table8" style="font-family: 'tahoma';">

					<tr>
						<td class="l1"><label class="labels">Quotation on our
								Format<span class="error"> *</span>
						</label></td>
						<td><select class="t1">
								<option value="Select">Select</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
						</select></td>
						<td style="width: 25px"></td>
						<td class="l1"><label class="labels">Date shown on
								Quote<span class="error"> *</span>
						</label></td>
						<td><input type="text" class="t1" style=""><span
							class="cal">&#128197</span></td>

					</tr>

						<tr>
							<td class="l1"><label class="labels">Overall Project Cost(£)<span class="error"> *</span>
							</label></td>
							<td><input type="number" class="t1" style=""></td>
							<td style="width: 112px"></td>
							<td class="l1"><label class="labels">Overall Project
									Sell(£)<span class="error"> *</span>
							</label></td>
							<td><input type="number" class="t1" style=""></td>
						</tr>
					</table>
				<div id="drop4">
				<div class="drop">
					<div class="items1" id="items"></div>
					<div class="items2">
						<div
							style="display: flex; flex-direction: row; align-items: center">
							<div class="cntrl">
								<div class="frm1 dropzone needsclick" id="zone4">

									<div class="dz-message">
										<span class="btn btn-link"><i
											class="bi bi-cloud-upload" style="font-size: 45px"></i></span><br>
										<span class="note ">Drop Files Here</span><br> <strong>OR</strong><br>
										<div class="browsebtn" style="width: 95%">Browse</div>
									</div>
								</div>
							</div>
							<div class="btns" id="btns">
								<div class="btn "
									style="margin-bottom: 5px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">Link
									to File</div>
								<div class="btn "
									style="margin-top: 15px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">Link
									to DropBox</div>

								<div class="btn " id="sbt"
									style="margin-top: 15px; background: rgb(134, 62, 134); font-weight: bold; color: #fff; cursor: pointer">
									Upload</div>
							</div>
						</div>
					</div>
				
				</div>
			</div>
		</div>

		<!-- Quote form End -->




		<!--Comment History starts -->

		<div class="toggle6">
			<div class="toggle-bar" style="font-family: 'tahoma';">
				<label
					style="width: 99%; background: #eef4f9; font-weight: bold; font-size: small; border: 1px solid #C5D0DC; padding: 7px; color: #066faf;"
					class="toggle-button "><span class="arrow1"><span
						class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>Comment
					History</label>
			</div>
			<div class="toggle-content"
				style="width: 100%; border: 1px solid #C5D0DC; border-top: none; margin-top: -6px;">
				tfyjjdjsfhsfhf


			</div>
		</div>

		<!--Comment History End -->

		<label class="labels" style="font-family: 'tahoma';">Comments<span
			class="error"> *</span></label>
		<textarea rows="4"  class="t1" style="width:98%;max-width: 100%"></textarea>

		<div id="buttons">
			<button id="btn3">New Link</button>
			<button id="btn4">Link Project</button>
			<button id="btn5">Save</button>
			<button id="btn6">Quote Prepared</button>
			<button id="btn7">Cancel</button>
		</div>
	</form>

	
	
	
	</div>
	<!-- #09688f -->



	<script type="text/javascript">

$(document).ready(function(){
	$('.toggle-content').hide();
	$('.arrow-up1').hide();  

	$(".toggle-button").click(function(){
		var parent=$('.'+this.parentElement.parentElement.classList);
		 $('.arrow-up1,.arrow-down1',parent).toggle();
			$('.'+this.parentElement.parentElement.classList).children(".toggle-content").slideToggle("slow");
	   /*   $('.arrow-up1,.arrow-down1').toggle();
	$(".toggle-content").slideToggle("slow"); */
	});
	
	$('.tog1-bar').click(function(){
			$(".tog1").slideToggle("slow");		
	});
	
	$('.tog2-bar').click(function(){
		$(".tog2").slideToggle("slow");		
	});
	
	
	$('.tog3').hide();
	$('.tog3-bar').click(function(){
		$('.tog3').slideToggle();		
	});
	
	 $('.tog4').hide();
	$('.tog4-bar').click(function(){
		$('.tog4').slideToggle();		
	}); 
	
	
	$('#est').hide();
	$('#dc').hide()

		  $('#ch1').click(function() {
		    if (this.checked) {
		    	$('#est').show();
		        
		    } else {
		    	$('#est').hide();
		    }
		});	
	
	$('#ch2').click(function() {
	    if (this.checked) {
	    	$('#dc').show();
	        
	    } else {
	    	$('#dc').hide();
	    }
	});	
	
	
	  $('#value').hide();
		$('#retention').change(function(){
	    	if ($('#retention').val() == 'Yes'){
	    		$('#value').show();
	    		$('#val').prop("required", "true");
	    	}
	    	else {
	    		$('#value').hide();
	    		$('#val').removeProp("required");
	    	}
	   	
	    	});
		
		
		$('#file1').hide();
		$('#file2').hide();
		$('#file3').hide();
		$('#r1,#r2,#r3').hide();
		
		$('#pcg').change(function(){
	    	if ($('#pcg').val() == 'Yes'){
	    		$('#file1').show();
	    	}
	    	else {
	    		$('#file1').hide();
	    	}
	   	
	    	});
		
		
		$('#tAndc').change(function(){
	    	if ($('#tAndc').val() == 'Yes'){
	    		$('#file2').show();
	    	}
	    	else {
	    		$('#file2').hide();
	    	}
	   	
	    	});
		
		$('#pb').change(function(){
	    	if ($('#pb').val() == 'Yes'){
	    		$('#file3').show();
	    	}
	    	else {
	    		$('#file3').hide();
	    	}
	   	
	    	});
		
		
		$('#rfi').change(function(){
	    	if ($('#rfi').val() == 'yes'){
	    		$('#r1,#r2,#r3').show();
	    	}
	    	else {
	    		$('#r1,#r2,#r3').hide();
	    	}
	   	
	    	});
	
	
	
})




	
	/* DROPZONE JS */
		Dropzone.autoDiscover = false;

function setup(id) {
	let options = {
		url:'${actionSample}',
		maxFilesize : 500 / 1024,
		maxFiles : 1,
		dictResponseError : "Server not Configured",
		dictFileTooBig : "File too big ({{filesize}}MB). Must be less than {{maxFilesize}}MB.",
		dictCancelUpload : "File Uploading Cancelled",
		// DragEvent:function(){
		//   document.getElementById('btns').style.backgroundColor="green";
		//   console.log("dragging..");
		// },
		acceptedFiles : ".txt,.xlsx,.xls",
		//stops to upload automatically
		autoProcessQueue: false,
		init : function() {
			
			  document.getElementById('sbt').addEventListener("click", function (e) {
				
	              console.log("submit");
	              myDropzone.processQueue();
	          });

			
			
			
			var self = this;
			//New file added
			self.on("addedfile", function(file) {

					
		    	    console.log("new file added "+file.name, file);
		    	    
		    	   /*  var fr=new FileReader();
		            fr.onload=function(){
		               console.log("data:"+fr.result);
		            }
		              
		            fr.readAsText(this.files[0]); */
		            /* fr.readAsDataURL(this.files[0]); */
			});
			// Send file starts
			self.on("sending", function(file) {
				 
				console.log("upload started"+file.name, file);
			});

			self.on("complete", function(file, response) {
				if (file.name !== "442343.jpg") {
					//this.removeFile(file);
				}
				//else{
				//   alert("uploaded Successfully");
				// }

			});

			self.on("maxfilesreached", function(file, response) {
				//alert("too big");
			});

			self.on("maxfilesexceeded", function(file, response) {
				this.removeFile(file);
			});

			// self.on("addedfile", function(file) {
			//   const pattern = /\d{6}(\.)(jpg|jpeg|png)/;

			//   if (!pattern.test(file.name)) {
			//     //   this.removeFile(file);
			//   }
			// });

			

			self.on("sendingmultiple", function() {
				alert("files submitted..");
				// Gets triggered when the form is actually being sent.
				// Hide the success button or the complete form.
			});
		},
		accept : function(file, done) {
			// alert("file added successfully");
			/* console.log("one file is added");
			 var reader = new FileReader();
		        reader.addEventListener("loadend", function(event) { console.log("data1"+event.target.result);});
		       reader.readAsText(file);
		      */
		      
		     
		    	  
		    	
			/*  const pattern = /\d{6}(\.)/; */

			// if (pattern.test(file.name)) {
			//   done();
			// } else {
			//   done("File name not a valid admission number");
			//   return false;
			// }
		},

		previewsContainer :'.'+ document.getElementById(id).parentElement.parentElement.parentElement.previousElementSibling.classList,
		previewTemplate : '<div class="dz-preview dz-file-preview">'
				+ '<div class="" style="display:flex;justify-content:space-between;padding:0 5px;width:75%">'
				+ '<div class="dz-filename"><span data-dz-name></span></div>'
				+ '<div class="dz-remove">'
				+ '<a href="javascript:undefined;" data-dz-remove=""><i class="bi bi-trash" style="color:black"></i></a>'
				+ '</div></div>'
				+ '<div class="dz-error-message" style="color:red"><i class="fa fa-warning">&nbsp;</i><span data-dz-errormessage></span></div>'
				+ '<div class="dz-progress">'
				+ '<span class="dz-upload" data-dz-uploadprogress></span></div></div>'

	};

	var myDropzone = new Dropzone('#' + id, options);
	var ele=document.getElementById(id).parentElement.parentElement.parentElement.previousElementSibling.classList;
	console.log("elemt:"+ele);
}
//calling a function by passing form id
Window.onload =setTimeout(function(){
setup('zone1');
setup('zone2');
setup('zone3');
setup('zone4');
},2000);

</script>
</body>
</html>
