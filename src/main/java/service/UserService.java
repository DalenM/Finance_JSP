package service;

import model.User;
import dao.UserDAO;


public class UserService {


    public User authenticate(String username, String password) {
        UserDAO ud = new UserDAO();
        return ud.authenticate(username, password);
    }
}
