package com.pp.main.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerConfigurationException;

import com.pp.xml.XMLIO;

//import formbeans.ItemForm;

/**
 * Servlet implementation class PolicySubmitServlet
 */
@WebServlet("/PolicySubmitServlet")
public class PolicySubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "tempFiles";

	String[] basic = { "ins_name", "phone", "date", "url", "" };
	String[] checkbox = { "ssn", "income", "acc_balance", "pay_his",
			"tran_his", "tran_los_his", "cre_his", "cre_sco", "ass",
			"inves_ex", "cre_insu_sco", "in_claim_his", "med_info", "over_his",
			"pur_his", "acc_trans", "risk_to", "me_rela", "cre_card",
			"mor_rate", "re_ass", "ch_acc", "em_info", "wire_trans" };
	String[] yes_no = { "everyday1", "everyday2","everyday2_1","everday2_2","marketing1", "marketing2",
			"joint1", "joint2", "afeveryday1", "afeveryday2", "creeveryday1",
			"creeveryday2","creeveryday2_1","creeveryday2_2", "afmarket1", "afmarket2", "nonmarketdeb1",
			"nonmarketdeb2", "nonmarket1", "nonmarket2" };
	String[] text_area = { "who_provide", "how_protect", "how_collect",
			"aff_in", "nonaff_in", "joint_market_in", "other_info" };

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PolicySubmitServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// check action whether save or submit

		String action = request.getParameter("action");
		if (action == null || action.length() == 0) {
			returnError();
		} else if (action.equals("submit")) {
			formSubmit(request, response);
		} else if (action.equals("save")) {
			formSave(request, response);
		} else {
			returnError();
		}

	}

	// save form
	private void formSave(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		try {
			Map<String, String> map = readInput(request);
			String fileName = "save.xml";
			// using key-value pair store to xml
			File file = new File(getServletContext().getRealPath("/file"),
					fileName);
			XMLIO.writeToXML(map, file);
	
			String appPath = request.getServletContext().getRealPath("");
			String filePath = appPath + File.separator + SAVE_DIR;

			System.out.println("Before downloading "+appPath);
			System.out.println("file path is "+filePath);
			
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			response.setContentType("APPLICATION/OCTET-STREAM");
			response.setHeader("Content-Disposition", "attachment; filename=\""
					+ fileName + "\"");

			java.io.FileInputStream fileInputStream = new java.io.FileInputStream(getServletContext().getRealPath("/file")+
					File.separator +fileName);

			int i;
			while ((i = fileInputStream.read()) != -1) {
				out.write(i);
			}
			fileInputStream.close();
			out.close();

		

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// submit form
	private void formSubmit(HttpServletRequest request,
			HttpServletResponse response) {

		Map<String, String> map = readInput(request);
		// send the map to result page
		System.out.println(map);
		request.getSession().setAttribute("policyMap", map);
		try {
			response.sendRedirect("form/form.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// read the input
	private Map readInput(HttpServletRequest request) {
//		ItemForm form = formBeanFactory.create(request);
		Map<String, String> map = new HashMap<String, String>();
		// read basic
		
		//Instead of looping on name loop on values so that we can populate the data on the form when 

		for (String s : basic) {
			String r = request.getParameter(s);
			if (r == null || r.length() == 0) {
				continue;
			}
			map.put(s, r);
		}
		for (String s : yes_no) {
			String result = request.getParameter(s);
			if (result == null || result.length() == 0) {
				continue;
			}
			if (result.equals("y")) {
				map.put(s, "y");
			} else {
				map.put(s, "n");
			}
		}
		for (String s : text_area) {
			String r = request.getParameter(s);
			if (r == null || r.length() == 0) {
				continue;
			}
			map.put(s, r);
		}
		
		String[] str=request.getParameterValues("x");
		request.getSession().setAttribute("array", str);


		return map;
	}

	/*
	 * form is not submit corrected
	 */
	public void returnError() {

	}

}
