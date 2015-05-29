<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml"%>
<%@   page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bootswatch: Spacelab</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css" media="screen">
<link rel="stylesheet" href="css/bootswatch.min.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="../bower_components/html5shiv/dist/html5shiv.js"></script>
      <script src="../bower_components/respond/dest/respond.min.js"></script>
    <![endif]-->
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
</head>
<body>

	<%
		Map<String, String> map = (Map<String, String>) session
				.getAttribute("policyMap");
		String[] basic = { "ins_name", "phone", "date", "url", "" };
		String[] checkbox = { "ssn", "income", "acc_balance", "pay_his",
				"tran_his", "tran_los_his", "cre_his", "cre_sco", "ass",
				"inves_ex", "cre_insu_sco", "in_claim_his", "med_info",
				"over_his", "pur_his", "acc_trans", "risk_to", "me_rela",
				"cre_card", "mor_rate", "re_ass", "ch_acc", "em_info",
				"wire_trans" };
		String[] yes_no = { "everyday1", "everyday2", "everyday2_1",
				"everyday2_2", "marketing1", "marketing2", "joint1",
				"joint2", "afeveryday1", "afeveryday2", "creeveryday1",
				"creeveryday2", "afmarket1", "afmarket2", "nonmarketdeb1",
				"nonmarketdeb2", "nonmarket1", "nonmarket2" };
		String[] text_area = { "who_provide", "how_protect", "how_collect",
				"aff_in", "nonaff_in", "joint_market_in", "other_info" };
	%>


	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">
				<div class="page-header">
					<p style="margin-left: 800px">
						Rev.
						<%=map.get("date")%></p>
				</div>

				<div class="bs-component">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>

								<th>Facts</th>
								<th>WHAT DO WE DO WITH YOUR PERSONAL INFORMATION</th>

							</tr>
						</thead>
						<tbody>
							<tr>

								<td width="15%">Why？</td>

								<td width="75%" align="left"><p>Financial companies
										choose how they share your personal information. Under federal
										law, that means personally identifiable information. Federal
										law gives consumers the right to limit some but not all
										sharing. Federal law also requires us to tell you how we
										collect, share, and protect your personal information. Please
										read this notice carefully to understand what we do.</p></td>
							</tr>
							<tr>
								<td width="15%">What?</td>
								<td width="75%" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The
									types of personal information we collect and share depend on
									the product or service you have with us.<br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This information can include:
									<ul>
										<li>Social Security number and employment information</li>
										<li>account balances, transaction history and credit
											information</li>
										<li>assets and investment experience</li>
									</ul>
								</td>
							</tr>
							<tr class="info">

								<td width="15%" backgrounf="#f9f9f9">How?</td>
								<td width="75%" align="left">All financial companies need
									to share customers’ personal information to run their everyday
									business. In the section below, we list the reasons financial
									companies can share their customers’ personal information, the
									reasons PNC chooses to share, and whether you can limit this
									sharing.</td>
							</tr>

						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>

	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">

				<div class="bs-component">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>

								<th>Reasons we can share your personal information</th>
								<th>Does &nbsp&nbsp <%=map.get("ins_name")%>Share?
								</th>
								<th>Can you limit this sharing?</th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td width="40%">For our everyday business purposes — such
									as to process your transactions, maintain your account(s),
									respond to court orders and legal investigations, or report to
									credit bureaus</td>

								<td width="30%" align="center"><%=map.get("everyday1")%></td>
								<td width="30"><%=map.get("everyday2")%></td>
							</tr>
							<tr>
								<td width="40%">For our marketing purposes — to offer our
									products and services to you</td>

								<td width="30%" align="center"><%=map.get("marketing1")%></td>
								<td width="30"><%=map.get("marketing2")%></td>
							</tr>
							<tr>

								<td width="40%">For joint marketing with other financial
									companies</td>

								<td width="30%" align="center"><%=map.get("joint1")%></td>
								<td width="30"><%=map.get("everyday2")%></td>
							</tr>
							<tr>

								<td width="40%">For our affiliates’ everyday business
									purposes — Information about your transactions and experiences</td>

								<td width="30%" align="center"><%=map.get("afeveryday1")%></td>
								<td width="30"><%=map.get("afeveryday2")%></td>
							</tr>
							<tr>

								<td width="40%">For our affiliates’ everyday business
									purposes — Information about your creditworthiness</td>

								<td width="30%" align="center"><%=map.get("creeveryday1")%></td>
								<td width="30"><%=map.get("creeveryday2")%></td>
							</tr>
							<tr>

								<td width="40%">For our affiliate's to market to you</td>
								<td width="30%" align="center"><%=map.get("afmarket1")%></td>
								<td width="30"><%=map.get("afmarket2")%></td>
							</tr>
							<tr>

								<td width="40%">For nonaffiliates to market to you</td>
								<td width="30%" align="center"><%=map.get("nonmarketdeb1")%></td>
								<td width="30"><%=map.get("nonmarketdeb2")%></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>
	<%
		if (map.get("creeveryday2_1").equals("Yes")) {
	%>
	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">

				<div class="bs-component">
					<table class="table table-striped table-hover ">

						<tbody>
							<tr>

								<td width="15%">To limit our sharing</td>

								<td width="75%" align="left">
									<ul>
										<li>Call &nbsp&nbsp&nbsp<%=map.get("phone")%>&nbsp&nbsp&nbspour
											menu will prompt you through your choices
										</li>
										<li>Visit us online:&nbsp&nbsp&nbsp<%=map.get("url")%></li>
									</ul>
									<p>Please note: If you are a new customer, we can begin
										sharing your information 30 days from the date we sent this
										notice. When you are no longer our customer, we continue to
										share your information as described in this notice. However,
										you can contact us at any time to limiting our sharing.</p>


								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>
	<%
		}
	%>



	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">

				<div class="bs-component">
					<table class="table table-striped table-hover ">

						<tbody>
							<tr>

								<td width="15%" backgrounf="#f9f9f9">Questions?</td>
								<td width="75%" align="left">Call &nbsp<%=map.get("phone")%>or
									go to&nbsp<%=map.get("url")%></td>
							</tr>

						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>

	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">

				<div class="bs-component">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>
								<th colspan="3">Mail-inForm</th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td width="15%" rowspan="2"><p>Leave Blank OR If you
										have a joint account, your choice(s) will apply to everyone on
										your account uncless you mark below.</p> <label><input type="radio"> Apply my
										choices only to me</label></td>

								<td width="85%" align="left" colspan="2">Mark any/all you want to
									limit: <label> <input type="radio"> &nbspDo not share
										information about my creditworthines with your affiliates for
										their everyday business purposes.
								</label> <label><input type="radio">&nbsp Do not allow your
										affiliates to use my personal information to market to me.</label> <label><input
										type="radio"> &nbspDo not share my personal information with
										nonaffiliates to market their products and services to me.</label>
								</td>
							</tr>
							<tr>
								<td width="60" align="left">
									<table>
										<tbody>
											<tr>
												<td width="15%">Name</td>
											</tr>
											<tr>
												<td rowspan="3">Address<br> City, State, Zip
												</td>
												<td></td>
											</tr>
											<tr>
												<td></td>
											</tr>
											<tr>
												<td></td>

											</tr>

										</tbody>
									</table>
								</td>
								<td width="40">
									<p>
										Mail to: <br>
									</p>
								</td>

							</tr>
						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>


	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">

				<div class="bs-component">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>

								<th colspan="2">Who we are</th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td width="35%">Who is providing this notice?</td>

								<td width="50%" align="left"><p><%=map.get("who_provide")%></p></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>

	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">

				<div class="bs-component">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>

								<th colspan="2">Who we do</th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td width="35%">How does <%=map.get("ins_name")%> protect
									my personal information?
								</td>

								<td width="50%" align="left"><p><%=map.get("how_protect")%></p></td>
							</tr>
							<tr>

								<td width="35%">How does <%=map.get("url")%> collect my
									personal information?
								</td>

								<td width="50%" align="left"><p><%=map.get("how_collect")%></p></td>
							</tr>
							<tr>

								<td width="35%">Why can’t I limit all sharing?</td>

								<td width="50%" align="left"><p></p></td>
							</tr>
							<tr>

								<td width="35%">What happens when I limit sharing for an
									account I hold jointly with someone else?</td>

								<td width="50%" align="left"><p></p></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>


	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">

				<div class="bs-component">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>

								<th colspan="2">Definitions</th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td width="35%">Affiliates</td>

								<td width="50%" align="left"><p>Companies related by
										common ownership or control. They can be financial and
										nonfinancial companies.</p>
									<ul>
										<li></li>
									</ul></td>
							</tr>
							<tr>

								<td width="35%">Nonaffiliates</td>


								<td width="50%" align="left"><p>Companies related by
										common ownership or control. They can be financial and
										nonfinancial companies.</p>
									<ul>
										<li><%=map.get("ins_name")%> does not share with
											nonaffiliates so they can market to you.</li>
									</ul></td>
							</tr>
							<tr>

								<td width="35%">Joint Marketing</td>

								<td width="50%" align="left"><p>A formal agreement
										between nonaffiliated financial companies that together market
										financial products or services to you.</p>
									<ul>
										<li>Our joint marketing partners include mortgage and
											lending companies, insurance companies, and other companies
											that provide financial products and services.</li>
									</ul></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>


	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">

				<div class="bs-component">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>

								<th>Other important information</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td width="50%" align="left"><p><%=map.get("ohter_info")%></p></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>




</body>