package photostock.controller.user;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

import photostock.entities.Category;
import photostock.entities.Item;
import photostock.entities.Seller;
import photostock.services.AccountSellerService;
import photostock.services.CategoryService;
import photostock.services.ItemService;

@Controller
@RequestMapping("dashboardSeller")
public class DashboardSellerController {
	/////////////Dashboard seller by Tien//////////////////
	@Autowired
	ServletContext context;
	@Autowired
	private AccountSellerService accountSellerService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ItemService itemService;
	private SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("title", "Dashboard Page");
		return "dashboardSeller.index";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}

	// Profile handling
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile(ModelMap modelMap) {
		modelMap.put("title", "Profile Seller");
		return "dashboardSeller.profile";
	}

	// Setting Profile handling
	@RequestMapping(value = "settingProfile", method = RequestMethod.GET)
	public String settingProfile(ModelMap modelMap, HttpSession session) {
		modelMap.put("title", "Setting Profile Seller");
		modelMap.put("sellerProfile", session.getAttribute("seller"));
		return "dashboardSeller.settingProfile";
	}

	// Submit Setting Profile handling
	@RequestMapping(value = "settingProfile", method = RequestMethod.POST)
	public String settingProfile(@ModelAttribute("sellerProfile") Seller seller, ModelMap modelMap, MultipartFile file,
			HttpSession session) {
		try {
			if (!file.isEmpty()) {
				String path = context.getRealPath("/assets/user/images/avatarAccount") + File.separator
						+ file.getOriginalFilename();
				file.transferTo(new File(path));
				seller.setPhoto(file.getOriginalFilename());
			}
			accountSellerService.update(seller);
			session.setAttribute("seller", accountSellerService.find(seller.getId()));
			return "dashboardSeller.profile";
		} catch (Exception e) {
			modelMap.put("error", "Can't changes profile!");
			return "dashboardSeller.settingProfile";
		}
	}

	// GET Product Table
	@RequestMapping(value = "products/table", method = RequestMethod.GET)
	public String productsTable(ModelMap modelMap, HttpSession session) {
		modelMap.put("categories", categoryService.findAll());
		modelMap.put("itemUpdate", new Item());
		Seller seller = (Seller) session.getAttribute("seller");
		modelMap.put("items", accountSellerService.find(seller.getId()).getItems());
		modelMap.put("title", "Products Table");
		return "dashboardSeller.products.table";
	}

	// GET form page add product
	@RequestMapping(value = "products/add", method = RequestMethod.GET)
	public String productsAdd(ModelMap modelMap) {
		modelMap.put("categories", categoryService.findAll());
		modelMap.put("item", new Item());
		modelMap.put("title", "Products Add");
		return "dashboardSeller.products.add";
	}

	// ERROR add product
	@RequestMapping(value = "products/addError", method = RequestMethod.GET)
	public String productsAddError(ModelMap modelMap) {
		modelMap.put("error", "Cant Add Product");
		modelMap.put("categories", categoryService.findAll());
		modelMap.put("item", new Item());
		modelMap.put("title", "Products Add");
		return "dashboardSeller.products.add";
	}

	// Submit product add
	@RequestMapping(value = "products/add", method = RequestMethod.POST)
	public String productsAdd(MultipartFile file, @ModelAttribute("item") Item item, ModelMap modelMap,
			HttpSession session) {
		try {
			if (!file.isEmpty()) {
				String path = context.getRealPath("/assets/user/images/items") + File.separator
						+ file.getOriginalFilename();
				System.out.println(path);
				file.transferTo(new File(path));
				item.setItemCode(file.getOriginalFilename());
			}
			item.setSeller((Seller) session.getAttribute("seller"));
			itemService.save(item);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "redirect:/dashboardSeller/products/addError.html";
		}
		return "redirect:/dashboardSeller/products/table.html";
	}

	// Delete product
	@RequestMapping(value = "products/delete/{id}", method = RequestMethod.GET)
	public String DeteleProduct(@PathVariable(value = "id") Integer id, ModelMap modelMap) {
		itemService.delete(id);
		modelMap.put("items", itemService.findAll());
		modelMap.put("title", "product table");
		return "redirect:/dashboardSeller/products/table.html";
	}

	// GET Update product page
	// @RequestMapping(value = "products/delete/{id}", method =
	// RequestMethod.GET)
	// public String updateProduct(@PathVariable(value = "id") Integer id,
	// ModelMap modelMap) {
	// Item item = itemService.find(id);
	// modelMap.put("categories", categoryService.findAll());
	// modelMap.put("item", item);
	// //modelMap.put("item", item);
	// modelMap.put("title", "Edit Product");
	// return "dashboardSeller.products.add";
	// }

	@RequestMapping(value = "products/findOne/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Item findOne(@PathVariable(value = "id") Integer id) {
		return itemService.find(id);
	}

	// Submit product edit
	@RequestMapping(value = "products/edit", method = RequestMethod.POST)
	public String productsEdit(MultipartFile file, @ModelAttribute("itemUpdate") Item item, ModelMap modelMap,
			HttpSession session) {
		try {
			if (!file.isEmpty()) {
				String path = context.getRealPath("/assets/user/images/items") + File.separator
						+ file.getOriginalFilename();
				System.out.println(path);
				file.transferTo(new File(path));
				item.setItemCode(file.getOriginalFilename());
			}
			itemService.update(item);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "redirect:/dashboardSeller/products/table.html";
		}
		modelMap.put("success", "add picture success");
		Seller seller = (Seller) session.getAttribute("seller");
		seller = accountSellerService.find(seller.getId());
		session.setAttribute("seller", seller);
		session.setAttribute("items", seller.getItems());
		session.setAttribute("categories", categoryService.findAll());
		return "dashboardSeller.products.table";
	}
}
