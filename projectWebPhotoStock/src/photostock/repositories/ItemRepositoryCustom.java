package photostock.repositories;

import java.util.List;

import org.springframework.stereotype.Repository;

import photostock.entities.Item;
@Repository
public interface ItemRepositoryCustom {
	List<Item> findItemBySeller(Integer id);
}
