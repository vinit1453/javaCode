<!-- Asks to submitQuote to when any business rule are not flagged in b/w to prepare Quote-PreOrder Info-->

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
	</style>
	<!--jquery cdn  -->
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
 <!--Bootstrap Icon-->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>
<body>
	<div class="a">
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
						<input type="date" id="quoteSub" />
					</div>
				</div>
				<div style="display: flex; flex-direction: row; margin: 15px; padding: 2px">
					<div>
						% Win Probability &nbsp &nbsp<span style="color: red; font-weight: bold">*</span>
					</div>
					<div style="margin: 0 10px;">
						<select name="winProb" id="winProb">
						  <option value="60">60</option>
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
				no Comments at present</div>
		</div>

		<div class="3" style="margin-top: 10px;">
			<span style="color: red"><strong style="font-size: 15px">Please Record What Manner and When the Quote Was Submitted</strong></span>
			<div style="margin-top: 10px;">
				<strong>Comments &nbsp<span style="color: red; font-weight: bold">*</span></strong>
			</div>
			<div>
				<textarea class="ta" id="comments" rows="3" style="width: 98%; max-width: 100%"></textarea>
			</div>
		</div>
		<div class="btns" style="text-align: end">

			<div>
				<div class="btn " id="btn1">New Link</div>
				<div class="btn " id="btn2">Link Project</div>
				<div class="btn btn-primary" id="btn3">Save</div>
				<div class="btn btn-success" id="btn4">Allocate</div>
				<div class="btn btn-danger" id="btn5">Cancel</div>
			</div>
		</div>
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

		</script>
</body>
</html> 