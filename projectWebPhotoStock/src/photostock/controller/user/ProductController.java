package photostock.controller.user;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import photostock.entities.Buyer;
import photostock.entities.Item;
import photostock.entities.Seller;
import photostock.services.AccountSellerService;
import photostock.services.BuyerService;
import photostock.services.ItemService;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	private ItemService itemService;
	@Autowired
	private BuyerService buyerService;
	@Autowired
	private AccountSellerService accountSellerService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(@RequestParam(value = "idItm", required = false) String id,
			@RequestParam(value = "us", required = false) String us,
			ModelMap modelMap,HttpSession httpSession) {
		int idItem = Integer.parseInt(id);
		Item item = itemService.find(idItem);	
		Seller seller = accountSellerService.find(item.getSeller().getId());
		if(us!=null){
			Buyer buyer = buyerService.find(us);
			if(buyer !=null){
				httpSession.setAttribute("buyerSession", buyer);
				modelMap.put("buyer", buyer);
			}
		 }
//		httpSession.setAttribute("itemSession", item);
		modelMap.addAttribute("seller", seller);
		modelMap.addAttribute("item", item);
		modelMap.put("title", "tea");
		return "product.tea";
	}
}
