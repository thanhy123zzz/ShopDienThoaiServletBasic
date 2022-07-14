package hoa.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hoa.DienThoaiDao.DienThoaiDao;
import hoa.Enity.DienThoai;

@WebServlet("/tim-kiem")
public class find extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String key = req.getParameter("find");
		List<DienThoai> dts = DienThoaiDao.find(key);
		if(dts.size()!=0) {
		req.setAttribute("dienThoais", dts);
		}
		else {
			req.setAttribute("ThongBao", "Không tìm thấy sản phẩm nào!");
		}
		req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
	}
}
