package photostock.services;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.dao.*;
import photostock.entities.*;

@Transactional
@Service("accountSellerService")
public class AccountSellerServiceImpl implements AccountSellerService {

	@Autowired
	private AccountSellerDAO accountSellerDAO;

	@Override
	public void create(Seller seller) {
		accountSellerDAO.create(seller);
	}

	@Override
	public void update(Seller seller) {
		accountSellerDAO.update(seller);
	}

	@Override
	public Seller login(String username, String password) {
		return accountSellerDAO.login(username, password);
	}
	
	@Override
	public Seller find(int id) {
		
		return accountSellerDAO.find(id);
	}

	@Override
	public List<Seller> findAll() {
		
		return accountSellerDAO.findAll();
	}

	@Override
	public long countSeller() {
		// TODO Auto-generated method stub
		return accountSellerDAO.countSeller();
	}
}
