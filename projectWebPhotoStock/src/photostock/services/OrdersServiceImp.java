package photostock.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.entities.Orders;
import photostock.repositories.OrderRepository;

@Service("ordersService")
@Transactional
public class OrdersServiceImp implements OrdersService {
	@Autowired
	OrderRepository orderRepository;
	
	@Override
	public Orders createOrderByObject(Orders orders) {
		try {
			Orders odr = orderRepository.save(orders);
			if(odr!=null)return odr;
			else return null;
		} catch (Exception e) {
			return null;
		}
		
	}

}
