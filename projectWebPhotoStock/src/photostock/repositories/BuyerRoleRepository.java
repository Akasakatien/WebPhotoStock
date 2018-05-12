package photostock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import photostock.entities.BuyerRole;
@Repository("buyerRoleRepository")
public interface BuyerRoleRepository extends JpaRepository<BuyerRole, Integer>,BuyerRoleRepositoryCustom{

}
