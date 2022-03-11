package web.cepp.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import web.cepp.Model.Customer;
import web.cepp.Model.UserInfo;
import web.cepp.Dao.UserInfoDao;
import web.cepp.Dao.customerDao;

import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class CustomerServlet
 */
@WebServlet("/CustomerServlet")
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	private customerDao CustomerDao = new customerDao();
	/**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<Customer> CustomerList = customerDao.getQuery();

		//request.setAttribute("message", "Hi Tani! You are not a good girl.");
		request.setAttribute("CustomerList", CustomerList);
		request.getRequestDispatcher("/Customer_Index.jsp").forward(request, response);
        
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		String Name = request.getParameter("name");
		String Address = request.getParameter("address");
		int Phone = Integer.parseInt(request.getParameter("phone"));
		int Plumber = Integer.parseInt(request.getParameter("plumber"));
		int Carpentar = Integer.parseInt(request.getParameter("carpentar"));
		int Painter = Integer.parseInt(request.getParameter("painter"));
        int Electrician = Integer.parseInt(request.getParameter("electrician"));
        
		/*
		 * Customer customer = new Customer(); // customer.setid(id);
		 * customer.setName(Name); customer.setAddress(Address);
		 * customer.setPhone(Phone); customer.setPlumber(Plumber);
		 * customer.setCarpentar(Carpentar); customer.setPainter(Painter);
		 * customer.setElectrician(Electrician);
		 * 
		 * try { customerDao.customerList(customer); }catch (ClassNotFoundException e) {
		 * e.printStackTrace(); }
		 * 
		 * response.sendRedirect("");
		 */
        
        customerDao.insertQuery(id, Name, Address, Phone, Plumber, Carpentar, Painter, Electrician);
		doGet(request, response);
        
	}
}
