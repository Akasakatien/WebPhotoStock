package photostock.controller.user;


import java.util.Calendar;
import java.util.Date;

import java.io.*;

import javax.servlet.ServletContext;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import photostock.entities.*;
import photostock.helper.BuyerHelper;
import photostock.services.*;
import photostock.configuration.JavaMailConfig;

@Controller
@RequestMapping("/account")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
		maxFileSize = 1024 * 1024 * 50, // 50 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
	)
public class AccountController {
	
	@Autowired
	private MembershipService membershipService;
	@Autowired
	private AccountSellerService accountSellerService;
	@Autowired
	private TransactionService transactionService;
	@Autowired
	ServletContext context;
	@Autowired
	private BuyerService buyerService;
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private BuyerRoleService buyerRoleService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private OrdersDetailService ordersDetailService;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private JavaMailConfig javaMailConfig; 
	
	Date date = new Date();
	Date endDate = new Date();
	Calendar calendar = Calendar.getInstance();
	private Membership membership;
//	private String path;
//	private File destinationFile;
	
	
	@RequestMapping(value = "buyerLogin", method = RequestMethod.GET)
	public String loginBuyer(ModelMap modelMap) {	
		modelMap.put("title", "Login");
		return "account.loginBuyer";
	}
	@RequestMapping(value = "sellerLogin", method = RequestMethod.GET)
	public String loginSeller(ModelMap modelMap) {	
		modelMap.put("title", "Login");
		return "account.loginSeller";
	}
	
