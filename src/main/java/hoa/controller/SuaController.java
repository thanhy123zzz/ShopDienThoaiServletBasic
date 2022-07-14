package hoa.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import hoa.DienThoaiDao.DienThoaiDao;
import hoa.Enity.DienThoai;

@WebServlet("/sua")
@MultipartConfig
public class SuaController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		DienThoai dt=  DienThoaiDao.getEmployeeById(id);
		req.setAttribute("dienThoai", dt);
		req.getRequestDispatcher("/views/editProduct.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(req.getParameter("id")) ;
		String thongtinchitiet = req.getParameter("ttChiTiet");
		String name = req.getParameter("name");
		int soluong = Integer.parseInt(req.getParameter("soluong"));
		int gia = Integer.parseInt(req.getParameter("gia"));
		
		DienThoai dt = new DienThoai();
		dt.setName(name);
		dt.setThongtinchitiet(thongtinchitiet);
		dt.setGia(gia);
		dt.setSoluong(soluong);
		dt.setId(id);
		
		InputStream inputStream = null;
		Part filePart = req.getPart("image");
		if (filePart.getSize()!=0) {
			System.out.println(filePart.getSize());
	        inputStream = filePart.getInputStream();
	        DienThoaiDao.update(dt,inputStream);
	    }else {
	    	DienThoaiDao.update(dt);
	    }
		
		req.setAttribute("dienThoai", DienThoaiDao.getEmployeeById(id));
		req.getRequestDispatcher("/views/editProduct.jsp").forward(req, resp);
	}
}
