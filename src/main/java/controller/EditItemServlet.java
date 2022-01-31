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


@WebServlet("/edititem")
public class EditItemServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ItemDto dto = new ItemDto();
		String id = req.getParameter("itemId");
		String name = req.getParameter("name");
		String quantity = req.getParameter("quantity");
		String cost= req.getParameter("cost");
		String type = req.getParameter("type");

		dto.setId(Integer.parseInt(id));
		dto.setName(name);
	    dto.setQuantity(Integer.parseInt(quantity));
		dto.setCost(Double.parseDouble(cost));
		dto.setType(type);

		ItemDao dao= new ItemDao();
		dao.updateItem(dto);

		PrintWriter printWriter = resp.getWriter();
		printWriter.print("<html><body><h1>Item updated</h1></body></html>");
		RequestDispatcher dispatcher = req.getRequestDispatcher("itemnavbar.jsp");
		dispatcher.include(req, resp);
}
}
