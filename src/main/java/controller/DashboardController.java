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


@WebServlet(name="dashboard", urlPatterns = "/dashboard")
public class DashboardController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TransactionService ts = new TransactionService();
        String delete = request.getParameter("delete");
        String edit = request.getParameter("edit");

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("UserLoggedIn");

        /*
        if(edit != null) {
            ts.editTransaction(user.getId(), Integer.parseInt(request.getParameter("transaction_id")));
        }
        */

        if(delete != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("delete.jsp");
            dispatcher.forward(request, response);
        }

        ArrayList<Transaction> transactions = (ArrayList<Transaction>) ts.getTransactions(user.getId());
        request.setAttribute("UserTransactions", transactions);





    }

}
