package categories.repositories.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import categories.repositories.CategoryDao;
import entities.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {

	@SuppressWarnings("unchecked")
	public List<Category> getList(Session session) {
		String hql = "from Category";
		Query query = session.createQuery(hql);
		List<Category> lst = query.list();
		if (lst != null) {
			return lst;
		} else {
			return new ArrayList<Category>();
		}
	}

}
