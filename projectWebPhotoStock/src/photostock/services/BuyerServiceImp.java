package photostock.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.entities.Buyer;
import photostock.repositories.BuyerRepository;
import photostock.repositories.BuyerRepositoryCustom;

@Service("buyerService")
@Transactional
public class BuyerServiceImp implements BuyerService {

	@Autowired 
	private BuyerRepository buyerRepository;
	
	@Override
	public Buyer find(String username) {
		Buyer be = buyerRepository.findBuyerByUsername(username);
		if(be !=null){
			return be;
		}
		return null;
	}

	@Override
	public Buyer create(Buyer buyer) {
		Buyer be = buyerRepository.findBuyerByUsername(buyer.getUsername());
//		System.out.println(((Buyer) buyerRepository.findAll()).size());
		if(be==null){
			buyerRepository.save(buyer);
			return buyerRepository.save(buyer);
		}
		return null;
		
	}

	@Override
	public Buyer update(Buyer buyer) {
		try {
		Buyer br= buyerRepository.save(buyer);
			if(br!=null)return br;
			else return null;
		} catch (Exception e) {
			return null;
		}

	}

	@Override
	public boolean findViewByUsername(String username,String date) {
		Buyer be = buyerRepository.findBuyerByUsernameAndDate(username, date);
		if(be != null){
			return true;
		}
		return false;
	}


}
