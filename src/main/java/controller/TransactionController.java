package controller;

import com.mysql.cj.Session;
import model.Transaction;
import model.User;
import service.TransactionService;
import service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;


@WebServlet(name="transaction", urlPatterns = "/transaction")
public class TransactionController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("createTransaction.jsp");
        dispatcher.forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TransactionService ts = new TransactionService();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("UserLoggedIn");
        int userID = user.getId();

        String transactionName = request.getParameter("transaction_name");
        String categoryName = request.getParameter("cat_name");
        double amount = Double.parseDouble(request.getParameter("amount"));
        String expenseOrIncome = request.getParameter("enum");
        String desc = request.getParameter("description");

        ts.createNewTransaction(userID, transactionName, categoryName, amount, expenseOrIncome, desc);
        ArrayList<Transaction> transactions = (ArrayList<Transaction>) ts.getTransactions(user.getId());
        request.setAttribute("UserTransactions", transactions);

        RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
        dispatcher.forward(request, response);
    }
}
