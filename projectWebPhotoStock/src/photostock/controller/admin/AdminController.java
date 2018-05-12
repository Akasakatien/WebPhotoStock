package photostock.controller.admin;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import photostock.entities.Buyer;
import photostock.entities.Category;
import photostock.services.AccountAdminService;
import photostock.services.AccountSellerService;
import photostock.services.CategoryService;
import photostock.services.OrderAdminService;
import photostock.services.OrdersService;
import photostock.validators.BuyerValidator;
import photostock.validators.CategoryValidator;

@Controller
@RequestMapping("/admin**")
public class AdminController {
	@Autowired 
	private CategoryService categoryService;
	@Autowired
	private AccountSellerService accountSellerService;
	@Autowired
	private AccountAdminService accountAdminService;
	@Autowired
	private OrderAdminService orderAdminService;

	
	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public String welcome(ModelMap modelMap) {
		modelMap.put("countCategory", categoryService.countCategory());
		modelMap.put("countSeller", accountSellerService.countSeller());
		modelMap.put("countBuyer", accountAdminService.countBuyer());
		modelMap.put("countOrders", orderAdminService.countOrders());
		return "admin.welcome";
	}
	
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile (@RequestParam(value = "us",required=false)String us, ModelMap modelMap){
/*		modelMap.put("accountAdmin", accountAdminService.findViewByUsername(us));
*/		Buyer buyer = accountAdminService.findViewByUsername(us);

		modelMap.put("accountAdmin", buyer);
		return "admin.profile";
	}
	
	@RequestMapping(value = "profile", method = RequestMethod.POST)
	public String profile (@ModelAttribute("buyer") @Valid Buyer buyer, 
			BindingResult bindingResult,
			ModelMap modelMap){
		BuyerValidator buyerValidator = new BuyerValidator();
		buyerValidator.validate(buyer, bindingResult);
		if (bindingResult.hasErrors()) {
			return "admin.category.edit";
		} else {
			accountAdminService.update(buyer);
			return "redirect:../profile.html";
		}
	}
	
}
