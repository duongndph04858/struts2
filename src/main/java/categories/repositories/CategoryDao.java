package categories.repositories;

import java.util.List;

import org.hibernate.Session;

import entities.Category;

public interface CategoryDao {
 List<Category> getList(Session session);
}
