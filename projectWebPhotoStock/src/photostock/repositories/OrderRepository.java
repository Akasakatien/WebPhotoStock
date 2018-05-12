package photostock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import photostock.entities.Orders;
@Repository("orderRepository")
public interface OrderRepository extends JpaRepository<Orders, Integer>,OrderRepositoryCustom {

}
