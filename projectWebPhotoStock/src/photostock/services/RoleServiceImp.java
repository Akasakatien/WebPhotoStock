package photostock.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.entities.Role;
import photostock.repositories.RoleRepository;

@Service("roleServiceImp")
@Transactional
public class RoleServiceImp implements RoleService {

	@Autowired
	RoleRepository roleRepository;
	@Override
	public Role find(int id) {		
		Role r = roleRepository.findOne(id);
		if(r!=null)return r;
		else return null;
	}

}
