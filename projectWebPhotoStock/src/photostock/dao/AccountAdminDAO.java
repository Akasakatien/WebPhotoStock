package photostock.dao;

import java.util.List;

import photostock.entities.Buyer;

public interface AccountAdminDAO {
	public List<Buyer> findAll();
	
	public Buyer find(int id);
	
	public void create(Buyer buyer);
	
	public void update(Buyer buyer);
	
	public void delete(Buyer buyer);
	public Buyer findViewByUsername(String username);
	
	public long countBuyer();
	public List<Buyer> findAllBuyerByRoleName(String name);

}
