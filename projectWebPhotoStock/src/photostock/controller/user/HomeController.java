package photostock.controller.user;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import photostock.entities.Buyer;
import photostock.entities.Item;
import photostock.helper.BuyerHelperLogin;
import photostock.services.CategoryService;
import photostock.services.ItemService;


@Controller
@RequestMapping("home**")
public class HomeController {

	
	@Autowired
	private CategoryService categoryService;	
	
	@Autowired
	private ItemService itemService;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap,HttpSession httpSession) {	
		if(httpSession.getAttribute("itemSession")!=null){
			httpSession.removeAttribute("itemSession");	
		}			
		modelMap.put("title", "Home");
		modelMap.addAttribute("categories", categoryService.findAll());
		modelMap.addAttribute("items", itemService.findAll());
		modelMap.addAttribute("BuyerHelperLogin", new BuyerHelperLogin());
//		modelMap.put("item", itemService.findAll());
		return "home.index";
	}
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String home(ModelMap modelMap,HttpSession httpSession) {	
		if(httpSession.getAttribute("itemSession")!=null){
			httpSession.removeAttribute("itemSession");	
		}
			
		modelMap.put("title", "Home");
		modelMap.addAttribute("categories", categoryService.findAll());
		modelMap.addAttribute("items", itemService.findAll());
//		modelMap.put("item", itemService.findAll());
		return "home.index";
	}
}
