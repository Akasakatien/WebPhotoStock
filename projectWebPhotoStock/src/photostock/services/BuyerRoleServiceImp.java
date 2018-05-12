package photostock.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.entities.BuyerRole;
import photostock.repositories.BuyerRoleRepository;

@Service("buyerRoleServiceImp")
@Transactional
public class BuyerRoleServiceImp implements BuyerRoleService {

	@Autowired
	BuyerRoleRepository buyerRoleRepository;
	@Override
	public boolean createBuyerRole(BuyerRole buyerRole) {
		if(buyerRoleRepository.save(buyerRole)!=null)return true;
		else return false;
	}

}
