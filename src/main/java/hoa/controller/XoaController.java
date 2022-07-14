package hoa.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hoa.DienThoaiDao.DienThoaiDao;

@WebServlet("/xoa")
public class XoaController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id")) ;
		int a = DienThoaiDao.delete(id);
		if(a>=1)
		req.setAttribute("trangthai", true);
		resp.sendRedirect("/ShopDienThoai/trang-chu?page=1");
	}

}
