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


@WebServlet("/getitem")
public class GetItemServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id=req.getParameter("itemId");
		int parseId=Integer.parseInt(id);
		
	    ItemDao dao=new ItemDao();
		ItemDto item=dao.getItemById(parseId);
		
		req.setAttribute("myItem",item);
		 RequestDispatcher dispatcher=req.getRequestDispatcher("edit_item.jsp");
		 dispatcher.forward(req, resp);
	}
}
