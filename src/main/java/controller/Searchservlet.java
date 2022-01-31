package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemDao;
import dto.ItemDto;
@WebServlet("/searchitem")
public class Searchservlet extends HttpServlet{
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String name=req.getParameter("Name");
			String type=req.getParameter("type");
			
			ItemDao dao=new ItemDao();
			List<ItemDto> list=dao.getAllItemsByNameAndType(name, type);
			req.setAttribute("Items", list);

			
			RequestDispatcher dispatcher=req.getRequestDispatcher("search_out.jsp");
			dispatcher.forward(req, resp);
		}
}
