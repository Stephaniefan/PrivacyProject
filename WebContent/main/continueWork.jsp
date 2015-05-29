<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
</head>
<body>
	<%
		Map<String, String> map = (Map<String, String>) session
				.getAttribute("continue");
	%>
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
									<li><a href="index.jsp">New Form</a></li>
									<li class="active"><a href="upload.html">Continue
											Working</a></li>
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

		<h3 id="nav-tabs">Select Your Institution Type</h3>
		<div class="bs-component">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#Depositary" data-toggle="tab">Depositary</a></li>
				<li><a href="#Contractual" data-toggle="tab">Contractual</a></li>
				<li><a href="#Investment" data-toggle="tab">Investment</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade active in" id="Depositary">
					<div class="row">

						<!-- form -->

						<div class="col-lg-12">
							<div class="well bs-component">
								<form name="form1" class="form-horizontal"
									onsubmit="return validateForm()"
									action="../PolicySubmitServlet">
									<fieldset>
										<legend>Privacy Form for Depositary Institution</legend>

										<!-- input text -->
										<div class="form-group col-md-6">
											<label for="inputPassword" class="col-lg-2 control-label">Institution
												Name</label>
											<div class="col-lg-10">

												<%
													if (map != null && map.get("ins_name") != null) {
												%>
												<input type="text" class="form-control" id="name"
													name="ins_name" placeholder="Institution Name"
													value=<%=map.get("ins_name")%>>
												<%
													} else {
												%>
												<input type="text" class="form-control" id="name"
													name="ins_name" placeholder="Institution Name">
												<%
													}
												%>

											</div>

											<label for="inputPhone" class="col-lg-2 control-label">Contact
												Phone Number</label>
											<div class="col-lg-10">
												<input type="tel" class="form-control" id="tel" name="phone"
													placeholder="xxx-xxx-xxxx" value=<%=map.get("phone")%>>
											</div>
										</div>

										<div class="form-group col-md-6">
											<label for="date" class="col-lg-2 control-label">Last
												Revised Date</label>
											<div class="col-lg-10">
												<input type="month" class="form-control" id="date"
													name="date" placeholder="mm/yyyy"
													value=<%=map.get("date")%>>
											</div>

											<label for="inputWebsite" class="col-lg-2 control-label">Website
												URL</label>
											<div class="col-lg-10">
												<input type="url" class="form-control" id="url" name="url"
													placeholder="http://www.xxx.com" value=<%=map.get("url")%>>
											</div>
										</div>

										<!-- checkbox -->

										<div class="form-group col-md-12">
											<label for="checkbox" class="col-lg-2 control-label">Select
												the types of personal information your institution will
												collect and share:</label>
											<p>&nbsp;&nbsp;&nbsp; * Select 5 more terms other than
												SSN to complete</p>

											<div class="col-lg-10">
												<div class="checkbox">
													<label class="col-md-3"> <input type="checkbox"
														id="checkbox" name="ssn" value="SSN," checked>SSN
														&nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="income" onclick='count(0)'
				
														<c:forEach items="${array}" var="check">
														<c:if test="${check eq 'income'}">checked</c:if>
				</c:forEach>>Income &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Account Balance" onclick='count(1)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Account Balance'}">checked</c:if>
				</c:forEach>>Account
														Balances &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Payment History" onclick='count(2)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Payment History'}">checked</c:if>
				</c:forEach>>Payment
														History &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Transaction History" onclick='count(3)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Transaction History'}">checked</c:if>
				</c:forEach>>Transaction
														History &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Transaction or Loss History"
														onclick='count(4)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Transaction or Loss History'}">checked</c:if>
				</c:forEach>>Transaction
														or Loss History &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Credit History" onclick='count(5)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Credit History'}">checked</c:if>
				</c:forEach>>Credit
														History &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Credit Scores" onclick='count(6)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Credit Scores'}">checked</c:if>
				</c:forEach>>Credit
														Scores &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Assets" onclick='count(7)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Assets'}">checked</c:if>
				</c:forEach>>Assets
														&nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Investment" onclick='count(8)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Investment'}">checked</c:if>
				</c:forEach>>Investment
														Experience &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Credit-based Insurance Scores"
														onclick='count(9)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Credit-based Insurance Scores'}">checked</c:if>
				</c:forEach>>Credit-based
														Insurance Scores &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Insurance Claim History"
														onclick='count(10)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Credit-based Insurance Scores'}">checked</c:if>
				</c:forEach>>Insurance
														Claim History &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Medical Information" onclick='count(11)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Medical Information'}">checked</c:if>
				</c:forEach>>Medical
														Information &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Overdraft History" onclick='count(12)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Overdraft History'}">checked</c:if>
				</c:forEach>>Overdraft
														History &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Purchase History" onclick='count(13)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Purchase History'}">checked</c:if>
				</c:forEach>>Purchase
														History &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Account Transactions" onclick='count(14)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Account Transactions'}">checked</c:if>
				</c:forEach>>Account
														Transactions &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Risk Tolerance" onclick='count(15)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Risk Tolerance'}">checked</c:if>
				</c:forEach>>Risk
														Tolerance &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Medical-related Debts" onclick='count(16)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Medical-related Debts'}">checked</c:if>
				</c:forEach>>Medical-related
														Debts &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"><input type="checkbox"
														name="x" value="Credit Card or Other" onclick='count(17)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Credit Card or Other'}">checked</c:if>
				</c:forEach>>Credit
														Card or Other Debt &nbsp;&nbsp;&nbsp; </label> <label
														class="col-md-3"> <input type="checkbox" name="x"
														value="Mortagage Rates and Payments" onclick='count(18)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Mortagage Rates and Payments'}">checked</c:if>
				</c:forEach>>Mortgage
														Rates and Payments &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Retirement Assets" onclick='count(19)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Retirement Assets'}">checked</c:if>
				</c:forEach>>Retirement
														Assets &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Checking Account Information"
														onclick='count(20)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Checking Account Information'}">checked</c:if>
				</c:forEach>>Checking
														Account Information &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Employment Information"
														onclick='count(21)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Employment Information'}">checked</c:if>
				</c:forEach>>Employment
														Information &nbsp;&nbsp;&nbsp;
													</label> <label class="col-md-3"> <input type="checkbox"
														name="x" value="Wire Transfer Instructions"
														onclick='count(22)'
														<c:forEach var="check" items="${array}"> <c:if test="${check eq 'Wire Transfer Instructions'}">checked</c:if>
				</c:forEach>>Wire
														Transfer Instructions &nbsp;&nbsp;&nbsp;
													</label>
												</div>
											</div>
										</div>

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

										<div class="row" style="margin: 7px">
											<div class="form-group col-md-6">
												<div class="col-lg-10">
													<label for="ratio" class="control-label">For
														everyday business purpose</label>
													<p>such as to process your transactions, maintain your
														accounts, respond to court orders and legal
														investigations, or report to credit bureaus</p>
												</div>
											</div>

											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="everyday1" id="optionsRadios1"
															value="y" <% if(map.get("everyday1").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="everyday1"
															id="optionsRadios1" value="n" <% if(map.get("everyday1").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>

											</div>
											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="everyday2" id="optionsRadios1"
															value="y" <% if(map.get("everyday2").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="everyday2"
															id="optionsRadios1" value="n" <% if(map.get("everyday2").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
											</div>
										</div>

										<div class="row" style="margin: 7px">
											<div class="form-group col-md-6">

												<div class="col-lg-10">
													<label for="ratio" class="control-label">For
														marketing purpose&mdash;</label>
													<p>to offer our products and services to you</p>
												</div>
											</div>

											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="marketing1" id="optionsRadios1"
															value="y" <% if(map.get("marketing1").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="marketing1"
															id="optionsRadios1" value="n" <% if(map.get("marketing1").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
 <c:out value="${map['marketing1']}"/>hello
											</div>
											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="marketing2" id="optionsRadios1"
															value="y" <% if(map.get("marketing2").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="marketing2"
															id="optionsRadios1" value="n" <% if(map.get("marketing2").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
											</div>
										</div>

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
															type="radio" name="joint1" id="optionsRadios1" value="y" <% if(map.get("joint1").equals("y")){%>checked<%} %>>
															Yes
														</label> <label> <input type="radio" name="joint1"
															id="optionsRadios1" value="n" <% if(map.get("joint1").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>

											</div>
											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="joint2" id="optionsRadios1" value="y"
															<% if(map.get("joint2").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="joint2"
															id="optionsRadios1" value="n" <% if(map.get("joint2").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
											</div>
										</div>

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
															value="y" <% if(map.get("afeveryday1").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="afeveryday1"
															id="optionsRadios1" value="n" <% if(map.get("afeveryday1").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
											</div>
											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="afeveryday2" id="optionsRadios1"
															value="y" <% if(map.get("afeveryday2").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="afeveryday2"
															id="optionsRadios1" value="n" <% if(map.get("afeveryday2").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
											</div>
										</div>

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
															value="y" <% if(map.get("creeveryday1").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="creeveryday1"
															id="optionsRadios1" value="n" <% if(map.get("creeveryday1").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>

											</div>
											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="creeveryday2" id="optionsRadios1"
															value="y" <% if(map.get("creeveryday2").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="creeveryday2"
															id="optionsRadios1" value="n" <% if(map.get("creeveryday2").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
											</div>
										</div>

										<div class="row" style="margin: 7px">
											<div class="form-group col-md-6">

												<div class="col-lg-10">
													<label for="ratio" class="control-label">For
														nonaffiliates to market to you&mdash;</label>
													<p>for all credit card accounts</p>
												</div>
											</div>

											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="afmarket1" id="optionsRadios1"
															value="y" <% if(map.get("afmarket1").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="afmarket1"
															id="optionsRadios1" value="n" <% if(map.get("afmarket1").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>

											</div>
											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="afmarket2" id="optionsRadios1"
															value="y" <% if(map.get("afmarket2").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="afmarket2"
															id="optionsRadios1" value="n" <% if(map.get("afmarket2").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
											</div>
										</div>

										<div class="row" style="margin: 7px">
											<div class="form-group col-md-6">

												<div class="col-lg-10">
													<label for="ratio" class="control-label">For
														nonaffiliates to market to you&mdash;</label>
													<p>for accounts and services endorsed by another
														organization (e.g., debit card co-branded with a baseball
														team)&mdash;Sponsored Accounts&mdash;</p>
												</div>
											</div>

											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="nonmarketdeb1" id="optionsRadios1"
															value="y" <% if(map.get("nonmarketdeb1").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="nonmarketdeb1"
															id="optionsRadios1" value="n" <% if(map.get("nonmarketdeb1").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>

											</div>
											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="nonmarketdeb2" id="optionsRadios1"
															value="y" <% if(map.get("nonmarketdeb2").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="nonmarketdeb2"
															id="optionsRadios1" value="n" <% if(map.get("nonmarketdeb2").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
											</div>
										</div>


										<div class="row" style="margin: 7px">
											<div class="form-group col-md-6">

												<div class="col-lg-10">
													<label for="ratio" class="control-label">For
														nonaffiliates to market to you &mdash;€”</label>
													<p>for accounts other than credit card accounts and
														Sponsored Accounts, such as insurance, investments,
														deposit and lending</p>
												</div>
											</div>

<%-- 											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="nonmarket1" id="optionsRadios1"
															value="y" <% if(map.get("nonmarket1").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="nonmarket1"
															id="optionsRadios1" value="n" <% if(map.get("nonmarket1").equals("n")){%>checked<%} %>> No
														</label>
													</div>
												</div>
 --%>
	<%-- 										</div>
											<div class="form-group col-md-3">
												<div class="col-lg-10">
													<div class="radio">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
															type="radio" name="nonmarket2" id="optionsRadios1"
															value="y" <% if(map.get("nonmarket2").equals("y")){%>checked<%} %>> Yes
														</label> <label> <input type="radio" name="nonmarket2"
															id="optionsRadios1" value="n" <% if(map.get("nonmarket2").equals("y")){%>checked<%} %>> No
														</label>
													</div>
												</div>
											</div>
										</div> --%>

										<!-- textarea -->
										<div class="form-group col-md-12">
											<label for="textArea" class="col-lg-2 control-label">Who
												is providing this notice?</label>
											<div class="col-lg-10">
												<textarea class="form-control" rows="3" id="textArea"
													name="who_provide" <%=map.get("who_provide")%>></textarea>
											</div>
										</div>

										<div class="form-group col-md-12">
											<label for="textArea" class="col-lg-2 control-label">How
												does your institution protect customer's personal
												information?</label>
											<div class="col-lg-10">
												<textarea class="form-control" rows="3" id="textArea"
													name="how_protect" <%=map.get("how_protect")%>></textarea>
											</div>
										</div>

										<div class="form-group col-md-12">
											<label for="textArea" class="col-lg-2 control-label">How
												does your institution collect customer's personal
												information?</label>
											<div class="col-lg-10">
												<textarea class="form-control" rows="3" id="textArea"
													name="how_collect" <%=map.get("how_collect")%>></textarea>
											</div>
										</div>

										<div class="form-group col-md-12">
											<label for="textArea" class="col-lg-2 control-label">Affiliate
												Information</label>
											<div class="col-lg-10">
												<textarea class="form-control" rows="3" id="textArea"
													name="aff_in" <%=map.get("aff_in")%>></textarea>
											</div>
										</div>

										<div class="form-group col-md-12">
											<label for="textArea" class="col-lg-2 control-label">Nonaffiliate
												Information</label>
											<div class="col-lg-10">
												<textarea class="form-control" rows="3" id="textArea"
													name="nonaff_in" <%=map.get("nonaff_in")%>></textarea>
											</div>
										</div>

										<div class="form-group col-md-12">
											<label for="textArea" class="col-lg-2 control-label">Joint
												Marketing Information</label>
											<div class="col-lg-10">
												<textarea class="form-control" rows="3" id="textArea"
													name="joint_market_in" <%=map.get("joint_market_in")%>></textarea>
											</div>
										</div>

										<div class="form-group col-md-12">
											<label for="textArea" class="col-lg-2 control-label">Other
												Important Information</label>
											<div class="col-lg-10">
												<textarea class="form-control" rows="3" id="textArea"
													name="other_info" <%=map.get("other_info")%>></textarea>
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
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>
				<center>
					Copyright &copy; May 2015, Team Swan. Contact us at <a
						href="mailto:teamswan@andrew.cmu.edu">teamswan@andrew.cmu.edu</a>.
				</center>
				</p>


			</div>
		</div>

	</footer>
</body>
</html>