	@RequestMapping(value = "sellerLogin", method = RequestMethod.POST)
	public String loginSeller(HttpServletRequest request, ModelMap modelMap, HttpSession session) {	
		modelMap.put("title", "Login Seller");
		try {
			Seller seller = this.accountSellerService.login(request.getParameter("username"), request.getParameter("password"));
			if(seller != null){
				session.setAttribute("seller", seller);
				return "redirect:/home.html";
			}else {
				modelMap.put("error", "Account's Invalid");
				return "account.loginSeller";
			}	
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "redirect:/home.html";
		}		
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {	
		session.removeAttribute("seller");
		return "redirect:/home.html";
	}
	
	@InitBinder
    public void initBinder(WebDataBinder binder){
        binder.registerCustomEditor(Date.class,new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"),true));
    }
	
	@RequestMapping(value = "registerToSale", method = RequestMethod.GET)
	public String registerToSale(ModelMap modelMap) {
		modelMap.put("packages", membershipService.findAll());
		modelMap.put("title", "Register to Sale");
		return "account.registerToSale";
	}
	
	@RequestMapping(value = "registerToSale/detail/{idMembership}", method = RequestMethod.GET)
	public String detailRegisterToSale(
					@PathVariable("idMembership") Integer idMembership, 
					HttpSession session, 
					ModelMap modelMap) {
		membership = membershipService.find(idMembership);
		session.setAttribute("sessionMembershipPackage", membership);
		
		modelMap.put("title", "Detail register to Sale");
		modelMap.put("action", "registerSeller");
		modelMap.put("seller", new Seller());
		return "account.registerToSale.detail";	
	}
	
	
	//Form 1
	@RequestMapping(value = "registerToSale/detail", method = RequestMethod.POST)
	public String detailRegisterToSale(			
					@ModelAttribute("seller") Seller seller,
					HttpSession session,
					MultipartFile file,
					ModelMap modelMap,	
					@RequestParam(value="confirm", required=false) String confirm) {
		try {
			if(confirm.equals("1")){
				modelMap.put("membershipPackage", session.getAttribute("sessionMembershipPackage"));
				modelMap.put("sellerConfirm", seller);
				if(!file.isEmpty()){
					String path = context.getRealPath("/assets/user/images/avatarAccount") + File.separator + file.getOriginalFilename();
					file.transferTo(new File(path));
					//session.setAttribute("file", file);
				}	
				seller.setJoinDate(new Date());
				seller.setEnabled(false);
				seller.setPhoto(file.getOriginalFilename());
				session.setAttribute("seller", seller);		
			}
			return "account.registerToSale.detail";
		} catch (Exception e) {
			confirm.isEmpty();
			modelMap.put("error", "can't register this account");	
			return "account.registerToSale.detail";
		}
	}
	
	//Form 2
	@RequestMapping(value = "registerToSale/detail/confirmSeller", method = RequestMethod.POST)
	public String detailRegisterToSaleConfirm(
					HttpSession session,
					ModelMap modelMap) {		
		try {
			modelMap.put("membershipPackage", session.getAttribute("sessionMembershipPackage"));
			accountSellerService.create((Seller)session.getAttribute("seller"));		
			return "account.registerToSale.detail.acitveAccountSeller";
		} catch (Exception e) {
			modelMap.put("error", "can't register this account");
			return "account.registerToSale.detail";
		}
	}
	
	@RequestMapping(value = "registerToSale/detail/acitveAccountSeller", method = RequestMethod.GET)
	public String acitveAccountSeller(
					ModelMap modelMap) {
		modelMap.put("title", "Active Account Seller");
		return "account.registerToSale.detail.activeAccountSeller";	
	}
	
	@RequestMapping(value = "registerToSale/successActiveSeller", method = RequestMethod.GET)
	public String successActiveSeller(
					HttpSession session,
					ModelMap modelMap) {
		modelMap.put("title", "Success Active Account Seller");
		Transaction transaction = new Transaction();
		Seller seller = (Seller) session.getAttribute("seller");
		seller.setEnabled(true);
		accountSellerService.update(seller);
		
		transaction.setSeller(seller);
		transaction.setMembership(membership);
		calendar.setTime(date);
		calendar.add(Calendar.MONTH, 1);
		endDate = calendar.getTime();
		transaction.setEndDt(endDate);
		transactionService.create(transaction);
		return "account.registerToSale.successActiveSeller";	
	}
	
	
	//Cua Trong==============================================
	
	@RequestMapping(value="/success",method=RequestMethod.GET)
	public String success(ModelMap modelMap,HttpSession httpSession){
		modelMap.addAttribute("title", "You have Been Buyer Item!  ");
		modelMap.addAttribute("thank", "Thank you for using our website");		
		Item item = (Item) httpSession.getAttribute("itemSession");
		Buyer buyer = (Buyer)httpSession.getAttribute("buyerSession");
		
		Orders orders = new Orders();
		orders.setBuyer(buyer);
		orders.setName("Orders by "+buyer.getLastName());
		orders.setDatecreation(new Date());
		orders.setStatus(true);
		Ordersdetail ordersdetail = new Ordersdetail();
		OrdersdetailId id =new OrdersdetailId();
		Orders resutl=	ordersService.createOrderByObject(orders);	
		
		id.setItemPk(item.getId());
		id.setOrdersPk(resutl.getId());
		
		ordersdetail.setOrders(resutl);
		ordersdetail.setItem(item);
		ordersdetail.setQuantity(1);
		ordersdetail.setPrice(item.getItemPrice());
		ordersdetail.setId(id);
		boolean bl = ordersDetailService.creatOrderDetail(ordersdetail);
		javaMailConfig.sendEmailDownload(buyer.getUsername(), "DownloadFile", item.getItemCode());
		return "account.success";
	}
	@RequestMapping(value="/forgotPass",method=RequestMethod.GET)
	public String getForgotPass(ModelMap modelMap){
		modelMap.put("buyerHelper", new BuyerHelper());
		return "account.forgotPass";
	}
	@RequestMapping(value="/profile",method=RequestMethod.GET)
	public String getProfile(@RequestParam(value = "us", required = false) String us,ModelMap modelMap){
	
		if(us !=null){
			Buyer buyer = buyerService.find(us);			
			if(buyer !=null){
//				buyer.setPassword();
				modelMap.put("buyer", buyer);
				return "account.profile";

			}
	}		
		return "account.login";
	}
	
	//edit
	@RequestMapping(value="/editProfile",method=RequestMethod.POST)
	public String editProfile(@ModelAttribute("buyer") Buyer buyer,ModelMap modelMap,MultipartFile file){	
		
		System.out.println(buyer);
		try {
			if(!file.isEmpty()){
				String path = context.getRealPath("/assets/user/images/avatarAccount") + File.separator + file.getOriginalFilename();
				file.transferTo(new File(path));
				//session.setAttribute("file", file);
				buyer.setPhoto(file.getOriginalFilename());
			}	
			
			modelMap.addAttribute("buyer", buyerService.update(buyer));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "home.index";
	}
	@RequestMapping(value="/doForgotPass",method=RequestMethod.POST)
	public String doForgotPass(@ModelAttribute("buyerHelper") BuyerHelper buyerHelper,ModelMap modelMap ){
		if(buyerService.findViewByUsername(buyerHelper.getUsername(), buyerHelper.getBirthday())){
			javaMailConfig.sendEmail(buyerHelper.getUsername(), "Forgot Password", buyerHelper.getUsername());
			modelMap.put("result", "let's check your mail");
		}else{
			modelMap.put("result", "Account not exists");			
		}
		
		return "account.forgotPass";
	}
	@RequestMapping(value="/doGetPass",method=RequestMethod.GET)
	public String doGetPass(@RequestParam(value = "us", required = false) String us,ModelMap modelMap){	
		if(us !=null){
			Buyer buyer = buyerService.find(us);			
			if(buyer !=null){
				modelMap.put("buyer", buyer);
				return "account.doGetPass";
			}else{
				return "account.registerToBuy";
			}
		}
		return "account.doGetPass";
	}
	@RequestMapping(value="/doChangePass",method=RequestMethod.POST)
	public String doChangePass(@ModelAttribute("buyer") Buyer buyer){	
		Buyer br = buyerService.find(buyer.getUsername());
		if(br!=null){
			br.setPassword(passwordEncoder.encode(buyer.getPassword()));
			buyerService.update(br);
		}
		
		return "account.login";
	}
	
	@RequestMapping(value = "/registerToBuy", method = RequestMethod.GET)
	public String registerToBuy(ModelMap modelMap) {
		Buyer buyer = new Buyer();
		modelMap.put("buyer", buyer);
		modelMap.put("title", "Register to Buy");
		return "account.registerToBuy";
	}
	
	@RequestMapping(value = "/loginBuyer", method = RequestMethod.GET)
	public String loginBuyer(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,
			@RequestParam(value = "success", required = false) String success,
			ModelMap modelMap) {
		
		if (error != null) {
			modelMap.addAttribute("msg",
					"Invalid username and password! Do you have account?");
			return "account.loginBuyer";
		}
		if (logout != null) {
			modelMap.addAttribute("msg", "You've been logged out successfully.");
			return "redirect:../home/index.html";
		}
		//cai luc nay moi put qua ne
		
		return "home.index";
	}
	@RequestMapping(value="/doRegisterToBuyer",method=RequestMethod.POST)
	public String doRegisterToBuyer(@ModelAttribute("buyer") Buyer buyer,ModelMap modelMap, MultipartFile file){
		try {
			if(!file.isEmpty()){
				String path = context.getRealPath("/assets/user/images/avatarAccount") + File.separator + file.getOriginalFilename();
				file.transferTo(new File(path));
				//session.setAttribute("file", file);
			}	
			buyer.setPhoto(file.getOriginalFilename());
			buyer.setJoinDate(new Date());
			buyer.setEnabled(true);
			
			buyer.setPassword(passwordEncoder.encode(buyer.getPassword()));
			buyer.setRolePk(2);
			
			Buyer br = buyerService.create(buyer);
			if(br!=null){
				BuyerRole buyerRole = new BuyerRole();	
				BuyerRoleId role2 = new BuyerRoleId();
				Role role = roleService.find(br.getRolePk());
				
				role2.setBuyerPk(br.getId());
				role2.setRolePk(role.getId());
				
				buyerRole.setBuyer(br);
				buyerRole.setEnable(true);		
				buyerRole.setRole(role);
				buyerRole.setId(role2);
				
				buyerRoleService.createBuyerRole(buyerRole);
				return "account.login";
			}else{
				modelMap.put("result", "Account exists");			
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}		
		return "account.registerToBuy";
	}
	@RequestMapping(value="/loginBuyer",method=RequestMethod.POST)
	public String loginBuyer(){
		return "home.index";
	}
}
