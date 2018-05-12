package photostock.services;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.dao.*;
import photostock.entities.*;

@Transactional
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Override
	public List<Category> findAll() {
		return categoryDAO.findAll();
	}

	@Override
	public Category find(int id) {
		return categoryDAO.find(id);
	}

	@Override
	public void create(Category category) {
		categoryDAO.create(category);
	}

	@Override
	public void update(Category category) {
		categoryDAO.update(category);
	}

	@Override
	public void delete(Category category) {
		categoryDAO.delete(category);
	}

	@Override
	public long countCategory() {
		return categoryDAO.countCategory();
	}

}
