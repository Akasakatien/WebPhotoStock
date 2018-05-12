package photostock.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.entities.Item;
import photostock.repositories.ItemRepository;
@Service("itemService")
@Transactional
public class ItemServiceImp implements ItemService{
	@Autowired
	ItemRepository itemRepository;
	@Override
	public List<Item> findAll() {
		
		return itemRepository.findAll();
	}
	@Override
	public Item find(int id) {
		try {
			Item item = itemRepository.findOne(id);
			if(item !=null){
				return item;
			}
			return null;
		} catch (Exception e) {
			return null;
		}
		
	}
	@Override
	public Item save(Item item) {
		Item it = itemRepository.save(item);
		if(it!=null)return it;
		else return null;
	}
	@Override
	public Item update(Item item) {
		Item it = itemRepository.save(item);
		if(it!=null)return it;
		else return null;
	}
	
	@Override
	public void delete(Integer id) {
		itemRepository.delete(id);
	}
	@Override
	public List<Item> findItemsBySeller(Integer id) {
		return itemRepository.findItemBySeller(id);
	}
	

}
