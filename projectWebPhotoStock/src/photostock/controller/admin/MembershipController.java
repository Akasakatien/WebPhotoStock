package photostock.controller.admin;

 
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import photostock.entities.Membership;
import photostock.services.MembershipService;
import photostock.validators.CategoryValidator;
import photostock.validators.MembershipValidator;

@Controller
@RequestMapping("/admin/membership**")
public class MembershipController {
	@Autowired
	private MembershipService membershipService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("memberships", membershipService.findAll());
		return "admin.membership.index";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		modelMap.put("membership", new Membership());
		return "admin.membership.add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(
		@ModelAttribute("membership") @Valid Membership Membership, 
		BindingResult bindingResult,
		ModelMap modelMap) {
		MembershipValidator membershipValidator = new MembershipValidator();
		membershipValidator.validate(Membership, bindingResult);
		if (bindingResult.hasErrors()) {
			return "admin.membership.add";
		} else {
			membershipService.create(Membership);
			return "redirect:../membership.html";
		}
	}
	
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") Integer id) {
		membershipService.delete(membershipService.find(id));
		return "redirect:../../membership.html";
	}
	
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(
		@PathVariable("id") Integer id, 
		ModelMap modelMap) {
		modelMap.put("membership", membershipService.find(id));
		return "admin.membership.edit";
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(
		@ModelAttribute("membership") @Valid Membership Membership, 
		BindingResult bindingResult,
		ModelMap modelMap) {
		MembershipValidator membershipValidator = new MembershipValidator();
		membershipValidator.validate(Membership, bindingResult);
		if (bindingResult.hasErrors()) {
			return "admin.membership.edit";
		} else {
			membershipService.update(Membership);
			return "redirect:../membership.html";
		}
	}


}
