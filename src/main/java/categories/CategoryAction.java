package categories;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import com.opensymphony.xwork2.ActionSupport;
import categories.services.CategoryServices;
import entities.Category;

public class CategoryAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	CategoryServices categoryServices;
	private List<Category> category;

	@Action(value = "/categoryInput", results = {
			@Result(name = "success", location = "/WEB-INF/views/admin/index.jsp") })
	public String execute() throws Exception {
		category = categoryServices.test();
		System.out.println("++========================================" + category.get(0).getName());
		return "success";
	}

	/**
	 * @return the category
	 */
	public List<Category> getCategory() {
		return category;
	}

	/**
	 * @param category the category to set
	 */
	public void setCategory(List<Category> category) {
		this.category = category;
	}

}
