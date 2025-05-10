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


@WebServlet(name="deleteTransaction", urlPatterns = "/deleteTransaction")
public class DeleteTransactionController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TransactionService ts = new TransactionService();
        String delete = request.getParameter("transaction_id");

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("UserLoggedIn");

        try {
            ts.deleteTransaction(user.getId(), Integer.parseInt(delete));

            ArrayList<Transaction> transactions = (ArrayList<Transaction>) ts.getTransactions(user.getId());
            request.setAttribute("UserTransactions", transactions);

            RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
            dispatcher.forward(request, response);
        }catch(Exception e) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
            dispatcher.forward(request, response);
        }


    }

}
