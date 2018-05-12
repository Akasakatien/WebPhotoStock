package photostock.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.dao.AccountAdminDAO;
import photostock.entities.Buyer;
@Transactional
@Service("accountAdminService")
public class AccountAdminServiceImpl implements AccountAdminService{
	@Autowired
	private AccountAdminDAO accountAdminDAO;
	@Override
	public List<Buyer> findAll() {
		
		return accountAdminDAO.findAll();
	}

	@Override
	public Buyer find(int id) {
		// TODO Auto-generated method stub
		return accountAdminDAO.find(id);
	}

	@Override
	public void create(Buyer buyer) {
		accountAdminDAO.create(buyer);
		
	}

	@Override
	public void update(Buyer buyer) {
		accountAdminDAO.create(buyer);
		
	}

	@Override
	public void delete(Buyer buyer) {
		accountAdminDAO.delete(buyer);
		
	}

	@Override
	public long countBuyer() {
		return accountAdminDAO.countBuyer();
	}

	@Override
	public Buyer findViewByUsername(String username) {
		return accountAdminDAO.findViewByUsername(username);
	}

	@Override
	public List<Buyer> findAllBuyerByRoleName(String name) {
		
		return accountAdminDAO.findAllBuyerByRoleName(name);
	}

}
