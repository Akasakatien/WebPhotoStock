package photostock.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.dao.OrdersDAO;
import photostock.entities.Orders;
@Transactional
@Service("ordersAdminService")
public class OrdersAdminServiceImpl implements OrderAdminService{
	@Autowired
	private OrdersDAO ordersDAO;
	@Override
	public List<Orders> findAll() {
		// TODO Auto-generated method stub
		return ordersDAO.findAll();
	}

	@Override
	public Orders find(int id) {
		// TODO Auto-generated method stub
		return ordersDAO.find(id);
	}

	@Override
	public void create(Orders orders) {
		ordersDAO.create(orders);
		
	}

	@Override
	public void update(Orders orders) {
		ordersDAO.update(orders);
	}

	@Override
	public void delete(Orders orders) {
		ordersDAO.delete(orders);
		
	}

	@Override
	public long countOrders() {
		// TODO Auto-generated method stub
		return ordersDAO.countOrders();
	}

}
