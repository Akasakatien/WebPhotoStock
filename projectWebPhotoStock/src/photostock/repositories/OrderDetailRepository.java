package photostock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import photostock.entities.Ordersdetail;
@Repository("orderDetailRepository")
public interface OrderDetailRepository extends JpaRepository<Ordersdetail, Integer>,OrderDetailRepositoryCustom{

}
