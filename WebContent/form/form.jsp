<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.Map" %>
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
      _gaq.push(['_setAccount', 'UA-23019901-1']);
      _gaq.push(['_setDomainName', "bootswatch.com"]);
        _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);

     (function() {
       var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
       ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
     })();

    </script>
</head>
<body>

<%
	Map<String,String> map = (Map<String,String>) session.getAttribute("policyMap");
String[] basic = {"ins_name","phone","date","url",""};
String[] checkbox = {"ssn","income","acc_balance","pay_his","tran_his","tran_los_his","cre_his","cre_sco","ass","inves_ex"
		,"cre_insu_sco","in_claim_his","med_info","over_his","pur_his","acc_trans","risk_to","me_rela","cre_card","mor_rate","re_ass"
		,"ch_acc","em_info","wire_trans"};
String[] yes_no ={"everyday1","everyday2","marketing1","marketing2","joint1","joint2","afeveryday1","afeveryday2"
		,"creeveryday1","creeveryday2","afmarket1","afmarket2","nonmarketdeb1","nonmarketdeb2","nonmarket1","nonmarket2"
		};
String[] text_area={"who_provide","how_protect","how_collect","aff_in","nonaff_in","joint_market_in","other_info"};




%>


	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">
				 <div class="page-header">
					<p style="margin-left:800px">Rev. <%=map.get("date") %></p>
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
								<th>Does We Share?</th>
								<th>Can you limit this sharing?</th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td width="40%">For our everyday business purposes — such
									as to process your transactions, maintain your account(s),
									respond to court orders and legal investigations, or report to
									credit bureaus</td>

								<td width="30%" align="center"><%=map.get("everyday1") %></td>
								<td width="30"><%=map.get("everyday2") %></td>
							</tr>
							<tr>
								<td width="40%">For our marketing purposes — to offer our
									products and services to you</td>

								<td width="30%" align="center"><%=map.get("marketing1") %></td>
								<td width="30"><%=map.get("marketing2") %></td>
							</tr>
							<tr>

								<td width="40%">For joint marketing with other financial
									companies</td>

								<td width="30%" align="center"><%=map.get("joint1") %></td>
								<td width="30"><%=map.get("everyday2") %></td>
							</tr>
							<tr>

								<td width="40%">For our affiliates’ everyday business
									purposes — Information about your transactions and experiences</td>

								<td width="30%" align="center"><%=map.get("afeveryday1") %></td>
								<td width="30"><%=map.get("afeveryday2") %></td>
							</tr>
							<tr>

								<td width="40%">For our affiliates’ everyday business
									purposes — Information about your creditworthiness</td>

								<td width="30%" align="center"><%=map.get("creeveryday1") %></td>
								<td width="30"><%=map.get("creeveryday2") %></td>
							</tr>
							<tr>

								<td width="40%">For nonaffiliates to market to you — for
									all credit card accounts</td>

								<td width="30%" align="center"><%=map.get("afmarket1") %></td>
								<td width="30"><%=map.get("afmarket2") %></td>
							</tr>
							<tr>

								<td width="40%">For nonaffiliates to market to you — for
									accounts and services endorsed by another organization (e.g.,
									debit card co-branded with a baseball team) “Sponsored
									Accounts”</td>

								<td width="30%" align="center"><%=map.get("nonmarketdeb1") %></td>
								<td width="30"><%=map.get("nonmarketdeb2") %></td>
							</tr>
							<tr>

								<td width="40%">For nonaffiliates to market to you — for
									accounts other than credit card accounts and Sponsored
									Accounts, such as insurance, investments, deposit and lending</td>

								<td width="30%" align="center"><%=map.get("nonmarket1") %></td>
								<td width="30"><%=map.get("nonmarket2") %></td>
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

						<tbody>
							<tr>

								<td width="15%">To limit our sharing</td>

								<td width="75%" align="left">
									<ul>
										<li>Call -our menu will prompt you through your choices</li>
										<li>Visit us online:</li>
										<li>Talk to a banking center associate</li>
										<li>Talk to your assigned account representative (e.g.,
											financial advisor, mortgage loan officer)</li>
											
									</ul>
								</td>
							</tr>
							<tr>
								<td width="15%">To limit direct marketing contact</td>
								<td width="75%" align="left">
									<ul>
										<li>Call -our menu will prompt you through your choices</li>
										<li>Visit us online:</li>
										<li>Talk to a banking center associate</li>
										<li>Talk to your assigned account representative (e.g.,
											financial advisor, mortgage loan officer)</li>
									</ul>
								</td>
							</tr>
							<tr>

								<td width="15%" backgrounf="#f9f9f9">Questions?</td>
								<td width="75%" align="left">Call or go to</td>
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

								<td width="50%" align="left"><p><%=map.get("who_provide") %></p></td>
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

								<td width="35%">How does ** protect my personal
									information?</td>

								<td width="50%" align="left"><p><%=map.get("how_protect") %></p></td>
							</tr>
							<tr>

								<td width="35%">How does ** collect my personal
									information?</td>

								<td width="50%" align="left"><p><%=map.get("how_collect") %></p></td>
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
										<li>Our affiliates include companies with the PNC name,
											and financial companies such as Harris Williams, LLC.</li>
									</ul></td>
							</tr>
							<tr>

								<td width="35%">Nonaffiliates</td>


								<td width="50%" align="left"><p>Companies related by
										common ownership or control. They can be financial and
										nonfinancial companies.</p>
									<ul>
										<li>** does not share with nonaffiliates so they can
											market to you.</li>
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
								<td width="50%" align="left"><p><%=map.get("ohter_info") %></p></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /example -->
			</div>
		</div>
	</div>




</body>