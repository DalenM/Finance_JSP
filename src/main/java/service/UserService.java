package service;

import dao.AccountDAO;
import model.Account;
import model.User;
import dao.UserDAO;


public class UserService {


    public User authenticate(String username, String password) {
        UserDAO ud = new UserDAO();
        return ud.authenticate(username, password);
    }

    public User createUserAccount(String username, String password, String firstname, String lastname, String email, String accountName) {
        UserDAO ud = new UserDAO();
        AccountDAO ad = new AccountDAO();
        int userID = ud.createUser(username, password, firstname, lastname, email);

        Account account = new Account(-1, userID, accountName);
        ad.createAccount(account);

        return ud.authenticate(username, password);
    }

    public void deleteAccount(User user) {
        UserDAO ud = new UserDAO();
        ud.deleteAccount(user.getId());
    }

}
