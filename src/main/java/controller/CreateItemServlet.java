package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemDao;
import dto.ItemDto;

@WebServlet("/createitem")
public class CreateItemServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ItemDto itemDto = new ItemDto();
		String name = req.getParameter("name");
		String quantity = req.getParameter("quantity");
		String cost = req.getParameter("cost");
		String type = req.getParameter("type");
		
		itemDto.setName(name);
		itemDto.setQuantity(Integer.parseInt(quantity));
		itemDto.setCost(Integer.parseInt(cost));
		itemDto.setType(type);
		
		ItemDao dao = new ItemDao();
		dao.saveItem(itemDto);
		
		PrintWriter pw =resp.getWriter();
		pw.print("<html><body><h1>Item Created</h1></body></html>");
		RequestDispatcher dispatcher = req.getRequestDispatcher("itemnavbar.jsp");
		dispatcher.include(req, resp);
		
		
	}
}