package photostock.services;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.dao.*;
import photostock.entities.*;

@Transactional
@Service("membershipService")
public class MembershipServiceImpl implements MembershipService {

	@Autowired
	private MembershipDAO membershipDAO;
	
	@Override
	public List<Membership> findAll() {
		return membershipDAO.findAll();
	}

	@Override
	public Membership find(int id) {
		return membershipDAO.find(id);
	}

	@Override
	public void create(Membership menbership) {
		membershipDAO.create(menbership);
	}

	@Override
	public void update(Membership menbership) {
		membershipDAO.update(menbership);
	}

	@Override
	public void delete(Membership menbership) {
		membershipDAO.delete(menbership);
	}

}
