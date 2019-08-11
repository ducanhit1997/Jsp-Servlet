package Controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import Dao.UploadDao;

/**
 * Servlet implementation class UploadFile
 */
@WebServlet("/UploadFile")
public class UploadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadFile() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("fsf");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("po");
		UploadDao uploadDao=new UploadDao();
		ServletContext context=getServletContext();
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				List items = upload.parseRequest(request);
				Iterator iterator = items.iterator();
				while (iterator.hasNext()) {

					FileItem item = (FileItem) iterator.next();
					if (!item.isFormField()) {

						String fileName = new File(item.getName()).getName();
						System.out.println("file:" + fileName);
						String root = getServletContext().getRealPath("/");
						System.out.println("root:" + root);
						File path = new File("E:\\Group22\\WebContent\\Project\\Webbanhang\\img\\");
						
						File uploadedFile = new File(path + "/" + fileName);
						item.write(uploadedFile);
						System.out.println(uploadedFile.getAbsolutePath());
						String hinhanh="img/"+fileName;
						System.out.println(hinhanh);
						ArrayList<String>list=uploadDao.loadHinhAnh(hinhanh);
						context.setAttribute("linkImage",list);
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	}

}
