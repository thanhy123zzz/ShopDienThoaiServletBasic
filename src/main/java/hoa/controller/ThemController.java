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

@WebServlet("/trang-chu/them")
@MultipartConfig
public class ThemController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/them.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String thongtinchitiet = req.getParameter("ttChiTiet");
		String name = req.getParameter("name");
		int soluong = Integer.parseInt(req.getParameter("soluong"));
		int gia = Integer.parseInt(req.getParameter("gia"));
		
		DienThoai dt = new DienThoai();
		dt.setName(name);
		dt.setThongtinchitiet(thongtinchitiet);
		dt.setGia(gia);
		dt.setSoluong(soluong);
		
		InputStream inputStream = null;
		Part filePart = req.getPart("image");
		if (filePart != null) {
	        inputStream = filePart.getInputStream();
	    }
		DienThoaiDao.save(dt, inputStream);
		req.setAttribute("trangthai", true);
		req.getRequestDispatcher("/views/them.jsp").forward(req, resp);
	}
}
