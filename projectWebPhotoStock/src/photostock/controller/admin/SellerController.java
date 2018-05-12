package photostock.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import photostock.services.AccountSellerService;
import photostock.services.OrdersService;

@Controller
@RequestMapping("/admin/seller**")
public class SellerController {
	@Autowired
	private AccountSellerService  accountSellerService;
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("sellers", accountSellerService.findAll());
		return "admin.seller.index";
	}

}
