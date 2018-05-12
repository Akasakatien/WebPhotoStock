package photostock.services;

import java.util.List;

import photostock.entities.Buyer;

public interface AccountAdminService {
	public List<Buyer> findAll();
	
	public Buyer find(int id);
	
	public void create(Buyer buyer);
	
	public void update(Buyer buyer);
	
	public void delete(Buyer buyer);
	
	public long countBuyer();
	public Buyer findViewByUsername(String username);
	public List<Buyer> findAllBuyerByRoleName(String name);


}
