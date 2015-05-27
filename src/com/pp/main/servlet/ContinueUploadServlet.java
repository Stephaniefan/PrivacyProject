package com.pp.main.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pp.uploadIO.Upload;
import com.pp.xml.XMLIO;

/**
 * Servlet implementation class ContinueUploadServlet
 */
@WebServlet("/ContinueUploadServlet")
public class ContinueUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContinueUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//upload the file to WebContent/file
		List<String> paths = Upload.uploadFile_FullPath(request, this);
		
		
		//read a map
		Map<String,String> map = XMLIO.readXML(paths.get(0));
		
		System.out.println(map);
		//go to index.jsp
		request.getSession().setAttribute("continue", map);
		response.sendRedirect("main/continueWork.jsp");
//		RequestDispatcher d = request.getRequestDispatcher("compare/compare.jsp");
//   		d.forward(request,response);
	}

}
