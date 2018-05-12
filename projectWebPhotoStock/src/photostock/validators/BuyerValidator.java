package photostock.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import photostock.entities.Buyer;
public class BuyerValidator implements Validator{
	@Override
	public boolean supports(Class<?> arg0) {
		return Buyer.class.equals(arg0);
	}

	@Override
	public void validate(Object object, Errors errors) {
		//...............
	}
}
