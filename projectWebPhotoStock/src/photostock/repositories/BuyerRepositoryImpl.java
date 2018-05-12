package photostock.repositories;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.transaction.annotation.Transactional;

import photostock.entities.Buyer;

public  class BuyerRepositoryImpl implements BuyerRepositoryCustom {
	@Autowired
	private EntityManager entityManager;

	@Override
	public Buyer findBuyerByUsername(String keyword) {
		
		try {
			
			Query query = entityManager.createNativeQuery("SELECT * FROM Buyer AS b WHERE b.username =:username",Buyer.class)
					.setParameter("username", keyword);
			Buyer buyer = (Buyer) query.getSingleResult();
			if(buyer!=null)return buyer;
			else return null;
		} catch (Exception e) {
			return null;
		}
		
	}

	@Override
	public Buyer loginBuyerByUsername(String username, String password) {
		Query query = entityManager.createNativeQuery("from buyer b where b.username = :username and b.password =:password",Buyer.class)
				.setParameter("username", username).setParameter("password", password);
		return (Buyer) query.getSingleResult();
	}

	@Override
	public Buyer findBuyerByUsernameAndDate(String username, String date) {
try {
			
			Query query = entityManager.createNativeQuery("SELECT * FROM Buyer AS b WHERE b.username = :username AND b.birthday = :date",Buyer.class)
					.setParameter("username", username)
					.setParameter("date", date);
		
			System.out.println("buyer:"+(Buyer) query.getSingleResult());
			return (Buyer) query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}

}
