package photostock.services;

import java.util.List;

import photostock.entities.Orders;

public interface OrderAdminService {
	public List<Orders> findAll();
	
	public Orders find(int id);
	
	public void create(Orders orders);
	
	public void update(Orders orders);
	
	public void delete(Orders orders);
	
	public long countOrders();

}
