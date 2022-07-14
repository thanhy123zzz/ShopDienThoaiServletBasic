package hoa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hoa.DienThoaiDao.DienThoaiDao;

@WebServlet("/trang-chu/thong-tin")
public class ThongTinController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		req.setAttribute("dienThoai", DienThoaiDao.getEmployeeById(id));
		RequestDispatcher rd = req.getRequestDispatcher("/views/product.jsp");
		rd.forward(req, resp);
	}
}
