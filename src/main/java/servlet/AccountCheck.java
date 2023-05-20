package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DepositDAO;
import model.AccountBeans;
import model.DepositBeans;

/**
 * Servlet implementation class AccountCheck
 */
@WebServlet("/AccountCheck")
public class AccountCheck extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        // セッションからログイン情報を取得
        HttpSession session = request.getSession();
        AccountBeans ab = (AccountBeans) session.getAttribute("account");

               
        // ロールでフォワード先を振り分ける (未使用)
        if(ab.getRole() == 1) {
            RequestDispatcher rd = request.getRequestDispatcher("jsp/admin.jsp");
            rd.forward(request, response);
        } else if(ab.getRole() == 2) {
            RequestDispatcher rd = request.getRequestDispatcher("jsp/user.jsp");
            rd.forward(request, response);
            //
        } else {
        	
    		DepositDAO ard = new DepositDAO();
    		List<DepositBeans> DepositList = ard.findDeposit(ab);

    		int init = 0;
    		
    		for(DepositBeans value : DepositList) {
    			value.getDep_sum();
    			if (init < value.getDep_sum()) {
    				init = value.getDep_sum();    				
    			}
    	    }
    		request.setAttribute("total", init);
        	request.setAttribute("temp", DepositList);
    	        		
//            RequestDispatcher rd = request.getRequestDispatcher("jsp/deposit.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("jsp/top.jsp");
            rd.forward(request, response);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
