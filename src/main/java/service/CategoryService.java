package service;

import dao.CategoryDAO;
import model.Category;

public class CategoryService {

    public void createNewCategory(int userID, String category) {
        CategoryDAO cd = new CategoryDAO();
        Category cat = new Category(-1, userID, category);
        cd.createCategory(cat);
    }
}
