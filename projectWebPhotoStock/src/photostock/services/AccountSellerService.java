package photostock.services;

import java.util.*;

import photostock.entities.*;

public interface AccountSellerService {
	
	public void create(Seller seller);
	
	public void update(Seller seller);
	
	public Seller login(String username, String password);
	
	public Seller find(int id);
	public List<Seller> findAll();
	public long countSeller();
}
