package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DepositRegisterDAO;
import model.AccountBeans;
import model.DepositBeans;

@WebServlet("/DepositRegister")
public class DepositRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public DepositRegister() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    HttpSession session = request.getSession();
        AccountBeans ab = (AccountBeans) session.getAttribute("account");

        int userId = ab.getUserId();
		int depValue = Integer.parseInt(request.getParameter("dep_value"));
		String budgetId= request.getParameter("budget_id");
		String assetsId= request.getParameter("assets_id");
		String content = request.getParameter("content");
		
		// register.jspから受け取った値をビーンズにセット
		DepositBeans db = new DepositBeans();
		db.setUserId(userId);
		db.setDep_value(depValue);
		db.setBudget_id(budgetId);
		db.setAssets_id(assetsId);
		db.setContent(content);
		
		// アカウントをDBに登録
		DepositRegisterDAO ard = new DepositRegisterDAO(db);
		
		//セッションにアカウント情報を保存
//		HttpSession session = request.getSession();
//		session.setAttribute("account",ab);
		
		RequestDispatcher rd = request.getRequestDispatcher("jsp/depositSuccess.jsp");
		rd.forward(request, response);
	}
}