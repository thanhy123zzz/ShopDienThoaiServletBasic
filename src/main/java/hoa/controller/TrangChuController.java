package hoa.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hoa.DienThoaiDao.*;
import hoa.Enity.DienThoai;

@WebServlet(urlPatterns = {"/trang-chu"})  
public class TrangChuController extends HttpServlet{

	private static final long serialVersionUID = -7874877278480243925L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
            throws ServletException, IOException {  
	List<DienThoai> dts = DienThoaiDao.getAllEmployees();
	double size = (double) dts.size()/6;
	String spageid=request.getParameter("page");
	 int pageid=Integer.parseInt(spageid);  
	 int total=6;    
     if(pageid==1){}    
     else{    
         pageid=(pageid-1)*total+1;    
     }    
     List<DienThoai> dtslimit = DienThoaiDao.getAllEmployeeLimit(pageid, total);
     RequestDispatcher rd = request.getRequestDispatcher("/views/index.jsp");
     request.setAttribute("dienThoais", dtslimit);
     request.setAttribute("size", (int) Math.ceil(size));
     rd.forward(request, response);
 }
}
