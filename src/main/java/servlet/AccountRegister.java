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

@WebServlet("/AccountRegister")
public class AccountRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public AccountRegister() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		
		// register.jspから受け取った値をビーンズにセット
		AccountBeans ab = new AccountBeans();
		ab.setAddress(address);
		ab.setPassword(password);
		
		// アカウントをDBに登録
		AccountRegisterDAO ard = new AccountRegisterDAO(ab);
		
		//セッションにアカウント情報を保存
		HttpSession session = request.getSession();
		session.setAttribute("account",ab);
		
		RequestDispatcher rd = request.getRequestDispatcher("jsp/registerSuccess.jsp");
		rd.forward(request, response);
	}
}