package com.pp.uploadIO;

import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class Upload {

	
	public static List<String> uploadFile(HttpServletRequest request, HttpServlet servlet) {
		List<String> path = new LinkedList<String>();
		// Check that we have a file upload request
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		// Create a factory for disk-based file items
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// Configure a repository (to ensure a secure temp location is used)
		ServletContext servletContext = servlet.getServletConfig()
				.getServletContext();
		File repository = (File) servletContext
				.getAttribute("javax.servlet.context.tempdir");
		factory.setRepository(repository);

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		// Parse the request
		try {
			List<FileItem> items = upload.parseRequest(request);
			// Process the uploaded items
			Iterator<FileItem> iter = items.iterator();
			while (iter.hasNext()) {
				FileItem item = iter.next();
				if (!item.isFormField()) {
					File fullFile = new File(item.getName());
					String fileName = fullFile.getName();
					//File uploadedFile = new File(getServletContext().getRealPath("/"), fileName);
					File uploadedFile = new File(servlet.getServletContext().getRealPath("/file"), fileName);
					//getServletContext().getRealPath("/filepathInContext")
					
					//path.add(uploadedFile.getAbsolutePath()); //absolute path
					path.add(uploadedFile.getName()); // only name
					item.write(uploadedFile);
				}
			}

			System.out.println("success");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return path;

	}
	
	
	public static List<String> uploadFile_FullPath(HttpServletRequest request, HttpServlet servlet) {
		List<String> path = new LinkedList<String>();
		// Check that we have a file upload request
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		// Create a factory for disk-based file items
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// Configure a repository (to ensure a secure temp location is used)
		ServletContext servletContext = servlet.getServletConfig()
				.getServletContext();
		File repository = (File) servletContext
				.getAttribute("javax.servlet.context.tempdir");
		factory.setRepository(repository);

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		// Parse the request
		try {
			List<FileItem> items = upload.parseRequest(request);
			// Process the uploaded items
			Iterator<FileItem> iter = items.iterator();
			while (iter.hasNext()) {
				FileItem item = iter.next();
				if (!item.isFormField()) {
					File fullFile = new File(item.getName());
					String fileName = fullFile.getName();
					//File uploadedFile = new File(getServletContext().getRealPath("/"), fileName);
					File uploadedFile = new File(servlet.getServletContext().getRealPath("/file"), fileName);
					//getServletContext().getRealPath("/filepathInContext")
					
					path.add(uploadedFile.getAbsolutePath()); //absolute path
					//path.add(uploadedFile.getName()); // only name
					item.write(uploadedFile);
				}
			}

			System.out.println("success");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return path;

	}
}
