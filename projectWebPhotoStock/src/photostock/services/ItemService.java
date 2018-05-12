package photostock.services;

import java.util.List;

import photostock.entities.Item;

public interface ItemService {
	public List<Item> findAll();
	public Item find(int id);
	public Item save(Item item);
	public Item update(Item item);
	public void delete(Integer id);
	public List<Item> findItemsBySeller(Integer id);
}
