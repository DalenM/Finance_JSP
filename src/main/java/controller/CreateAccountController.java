package controller;

import model.Transaction;
import model.User;
import service.TransactionService;
import service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name="createAccount", urlPatterns = "/createAccount")
public class CreateAccountController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("createAccount.jsp");
        dispatcher.forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService us = new UserService();
        TransactionService ts = new TransactionService();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("password");
        String accountName = request.getParameter("account_name");
        String email = request.getParameter("email");

        User user = us.createUserAccount(username, password,firstName,lastName,email, accountName);
        HttpSession session = request.getSession();

        if(user != null) {
            ArrayList<Transaction> transactions = (ArrayList<Transaction>) ts.getTransactions(user.getId());
            request.setAttribute("UserTransactions", transactions);
            session.setAttribute("UserLoggedIn", user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
            dispatcher.forward(request, response);

        } else {
            session.setAttribute("accountError", "Account Creation Failed!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("createAccount.jsp");
            dispatcher.forward(request, response);
        }

    }

}
