package com.pp.compare.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pp.uploadIO.Upload;

/**
 * Servlet implementation class CompareUploadServlet
 */
@WebServlet("/CompareUploadServlet")
public class CompareUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CompareUploadServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//upload the file to WebContent/file
		List<String> paths = Upload.uploadFile(request, this);
		System.out.println(paths);
		
		//go to compare/compare.html
		request.getSession().setAttribute("fileList", paths);
		response.sendRedirect("compare/compare.jsp");
//		RequestDispatcher d = request.getRequestDispatcher("compare/compare.jsp");
//   		d.forward(request,response);
	}

	
	
}
