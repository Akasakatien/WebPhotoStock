package photostock.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.entities.*;

public interface BuyerService {
	public Buyer find(String username);	
	public Buyer create(Buyer buyer);
	public Buyer update(Buyer buyer);
	public boolean findViewByUsername(String username,String date);	
}
