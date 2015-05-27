package com.pp.xml;

import java.io.File;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.pp.bean.Question;

public class XMLIO {
	
	static String rootStr = "project";
	static String listStr = "question";
	static String[] attrs = { "id", "title", "ans" };
	

	public static void main(String[] args) {
		
		File file = new File("mapXML.xml");
		Map<String,String> map = new HashMap<String,String>();
		map.put("key1", "value1");
		
		writeToXML(map,file);
		map = null;
		map = readXML(file.getName());
		System.out.println(map);
	}
	
	private static void writeTest(){
		String fileName = "writeToXML.xml";
		List<Question> input = new LinkedList<Question>();
		input.add(new Question("1","quetion 1","ans1"));
		input.add(new Question("2","quetion 2","ans2"));
		
		writeToXML(input, fileName);
	}
	
	

	

	public static void writeToXML(Map<String,String> map, File file){
		try {
			DocumentBuilderFactory docFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

			// root elements
			Document doc = docBuilder.newDocument();
			Element rootElement = doc.createElement(rootStr);
			doc.appendChild(rootElement);

			// add lots of input
			for (String key:map.keySet()) {
				// this is one question and its answer
				Element qEle = doc.createElement(listStr);// this is the one
															// which will be
															// repeated
				// create key
				Element id = doc.createElement("key");
				id.appendChild(doc.createTextNode(key));
				qEle.appendChild(id);

				// create value
				Element title = doc.createElement("value");
				title.appendChild(doc.createTextNode(map.get(key)));
				qEle.appendChild(title);


				rootElement.appendChild(qEle);
			}

			// wri// write the content into xml file
			TransformerFactory transformerFactory = TransformerFactory
					.newInstance();
			Transformer transformer = transformerFactory.newTransformer();
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(file);
			transformer.transform(source, result);

		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		} catch (TransformerException tfe) {
			tfe.printStackTrace();
		}
	}
	
	
	public static void writeToXML(List<Question> input,String fileName) {
		

		try {
			DocumentBuilderFactory docFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

			// root elements
			Document doc = docBuilder.newDocument();
			Element rootElement = doc.createElement(rootStr);
			doc.appendChild(rootElement);

			// add lots of input
			for (Question q : input) {
				// this is one question and its answer
				Element qEle = doc.createElement(listStr);// this is the one
															// which will be
															// repeated
				// create id
				Element id = doc.createElement("id");
				id.appendChild(doc.createTextNode(q.id));
				qEle.appendChild(id);

				// create title
				Element title = doc.createElement("title");
				title.appendChild(doc.createTextNode(q.title));
				qEle.appendChild(title);

				// create ans
				Element ans = doc.createElement("ans");
				ans.appendChild(doc.createTextNode(q.ans));
				qEle.appendChild(ans);

				rootElement.appendChild(qEle);
			}

			// wri// write the content into xml file
			TransformerFactory transformerFactory = TransformerFactory
					.newInstance();
			Transformer transformer = transformerFactory.newTransformer();
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(new File(fileName));
			transformer.transform(source, result);

		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		} catch (TransformerException tfe) {
			tfe.printStackTrace();
		}

	}
	
	public static Map<String,String> readXML(String fileName){
		Map<String,String> map = new HashMap<String,String>();
		
		try {
			File file = new File(fileName);
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			doc.getDocumentElement().normalize();
			NodeList nodeLst = doc.getElementsByTagName(listStr); // get list
			
			for (int s = 0; s < nodeLst.getLength(); s++) {
				Node node = nodeLst.item(s);
				Question q = null;
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					Element fstElmnt = (Element) node;
					
					NodeList idList = fstElmnt.getElementsByTagName("key");
					String key = (String) idList.item(0).getChildNodes().item(0).getNodeValue();
					
					NodeList titleList = fstElmnt.getElementsByTagName("value");
					String value = (String) titleList.item(0).getChildNodes().item(0).getNodeValue();
					
					map.put(key, value);
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	
	
	
	

	private static void writeToXMLDemo() {
		try {

			DocumentBuilderFactory docFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

			// root elements
			Document doc = docBuilder.newDocument();
			Element rootElement = doc.createElement("company");
			doc.appendChild(rootElement);

			// staff elements
			Element staff = doc.createElement("Staff");
			rootElement.appendChild(staff);

			// set attribute to staff element
			Attr attr = doc.createAttribute("id");
			attr.setValue("1");
			staff.setAttributeNode(attr);

			// shorten way
			// staff.setAttribute("id", "1");

			// firstname elements
			Element firstname = doc.createElement("firstname");
			firstname.appendChild(doc.createTextNode("yong"));
			staff.appendChild(firstname);

			// lastname elements
			Element lastname = doc.createElement("lastname");
			lastname.appendChild(doc.createTextNode("mook kim"));
			staff.appendChild(lastname);

			// nickname elements
			Element nickname = doc.createElement("nickname");
			nickname.appendChild(doc.createTextNode("mkyong"));
			staff.appendChild(nickname);

			// salary elements
			Element salary = doc.createElement("salary");
			salary.appendChild(doc.createTextNode("100000"));
			staff.appendChild(salary);

			// wri// write the content into xml file
			TransformerFactory transformerFactory = TransformerFactory
					.newInstance();
			Transformer transformer = transformerFactory.newTransformer();
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(new File("writeToXML.xml"));

			// Output to console for testing
			// StreamResult result = new StreamResult(System.out);

			transformer.transform(source, result);

			System.out.println("File saved!");

		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		} catch (TransformerException tfe) {
			tfe.printStackTrace();
		}

	}

	/*
	 * the demo to read the xml
	 */
	private static void readXMLDemo() {
		try {
			File file = new File("xmlTest.xml");
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			doc.getDocumentElement().normalize();
			System.out.println("Root element "
					+ doc.getDocumentElement().getNodeName()); // root name
			NodeList nodeLst = doc.getElementsByTagName("employee"); // get list
			System.out.println("Information of all employees");
			for (int s = 0; s < nodeLst.getLength(); s++) {
				Node node = nodeLst.item(s);
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					Element fstElmnt = (Element) node;
					NodeList fstNmElmntLst = fstElmnt
							.getElementsByTagName("firstname");
					Element fstNmElmnt = (Element) fstNmElmntLst.item(0);
					NodeList fstNm = fstNmElmnt.getChildNodes();
					Node n = ((Node) fstNm.item(0));
					String content = n.getNodeValue();
					System.out.println("First Name : " + content);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
