package photostock.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.entities.Ordersdetail;
import photostock.repositories.OrderDetailRepository;
@Service("ordersDetailService")
@Transactional
public class OrdersDetailServiceImp implements OrdersDetailService {

	@Autowired
	private OrderDetailRepository orderDetailRepository;
	@Override
	public boolean creatOrderDetail(Ordersdetail ordersdetail) {
		try {
			Ordersdetail orde = orderDetailRepository.save(ordersdetail);
			if(orde!=null)return true;
			else return true;
		} catch (Exception e) {
			return false;
		}
		
	}

}
