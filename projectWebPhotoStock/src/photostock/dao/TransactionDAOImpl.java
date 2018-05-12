package photostock.dao;

import java.util.*;

import org.hibernate.*;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import photostock.entities.*;

@Repository("transactionDAO")
public class TransactionDAOImpl implements TransactionDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public photostock.entities.Transaction create(photostock.entities.Transaction transaction) {
		Session session = sessionFactory.openSession();
		Transaction transaction2 = session.beginTransaction();
		session.save(transaction);
		transaction2.commit();
		session.close();
		return transaction;
	}

	
}
