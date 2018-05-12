package photostock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.*;

import photostock.entities.Buyer;

@Repository
public interface BuyerRepositoryCustom {
	//quy tắc đặc tên [action]+[returnType]+By+[keyword]
	Buyer findBuyerByUsername(String keyword);
	
	Buyer loginBuyerByUsername(String username,String password); 
	
	Buyer findBuyerByUsernameAndDate(String username,String date);
	
	
}
