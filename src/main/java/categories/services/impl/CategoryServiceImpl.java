package categories.services.impl;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import categories.repositories.CategoryDao;
import categories.services.CategoryServices;
import entities.Category;

@Service
public class CategoryServiceImpl implements CategoryServices {
	@Autowired
	SessionFactory ssfactory;
	@Autowired
	CategoryDao categoryDao;
	
	@Transactional(readOnly=true)
	public List<Category> test() {
		return categoryDao.getList(ssfactory.getCurrentSession());
	}
	

}
