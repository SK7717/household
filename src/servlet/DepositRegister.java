package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountRegisterDAO;
import model.AccountBeans;

@WebServlet("/DepositRegister")
public class DepositRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public DepositRegister() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
		String date = request.getParameter("date");
		String amount = request.getParameter("amount");
		String account = request.getParameter("account");
		String content = request.getParameter("content");
		
		
		// register.jspから受け取った値をビーンズにセット
		AccountBeans ab = new AccountBeans();
		ab.setCategory(category);
		ab.setDate(date);
		ab.setAmount(amount);
		ab.setAccount(account);
		ab.setContent(content);
		
		// アカウントをDBに登録
		AccountRegisterDAO ard = new DepositRegisterDAO(ab);
		
		//セッションにアカウント情報を保存
		HttpSession session = request.getSession();
		session.setAttribute("account",ab);
		
		RequestDispatcher rd = request.getRequestDispatcher("registerSuccess.jsp");
		rd.forward(request, response);
	}
}