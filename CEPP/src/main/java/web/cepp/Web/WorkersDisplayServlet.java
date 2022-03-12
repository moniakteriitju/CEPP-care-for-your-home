package web.cepp.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import web.cepp.Dao.UserInfoDao;
import web.cepp.Dao.workersDisplayDao;
import web.cepp.Model.UserInfo;
import web.cepp.Model.WorkersDisplayMod;

import java.io.IOException;

import java.util.List;

/**
 * Servlet implementation class UserInfoServlet
 */
public class WorkersDisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkersDisplayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<WorkersDisplayMod> workerList = workersDisplayDao.getQuery();
		
		List<WorkersDisplayMod> workerList2 = workersDisplayDao.getQuery2();
		
		List<WorkersDisplayMod> workerList3 = workersDisplayDao.getQuery3();
		
		List<WorkersDisplayMod> workerList4 = workersDisplayDao.getQuery4();
	

		request.setAttribute("workerList", workerList);
		request.setAttribute("workerList2", workerList2);
		request.setAttribute("workerList3", workerList3);
		request.setAttribute("workerList4", workerList4);
		
		
		
        request.getRequestDispatcher("/templates/workers.jsp").forward(request, response);
        

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

}
