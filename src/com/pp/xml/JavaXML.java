package com.pp.xml;

import java.io.File;
import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

public class JavaXML {

	public static void main(String[] args) throws ParserConfigurationException, SAXException, IOException, XPathExpressionException{
		File file = new File("xmlTest.xml");

		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document document = db.parse(file);

		XPathFactory xpathFactory = XPathFactory.newInstance();
		XPath xpath = xpathFactory.newXPath();

		String msg = xpath.evaluate("/company/employee/firstname", document); //----> hi
		String status = xpath.evaluate("/resp/status", document); // --->good
		
		System.out.println("status is"+ msg);
		
//		HttpServletResponse response;
//		PrintWriter out = response.getWriter();
//		out.println();
		
		
	}
	
}
