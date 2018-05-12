package photostock.dao;

import java.util.*;

import photostock.entities.*;

public interface MembershipDAO {

	public List<Membership> findAll();

	public Membership find(int id);

	public void create(Membership menbership);

	public void update(Membership menbership);

	public void delete(Membership menbership);
	
}
