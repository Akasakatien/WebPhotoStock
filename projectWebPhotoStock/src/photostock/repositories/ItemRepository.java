package photostock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import photostock.entities.*;
@Repository("itemRepository")
public interface ItemRepository extends JpaRepository<Item, Integer>,ItemRepositoryCustom {

}
