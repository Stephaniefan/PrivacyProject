
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Swan--Online Form Builder</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css" media="screen">
<link rel="stylesheet" href="css/bootswatch.min.css">

<script>
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-23019901-1' ]);
	_gaq.push([ '_setDomainName', "bootswatch.com" ]);
	_gaq.push([ '_setAllowLinker', true ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
<script type="text/javascript" src="js/validations.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("input[name$='hasorno']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden0").show();
			} else {
				$("#hidden0").hide();
				$("#hidden6").hide();
				$("#hidden6_1").hide();
			}
		});

		$("input[name$='everyday2']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden1").show();
			} else {
				$("#hidden1").hide();
				$("#hidden1_1").hide();
			}
		});
		$("input[name$='everyday2_1']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden1_1").show();
			} else {
				$("#hidden1_1").hide();
			}
		});

		$("input[name$='marketing2']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden2").show();
			} else {
				$("#hidden2").hide();
				$("#hidden2_1").hide();
			}
		});
		$("input[name$='marketing2_1']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden2_1").show();
			} else {
				$("#hidden2_1").hide();
			}
		});

		$("input[name$='joint2']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden3").show();
			} else {
				$("#hidden3").hide();
				$("#hidden3_1").hide();
			}
		});
		$("input[name$='joint2_1']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden3_1").show();
			} else {
				$("#hidden3_1").hide();
			}
		});

		$("input[name$='afeveryday2']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden4").show();
			} else {
				$("#hidden4").hide();
				$("#hidden4_1").hide();
			}
		});
		$("input[name$='afeveryday2_1']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden4_1").show();
			} else {
				$("#hidden4_1").hide();
			}
		});

		$("input[name$='nonmarketdeb2']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden7").show();
			} else {
				$("#hidden7").hide();
				$("#hidden7_1").hide();
			}
		});
		$("input[name$='nonmarketdeb2_1']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden7_1").show();
			} else {
				$("#hidden7_1").hide();
			}
		});

		$("input[name$='afmarket2']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden6").show();
			} else {
				$("#hidden6").hide();
				$("#hidden6_1").hide();
			}
		});
		$("input[name$='afmarket2_1']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden6_1").show();
			} else {
				$("#hidden6_1").hide();
			}
		});

		$("input[name$='creeveryday2']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden5").show();
			} else {
				$("#hidden5").hide();
				$("#hidden5_1").hide();
			}
		});
		$("input[name$='creeveryday2_1']").click(function() {
			if ($(this).val() == "y") {
				$("#hidden5_1").show();
			} else {
				$("#hidden5_1").hide();
			}
		});

	});
