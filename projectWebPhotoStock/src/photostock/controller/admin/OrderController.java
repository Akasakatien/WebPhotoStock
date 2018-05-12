package photostock.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import photostock.services.OrderAdminService;

@Controller
@RequestMapping("/admin/orders**")
public class OrderController {
	@Autowired
	private OrderAdminService orderAdminService ;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("orders", orderAdminService.findAll());
		return "admin.order.index";
	}

}
