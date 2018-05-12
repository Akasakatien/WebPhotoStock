package photostock.dao;

import java.util.*;

import photostock.entities.*;

public interface CategoryDAO {

	public List<Category> findAll();
	
	public Category find(int id);
	
	public void create(Category category);
	
	public void update(Category category);
	
	public void delete(Category category);
	public long countCategory();

	
}