</script>
</head>
<body>
	<div class="container">
		<!-- Navbar
      ================================================== -->
		<div class="bs-docs-section clearfix">
			<div class="row">
				<div class="col-lg-12">
					<img src="logo.png" alt="Logo" height="100" width="200">

					<div class="bs-component">
						<div class="navbar navbar-default">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse"
									data-target=".navbar-responsive-collapse">
									<span class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<a class="navbar-brand" href="#">Online Form Builder</a>
							</div>
							<div class="navbar-collapse collapse navbar-responsive-collapse">
								<ul class="nav navbar-nav">
									<li class="active"><a href="index.jsp">New Form</a></li>
									<li><a href="upload.html">Continue Working</a></li>
									<li><a href="#">Policy Comparison</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">About Us <b class="caret"></b></a></li>
								</ul>
								<form class="navbar-form navbar-left">
									<input type="text" class="form-control col-lg-8"
										placeholder="Search">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<h3 id="nav-tabs">New Forms</h3>
		<form name="form1" class="form-horizontal" role="form"
			onsubmit="return validateForm()" action="../PolicySubmitServlet">
			<div class="row">
				<!-- form -->
				<div class="col-lg-12">
					<div class="well bs-component">
						<fieldset>
							<legend>Part I</legend>
							<!-- input text -->
							<div class="form-group col-md-6">
								<label for="inputPassword" class="col-lg-2 control-label">Institution
									Name</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="name"
										name="ins_name" placeholder="Institution Name" value="">
								</div>

								<label for="inputPhone" class="col-lg-2 control-label">Contact
									Phone Number</label>
								<div class="col-lg-10">
									<input type="tel" class="form-control" id="tel" name="phone"
										placeholder="xxx-xxx-xxxx" value="">
								</div>
							</div>

							<div class="form-group col-md-6">
								<label for="date" class="col-lg-2 control-label">Last
									Revised Date</label>
								<div class="col-lg-10">
									<input type="month" class="form-control" id="date" name="date"
										placeholder="mm/yyyy" value="">
								</div>

								<label for="inputWebsite" class="col-lg-2 control-label">Website
									URL</label>
								<div class="col-lg-10">
									<input type="url" class="form-control" id="url" name="url"
										placeholder="http://www.xxx.com" value="">
								</div>
							</div>

							<!-- checkbox -->

							<div class="form-group col-md-12">
								<label for="checkbox" class="col-lg-2 control-label">Select
									the types of personal information your institution will collect
									and share:</label>
								<p>&nbsp;&nbsp;&nbsp; * Select 5 more terms other than SSN
									to complete</p>

								<div class="col-lg-10">
									<div class="checkbox">
										<label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="ssn" value="SSN," disabled checked>SSN
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="income" value="income,"
											onclick='count(0)'>Income &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="acc_balance" value="Account Balance,"
											onclick='count(1)'>Account Balances
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="pay_his" value="Payment History,"
											onclick='count(2)'>Payment History &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="tran_his" value="Transaction History,"
											onclick='count(3)'>Transaction History
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="tran_los_his"
											value="Transaction or Loss History," onclick='count(4)'>Transaction
											or Loss History &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="cre_his" value="Credit History,"
											onclick='count(5)'>Credit History &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="cre_sco" value="Credit Scores,"
											onclick='count(6)'>Credit Scores &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="ass" value="Assets," onclick='count(7)'>Assets
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="inves_ex" value="Investment,"
											onclick='count(8)'>Investment Experience
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="cre_insu_sco"
											value="Credit-based Insurance Scores," onclick='count(9)'>Credit-based
											Insurance Scores &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="in_claim_his"
											value="Insurance Claim History," onclick='count(10)'>Insurance
											Claim History &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="med_info" value="Medical Information,"
											onclick='count(11)'>Medical Information
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="over_his" value="Overdraft History,"
											onclick='count(12)'>Overdraft History
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="pur_his" value="Purchase History,"
											onclick='count(13)'>Purchase History
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="acc_trans" value="Account Transactions"
											onclick='count(14)'>Account Transactions
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="risk_to" value="Risk Tolerance,"
											onclick='count(15)'>Risk Tolerance &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="me_rela" value="Medical-related Debts,"
											onclick='count(16)'>Medical-related Debts
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="cre_card" value="Credit Card or Other,"
											onclick='count(17)'>Credit Card or Other Debt
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="mor_rate"
											value="Mortagage Rates and Payments," onclick='count(18)'>Mortgage
											Rates and Payments &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="re_ass" value="Retirement Assets,"
											onclick='count(19)'>Retirement Assets
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="ch_acc"
											value="Checking Account Information," onclick='count(20)'>Checking
											Account Information &nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="em_info" value="Employment Information,"
											onclick='count(21)'>Employment Information
											&nbsp;&nbsp;&nbsp;
										</label> <label class="col-md-3"> <input type="checkbox"
											id="checkbox" name="wire_trans"
											value="Wire Transfer Instructions," onclick='count(22)'>Wire
											Transfer Instructions &nbsp;&nbsp;&nbsp;
										</label>
									</div>
								</div>
							</div>
						</fieldset>
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col-lg-12">
					<div class="well bs-component">
						<fieldset>
							<legend>Part II</legend>
							<!-- Radio -->
							<div class="row" style="margin: 7px">
								<div class="form-group col-md-6">
									<!-- <div class="col-lg-10"> -->
									<label for="radio" class="control-label">Reasons to
										share your customers personal information</label>
									<!-- </div> -->
								</div>


								<div class="form-group col-md-3">
									<!-- <div class="col-lg-10"> -->
									<label for="ratio" class="col-lg-2 control-label">Does
										your institution share?</label>
									<!-- </div> -->

								</div>
								<div class="form-group col-md-3">
									<!-- <div class="col-lg-10"> -->
									<label for="ratio" class="col-lg-2 control-label">Can
										your customer limit this sharing?</label>
									<!-- </div> -->
								</div>
							</div>

							<hr></hr>
							<div class="row" style="margin: 7px">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">For everyday
											business purpose</label>
										<p>such as to process your transactions, maintain your
											accounts, respond to court orders and legal investigations,
											or report to credit bureaus</p>
									</div>
								</div>

								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="everyday1" value="y"> Yes
											</label> <label> <input type="radio" name="everyday1"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>



								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="everyday2" value="y"> Yes
											</label> <label> <input type="radio" name="everyday2"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none" id="hidden1">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Privide opt-out?</label>
									</div>
								</div>


								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="everyday2_1" value="y"> Yes
											</label> <label> <input type="radio" name="everyday2_1"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>


							<div class="row" style="margin: 7px; display: none"
								id="hidden1_1">
								<div class="form-group col-md-4">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Select way to provide opt-out</label>
									</div>
								</div>

								<div class="form-group col-md-8">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="everyday2_2" value="y"> Telephone
											</label>&nbsp; <label> <input type="radio" name="everyday2_2"
												value="n" checked> Website
											</label>&nbsp;<label> <input type="radio" name="everyday2_2"
												value="n"> Telephone & Website
											</label>&nbsp;<label> <input type="radio" name="everyday2_2"
												value="n"> Mail-in form
											</label>
										</div>
									</div>
								</div>
							</div>
							<hr></hr>

							<div class="row" style="margin: 7px">
								<div class="form-group col-md-6">

									<div class="col-lg-10">
										<label for="ratio" class="control-label">For marketing
											purpose&mdash;</label>
										<p>to offer our products and services to you</p>
									</div>
								</div>

								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="marketing1" id="optionsRadios1" value="y">
												Yes
											</label> <label> <input type="radio" name="marketing1"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>
								</div>
								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="marketing2" id="optionsRadios1" value="y">
												Yes
											</label> <label> <input type="radio" name="marketing2"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="margin: 7px; display: none" id="hidden2">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Privide opt-out?</label>
									</div>
								</div>


								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="marketing2_1" value="y"> Yes
											</label> <label> <input type="radio" name="marketing2_1"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none"
								id="hidden2_1">
								<div class="form-group col-md-4">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Select way to provide opt-out</label>
									</div>
								</div>

								<div class="form-group col-md-8">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="marketing2_2" id="option2_2y" value="y">
												Telephone
											</label>&nbsp; <label> <input type="radio" name="marketing2_2"
												id="option2_2n" value="n" checked> Website
											</label>&nbsp;<label> <input type="radio" name="marketing2_2"
												id="option2_2y" value="y"> Telephone & Website
											</label>&nbsp;<label> <input type="radio" name="marketing2_2"
												id="option2_2y" value="y"> Mail-in form
											</label>
										</div>
									</div>
								</div>
							</div>
							<hr></hr>
							<div class="row" style="margin: 7px">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">For joint
											marketing with other financial companies</label>
									</div>
								</div>

								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="joint1" id="optionsRadios1" value="y">
												Yes
											</label> <label> <input type="radio" name="joint1"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>
								</div>
								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="joint2" value="y"> Yes
											</label> <label> <input type="radio" name="joint2" value="n"
												checked> No
											</label>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="margin: 7px; display: none" id="hidden3">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Privide opt-out?</label>
									</div>
								</div>


								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="joint2_1" value="y"> Yes
											</label> <label> <input type="radio" name="joint2_1"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="margin: 7px; display: none"
								id="hidden3_1">
								<div class="form-group col-md-4">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Select way to provide opt-out</label>
									</div>
								</div>

								<div class="form-group col-md-8">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="joint2_2" value="y"> Telephone
											</label>&nbsp; <label> <input type="radio" name="joint2_2"
												value="n" checked> Website
											</label> &nbsp;<label><input type="radio" name="joint2_2" value="y">
												Telephone & Website </label>&nbsp;<label> <input type="radio"
												name="joint2_2" value="y"> Mail-in form
											</label>

										</div>
									</div>
								</div>
							</div>
							<hr></hr>



							<div class="row" style="margin: 7px">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">For
											affiliates' everyday business purpose&mdash;</label>
										<p>information about your transactions and experiences</p>
									</div>
								</div>


								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="afeveryday1" id="optionsRadios1"
												value="y"> Yes
											</label> <label> <input type="radio" name="afeveryday1"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>
								</div>
								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="afeveryday2" value="y"> Yes
											</label> <label> <input type="radio" name="afeveryday2"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none" id="hidden4">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Privide opt-out?</label>
									</div>
								</div>


								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="afeveryday2_1" value="y"> Yes
											</label> <label> <input type="radio" name="afeveryday2_1"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none"
								id="hidden4_1">
								<div class="form-group col-md-4">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Select way to provide opt-out</label>
									</div>
								</div>


								<div class="form-group col-md-8">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="afeveryday2_2" value="y">
												Telephone
											</label> &nbsp;<label> <input type="radio" name="afeveryday2_2"
												value="n" checked> Website
											</label> &nbsp;<label><input type="radio" name="afeveryday2_2"
												value="y"> Telephone & Website </label>&nbsp;
												<label> <input
												type="radio" name="afeveryday2_2" value="y"> Mail-in
												form
											</label>
										</div>
									</div>
								</div>
							</div>
							<hr></hr>

							<div class="row" style="margin: 7px">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">For
											affiliates' everyday business purpose</label>
										<p>information about your creditworthiness</p>
									</div>
								</div>


								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="creeveryday1" id="optionsRadios1"
												value="y"> Yes
											</label> <label> <input type="radio" name="creeveryday1"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>

								</div>
								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="creeveryday2" id="optionsRadios1"
												value="y"> Yes
											</label> <label> <input type="radio" name="creeveryday2"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none" id="hidden5">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Privide opt-out?</label>
									</div>
								</div>

								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="creeveryday2_1" value="y"> Yes
											</label> <label> <input type="radio" name="creeveryday2_1"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none"
								id="hidden5_1">
								<div class="form-group col-md-4">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Select way to provide opt-out</label>
									</div>
								</div>


								<div class="form-group col-md-8">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="creeveryday2_2" value="y">
												Telephone
											</label> <label> <input type="radio" name="creeveryday2_2"
												value="n" checked> Website
											</label><label> <input type="radio" name="creeveryday2_2" value="y">
											Telephone & Website </label><label> <input type="radio" name="creeveryday2_2"
												value="y"> Mail-in form
											</label>
										</div>
									</div>
								</div>
							</div>

							<hr></hr>

							<div class="row" style="margin: 7px">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">Does your
											institution has affiliates?</label>

									</div>
								</div>

								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="hasorno" value="y"> Yes
											</label> <label> <input type="radio" name="hasorno" value="n"
												checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none" id="hidden0">
								<div class="form-group col-md-6">

									<div class="col-lg-10">
										<label for="ratio" class="control-label">For our
											affiliates to market to you</label>
									</div>
								</div>


								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="afmarket1" id="optionsRadios1" value="y">
												Yes
											</label> <label> <input type="radio" name="afmarket1"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>

								</div>
								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="afmarket2" id="optionsRadios1" value="y">
												Yes
											</label> <label> <input type="radio" name="afmarket2"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none" id="hidden6">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Privide opt-out?</label>
									</div>
								</div>


								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="afmarket2_1" value="y"> Yes
											</label> <label> <input type="radio" name="afmarket2_1"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none"
								id="hidden6_1">
								<div class="form-group col-md-4">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Select way to provide opt-out</label>
									</div>
								</div>


								<div class="form-group col-md-8">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="afmarket2_2" value="y"> Telephone
											</label>&nbsp; <label> <input type="radio" name="afmarket2_2"
												value="n" checked> Website
											</label>&nbsp;<label> <input
												type="radio" name="afmarket2_2" value="y"> Telephone & Website
											</label>&nbsp;<label> <input
												type="radio" name="afmarket2_2" value="y"> Mail-in form
											</label>
										</div>
									</div>
								</div>
							</div>

							<hr></hr>
							<div class="row" style="margin: 7px">
								<div class="form-group col-md-6">

									<div class="col-lg-10">
										<label for="ratio" class="control-label">For
											nonaffiliates to market to you</label>
									</div>
								</div>


								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="nonmarketdeb1" id="optionsRadios1"
												value="y"> Yes
											</label> <label> <input type="radio" name="nonmarketdeb1"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>

								</div>
								<div class="form-group col-md-3">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="nonmarketdeb2" id="optionsRadios1"
												value="y"> Yes
											</label> <label> <input type="radio" name="nonmarketdeb2"
												id="optionsRadios1" value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none" id="hidden7">
								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Privide opt-out?</label>
									</div>
								</div>


								<div class="form-group col-md-6">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="nonmarketdeb2_1" value="y"> Yes
											</label> <label> <input type="radio" name="nonmarketdeb2_1"
												value="n" checked> No
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="row" style="margin: 7px; display: none"
								id="hidden7_1">
								<div class="form-group col-md-4">
									<div class="col-lg-10">
										<label for="ratio" class="control-label">&nbsp;&nbsp;
											Select way to provide opt-out</label>
									</div>
								</div>


								<div class="form-group col-md-8">
									<div class="col-lg-10">
										<div class="radio">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
												type="radio" name="nonmarketdeb2_2" value="y"> Telephone
											</label> &nbsp;<label> <input type="radio" name="nonmarketdeb2_2"
												value="n" checked> Website
											</label>&nbsp;<label> <input
												type="radio" name="nonmarketdeb2_2" value="y"> Telephone & Website
											</label> &nbsp;<label> <input
												type="radio" name="nonmarketdeb2_2" value="y"> Mail-in form
											</label> 
										</div>
									</div>
								</div>
							</div>
						</fieldset>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="well bs-component">
						<fieldset>
							<legend>Part III</legend>
							<!-- textarea -->
							<div class="form-group col-md-12">
								<label for="textArea" class="col-lg-2 control-label">Who
									is providing this notice?</label>
								<div class="col-lg-10">
									<textarea class="form-control" rows="3" id="textArea"
										name="who_provide"></textarea>
								</div>
							</div>

							<div class="form-group col-md-12">
								<label for="textArea" class="col-lg-2 control-label">How
									does your institution protect customer's personal information?</label>
								<div class="col-lg-10">
									<textarea class="form-control" rows="3" id="textArea"
										name="how_protect"></textarea>
								</div>
							</div>

							<div class="form-group col-md-12">
								<label for="textArea" class="col-lg-2 control-label">How
									does your institution collect customer's personal information?</label>
								<div class="col-lg-10">
									<textarea class="form-control" rows="3" id="textArea"
										name="how_collect"></textarea>
								</div>
							</div>

							<div class="form-group col-md-12">
								<label for="textArea" class="col-lg-2 control-label">Affiliate
									Information</label>
								<div class="col-lg-10">
									<textarea class="form-control" rows="3" id="textArea"
										name="aff_in"></textarea>
								</div>
							</div>

							<div class="form-group col-md-12">
								<label for="textArea" class="col-lg-2 control-label">Nonaffiliate
									Information</label>
								<div class="col-lg-10">
									<textarea class="form-control" rows="3" id="textArea"
										name="nonaff_in"></textarea>
								</div>
							</div>

							<div class="form-group col-md-12">
								<label for="textArea" class="col-lg-2 control-label">Joint
									Marketing Information</label>
								<div class="col-lg-10">
									<textarea class="form-control" rows="3" id="textArea"
										name="joint_market_in"></textarea>
								</div>
							</div>

							<div class="form-group col-md-12">
								<label for="textArea" class="col-lg-2 control-label">Other
									Important Information</label>
								<div class="col-lg-10">
									<textarea class="form-control" rows="3" id="textArea"
										name="other_info"></textarea>
								</div>
							</div>

							<div class="form-group col-md-12">
								<div class="col-lg-10 col-lg-offset-2">
									<button class="btn btn-default">Cancel</button>
									<button type="submit" class="btn btn-primary" name="action"
										value="submit">Submit</button>
									<button type="submit" class="btn btn-primary" name="action"
										value="save">Save</button>
								</div>
							</div>
						</fieldset>
					</div>
				</div>
			</div>
		</form>
	</div>

	<footer>
		<div class="row">
			<div class="col-lg-12">

				<center>
					<p>
						Copyright &copy; May 2015, Team Swan. Contact us at <a
							href="mailto:teamswan@andrew.cmu.edu">teamswan@andrew.cmu.edu</a>.
					</p>
				</center>



			</div>
		</div>

	</footer>
</body>
</html>