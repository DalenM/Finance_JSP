package service;

import dao.AccountDAO;
import dao.CategoryDAO;
import dao.TransactionDAO;
import dao.UserDAO;
import model.Transaction;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TransactionService {

    public void createNewTransaction(int userID, String transactionName, String categoryName, double amount, String ei, String desc) {
        TransactionDAO td = new TransactionDAO();
        AccountDAO ad = new AccountDAO();
        CategoryDAO cd = new CategoryDAO();

        int accountID = ad.getAccountID(userID);
        int categoryID = cd.getCategoryID(userID);
        Transaction transaction = new Transaction(-1, userID, accountID, categoryID, transactionName, new BigDecimal(amount), ei, desc, new Date());

        td.createTransaction(transaction);
    }

    public List<Transaction> getTransactions(int userId) {
        TransactionDAO td = new TransactionDAO();
        return td.getUserTransactions(userId);
    }

    /**
    public void editTransaction(int transactionId, int userId) {
        TransactionDAO td = new TransactionDAO();
        Transaction transaction = td.getTransaction(transactionId, userId);
        td.updateTransaction(transactionid);

    }
     */

    public void deleteTransaction(int transactionId, int userId) {
        TransactionDAO td = new TransactionDAO();
        td.deleteTransaction(transactionId, userId);
    }
}
