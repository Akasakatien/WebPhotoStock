package photostock.repositories;

import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;

import photostock.entities.Buyer;
import photostock.entities.Item;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

public class ItemRepositoryImp implements ItemRepositoryCustom {
	@Autowired
	private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	@Override
	public List<Item> findItemBySeller(Integer id) {
		List<Item> items = new ArrayList<Item>();
		try {

			Query query = entityManager.createQuery("SELECT * FROM Item i WHERE i.seller_pk =:id")
					.setParameter("id", id);
			items = (List<Item>)query.getResultList();
		} catch (Exception e) {
			items = null;
		}
		return items;
	}

}
