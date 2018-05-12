package photostock.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import photostock.services.*;
@Controller
@RequestMapping("/admin/buyer**")
public class BuyerController {
	@Autowired
	private AccountAdminService accountAdminService  ;
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("buyers", accountAdminService.findAllBuyerByRoleName("ROLE_EMPLOYEE"));
		return "admin.buyer.index";
	}

}
