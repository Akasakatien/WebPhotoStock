package photostock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import photostock.entities.Buyer;


@Repository("buyerRepository")
public interface BuyerRepository extends JpaRepository<Buyer, Integer>,BuyerRepositoryCustom{

	 
}
